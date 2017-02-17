# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Support
  module Types

    # @note When making an API call, you may pass AddAttachmentsToSetRequest
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
    #
    # @!attribute [rw] attachment_set_id
    #   The ID of the attachment set. If an `attachmentSetId` is not
    #   specified, a new attachment set is created, and the ID of the set is
    #   returned in the response. If an `attachmentSetId` is specified, the
    #   attachments are added to the specified set, if it exists.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   One or more attachments to add to the set. The limit is 3
    #   attachments per set, and the size limit is 5 MB per attachment.
    #   @return [Array<Types::Attachment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AddAttachmentsToSetRequest AWS API Documentation
    #
    class AddAttachmentsToSetRequest < Struct.new(
      :attachment_set_id,
      :attachments)
      include Aws::Structure
    end

    # The ID and expiry time of the attachment set returned by the
    # AddAttachmentsToSet operation.
    #
    # @!attribute [rw] attachment_set_id
    #   The ID of the attachment set. If an `attachmentSetId` was not
    #   specified, a new attachment set is created, and the ID of the set is
    #   returned in the response. If an `attachmentSetId` was specified, the
    #   attachments are added to the specified set, if it exists.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time
    #   The time and date when the attachment set expires.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AddAttachmentsToSetResponse AWS API Documentation
    #
    class AddAttachmentsToSetResponse < Struct.new(
      :attachment_set_id,
      :expiry_time)
      include Aws::Structure
    end

    # To be written.
    #
    # @note When making an API call, you may pass AddCommunicationToCaseRequest
    #   data as a hash:
    #
    #       {
    #         case_id: "CaseId",
    #         communication_body: "CommunicationBody", # required
    #         cc_email_addresses: ["CcEmailAddress"],
    #         attachment_set_id: "AttachmentSetId",
    #       }
    #
    # @!attribute [rw] case_id
    #   The AWS Support case ID requested or returned in the call. The case
    #   ID is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #   @return [String]
    #
    # @!attribute [rw] communication_body
    #   The body of an email communication to add to the support case.
    #   @return [String]
    #
    # @!attribute [rw] cc_email_addresses
    #   The email addresses in the CC line of an email to be added to the
    #   support case.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attachment_set_id
    #   The ID of a set of one or more attachments for the communication to
    #   add to the case. Create the set by calling AddAttachmentsToSet
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AddCommunicationToCaseRequest AWS API Documentation
    #
    class AddCommunicationToCaseRequest < Struct.new(
      :case_id,
      :communication_body,
      :cc_email_addresses,
      :attachment_set_id)
      include Aws::Structure
    end

    # The result of the AddCommunicationToCase operation.
    #
    # @!attribute [rw] result
    #   True if AddCommunicationToCase succeeds. Otherwise, returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AddCommunicationToCaseResponse AWS API Documentation
    #
    class AddCommunicationToCaseResponse < Struct.new(
      :result)
      include Aws::Structure
    end

    # An attachment to a case communication. The attachment consists of the
    # file name and the content of the file.
    #
    # @note When making an API call, you may pass Attachment
    #   data as a hash:
    #
    #       {
    #         file_name: "FileName",
    #         data: "data",
    #       }
    #
    # @!attribute [rw] file_name
    #   The name of the attachment file.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The content of the attachment file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/Attachment AWS API Documentation
    #
    class Attachment < Struct.new(
      :file_name,
      :data)
      include Aws::Structure
    end

    # The file name and ID of an attachment to a case communication. You can
    # use the ID to retrieve the attachment with the DescribeAttachment
    # operation.
    #
    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The file name of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AttachmentDetails AWS API Documentation
    #
    class AttachmentDetails < Struct.new(
      :attachment_id,
      :file_name)
      include Aws::Structure
    end

    # A JSON-formatted object that contains the metadata for a support case.
    # It is contained the response from a DescribeCases request.
    # **CaseDetails** contains the following fields:
    #
    # * **caseId.** The AWS Support case ID requested or returned in the
    #   call. The case ID is an alphanumeric string formatted as shown in
    #   this example: case-*12345678910-2013-c4c1d2bf33c5cf47*.
    #
    # * **categoryCode.** The category of problem for the AWS Support case.
    #   Corresponds to the CategoryCode values returned by a call to
    #   DescribeServices.
    #
    # * **displayId.** The identifier for the case on pages in the AWS
    #   Support Center.
    #
    # * **language.** The ISO 639-1 code for the language in which AWS
    #   provides support. AWS Support currently supports English ("en")
    #   and Japanese ("ja"). Language parameters must be passed explicitly
    #   for operations that take them.
    #
    # * **recentCommunications.** One or more Communication objects. Fields
    #   of these objects are `attachments`, `body`, `caseId`, `submittedBy`,
    #   and `timeCreated`.
    #
    # * **nextToken.** A resumption point for pagination.
    #
    # * **serviceCode.** The identifier for the AWS service that corresponds
    #   to the service code defined in the call to DescribeServices.
    #
    # * <b>severityCode. </b>The severity code assigned to the case.
    #   Contains one of the values returned by the call to
    #   DescribeSeverityLevels.
    #
    # * **status.** The status of the case in the AWS Support Center.
    #
    # * **subject.** The subject line of the case.
    #
    # * **submittedBy.** The email address of the account that submitted the
    #   case.
    #
    # * **timeCreated.** The time the case was created, in ISO-8601 format.
    #
    # @!attribute [rw] case_id
    #   The AWS Support case ID requested or returned in the call. The case
    #   ID is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #   @return [String]
    #
    # @!attribute [rw] display_id
    #   The ID displayed for the case in the AWS Support Center. This is a
    #   numeric string.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject line for the case in the AWS Support Center.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the case.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the AWS service returned by the call to
    #   DescribeServices.
    #   @return [String]
    #
    # @!attribute [rw] category_code
    #   The category of problem for the AWS Support case.
    #   @return [String]
    #
    # @!attribute [rw] severity_code
    #   The code for the severity level returned by the call to
    #   DescribeSeverityLevels.
    #   @return [String]
    #
    # @!attribute [rw] submitted_by
    #   The email address of the account that submitted the case.
    #   @return [String]
    #
    # @!attribute [rw] time_created
    #   The time that the case was case created in the AWS Support Center.
    #   @return [String]
    #
    # @!attribute [rw] recent_communications
    #   The five most recent communications between you and AWS Support
    #   Center, including the IDs of any attachments to the communications.
    #   Also includes a `nextToken` that you can use to retrieve earlier
    #   communications.
    #   @return [Types::RecentCaseCommunications]
    #
    # @!attribute [rw] cc_email_addresses
    #   The email addresses that receive copies of communication about the
    #   case.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The ISO 639-1 code for the language in which AWS provides support.
    #   AWS Support currently supports English ("en") and Japanese
    #   ("ja"). Language parameters must be passed explicitly for
    #   operations that take them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/CaseDetails AWS API Documentation
    #
    class CaseDetails < Struct.new(
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
      include Aws::Structure
    end

    # A JSON-formatted name/value pair that represents the category name and
    # category code of the problem, selected from the DescribeServices
    # response for each AWS service.
    #
    # @!attribute [rw] code
    #   The category code for the support case.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The category name for the support case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/Category AWS API Documentation
    #
    class Category < Struct.new(
      :code,
      :name)
      include Aws::Structure
    end

    # A communication associated with an AWS Support case. The communication
    # consists of the case ID, the message body, attachment information, the
    # account email address, and the date and time of the communication.
    #
    # @!attribute [rw] case_id
    #   The AWS Support case ID requested or returned in the call. The case
    #   ID is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The text of the communication between the customer and AWS Support.
    #   @return [String]
    #
    # @!attribute [rw] submitted_by
    #   The email address of the account that submitted the AWS Support
    #   case.
    #   @return [String]
    #
    # @!attribute [rw] time_created
    #   The time the communication was created.
    #   @return [String]
    #
    # @!attribute [rw] attachment_set
    #   Information about the attachments to the case communication.
    #   @return [Array<Types::AttachmentDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/Communication AWS API Documentation
    #
    class Communication < Struct.new(
      :case_id,
      :body,
      :submitted_by,
      :time_created,
      :attachment_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCaseRequest
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
    #
    # @!attribute [rw] subject
    #   The title of the AWS Support case.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the AWS service returned by the call to
    #   DescribeServices.
    #   @return [String]
    #
    # @!attribute [rw] severity_code
    #   The code for the severity level returned by the call to
    #   DescribeSeverityLevels.
    #
    #   <note markdown="1"> The availability of severity levels depends on each customer's
    #   support subscription. In other words, your subscription may not
    #   necessarily require the urgent level of response time.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] category_code
    #   The category of problem for the AWS Support case.
    #   @return [String]
    #
    # @!attribute [rw] communication_body
    #   The communication body text when you create an AWS Support case by
    #   calling CreateCase.
    #   @return [String]
    #
    # @!attribute [rw] cc_email_addresses
    #   A list of email addresses that AWS Support copies on case
    #   correspondence.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The ISO 639-1 code for the language in which AWS provides support.
    #   AWS Support currently supports English ("en") and Japanese
    #   ("ja"). Language parameters must be passed explicitly for
    #   operations that take them.
    #   @return [String]
    #
    # @!attribute [rw] issue_type
    #   The type of issue for the case. You can specify either
    #   "customer-service" or "technical." If you do not indicate a
    #   value, the default is "technical."
    #   @return [String]
    #
    # @!attribute [rw] attachment_set_id
    #   The ID of a set of one or more attachments for the case. Create the
    #   set by using AddAttachmentsToSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/CreateCaseRequest AWS API Documentation
    #
    class CreateCaseRequest < Struct.new(
      :subject,
      :service_code,
      :severity_code,
      :category_code,
      :communication_body,
      :cc_email_addresses,
      :language,
      :issue_type,
      :attachment_set_id)
      include Aws::Structure
    end

    # The AWS Support case ID returned by a successful completion of the
    # CreateCase operation.
    #
    # @!attribute [rw] case_id
    #   The AWS Support case ID requested or returned in the call. The case
    #   ID is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/CreateCaseResponse AWS API Documentation
    #
    class CreateCaseResponse < Struct.new(
      :case_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAttachmentRequest
    #   data as a hash:
    #
    #       {
    #         attachment_id: "AttachmentId", # required
    #       }
    #
    # @!attribute [rw] attachment_id
    #   The ID of the attachment to return. Attachment IDs are returned by
    #   the DescribeCommunications operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeAttachmentRequest AWS API Documentation
    #
    class DescribeAttachmentRequest < Struct.new(
      :attachment_id)
      include Aws::Structure
    end

    # The content and file name of the attachment returned by the
    # DescribeAttachment operation.
    #
    # @!attribute [rw] attachment
    #   The attachment content and file name.
    #   @return [Types::Attachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeAttachmentResponse AWS API Documentation
    #
    class DescribeAttachmentResponse < Struct.new(
      :attachment)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCasesRequest
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
    #
    # @!attribute [rw] case_id_list
    #   A list of ID numbers of the support cases you want returned. The
    #   maximum number of cases is 100.
    #   @return [Array<String>]
    #
    # @!attribute [rw] display_id
    #   The ID displayed for a case in the AWS Support Center user
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] after_time
    #   The start date for a filtered date search on support case
    #   communications. Case communications are available for 12 months
    #   after creation.
    #   @return [String]
    #
    # @!attribute [rw] before_time
    #   The end date for a filtered date search on support case
    #   communications. Case communications are available for 12 months
    #   after creation.
    #   @return [String]
    #
    # @!attribute [rw] include_resolved_cases
    #   Specifies whether resolved support cases should be included in the
    #   DescribeCases results. The default is *false*.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   A resumption point for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return before paginating.
    #   @return [Integer]
    #
    # @!attribute [rw] language
    #   The ISO 639-1 code for the language in which AWS provides support.
    #   AWS Support currently supports English ("en") and Japanese
    #   ("ja"). Language parameters must be passed explicitly for
    #   operations that take them.
    #   @return [String]
    #
    # @!attribute [rw] include_communications
    #   Specifies whether communications should be included in the
    #   DescribeCases results. The default is *true*.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeCasesRequest AWS API Documentation
    #
    class DescribeCasesRequest < Struct.new(
      :case_id_list,
      :display_id,
      :after_time,
      :before_time,
      :include_resolved_cases,
      :next_token,
      :max_results,
      :language,
      :include_communications)
      include Aws::Structure
    end

    # Returns an array of CaseDetails objects and a `nextToken` that defines
    # a point for pagination in the result set.
    #
    # @!attribute [rw] cases
    #   The details for the cases that match the request.
    #   @return [Array<Types::CaseDetails>]
    #
    # @!attribute [rw] next_token
    #   A resumption point for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeCasesResponse AWS API Documentation
    #
    class DescribeCasesResponse < Struct.new(
      :cases,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCommunicationsRequest
    #   data as a hash:
    #
    #       {
    #         case_id: "CaseId", # required
    #         before_time: "BeforeTime",
    #         after_time: "AfterTime",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] case_id
    #   The AWS Support case ID requested or returned in the call. The case
    #   ID is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #   @return [String]
    #
    # @!attribute [rw] before_time
    #   The end date for a filtered date search on support case
    #   communications. Case communications are available for 12 months
    #   after creation.
    #   @return [String]
    #
    # @!attribute [rw] after_time
    #   The start date for a filtered date search on support case
    #   communications. Case communications are available for 12 months
    #   after creation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A resumption point for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return before paginating.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeCommunicationsRequest AWS API Documentation
    #
    class DescribeCommunicationsRequest < Struct.new(
      :case_id,
      :before_time,
      :after_time,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # The communications returned by the DescribeCommunications operation.
    #
    # @!attribute [rw] communications
    #   The communications for the case.
    #   @return [Array<Types::Communication>]
    #
    # @!attribute [rw] next_token
    #   A resumption point for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeCommunicationsResponse AWS API Documentation
    #
    class DescribeCommunicationsResponse < Struct.new(
      :communications,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeServicesRequest
    #   data as a hash:
    #
    #       {
    #         service_code_list: ["ServiceCode"],
    #         language: "Language",
    #       }
    #
    # @!attribute [rw] service_code_list
    #   A JSON-formatted list of service codes available for AWS services.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The ISO 639-1 code for the language in which AWS provides support.
    #   AWS Support currently supports English ("en") and Japanese
    #   ("ja"). Language parameters must be passed explicitly for
    #   operations that take them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeServicesRequest AWS API Documentation
    #
    class DescribeServicesRequest < Struct.new(
      :service_code_list,
      :language)
      include Aws::Structure
    end

    # The list of AWS services returned by the DescribeServices operation.
    #
    # @!attribute [rw] services
    #   A JSON-formatted list of AWS services.
    #   @return [Array<Types::Service>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeServicesResponse AWS API Documentation
    #
    class DescribeServicesResponse < Struct.new(
      :services)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSeverityLevelsRequest
    #   data as a hash:
    #
    #       {
    #         language: "Language",
    #       }
    #
    # @!attribute [rw] language
    #   The ISO 639-1 code for the language in which AWS provides support.
    #   AWS Support currently supports English ("en") and Japanese
    #   ("ja"). Language parameters must be passed explicitly for
    #   operations that take them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeSeverityLevelsRequest AWS API Documentation
    #
    class DescribeSeverityLevelsRequest < Struct.new(
      :language)
      include Aws::Structure
    end

    # The list of severity levels returned by the DescribeSeverityLevels
    # operation.
    #
    # @!attribute [rw] severity_levels
    #   The available severity levels for the support case. Available
    #   severity levels are defined by your service level agreement with
    #   AWS.
    #   @return [Array<Types::SeverityLevel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeSeverityLevelsResponse AWS API Documentation
    #
    class DescribeSeverityLevelsResponse < Struct.new(
      :severity_levels)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTrustedAdvisorCheckRefreshStatusesRequest
    #   data as a hash:
    #
    #       {
    #         check_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] check_ids
    #   The IDs of the Trusted Advisor checks to get the status of.
    #   **Note:** Specifying the check ID of a check that is automatically
    #   refreshed causes an `InvalidParameterValue` error.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckRefreshStatusesRequest AWS API Documentation
    #
    class DescribeTrustedAdvisorCheckRefreshStatusesRequest < Struct.new(
      :check_ids)
      include Aws::Structure
    end

    # The statuses of the Trusted Advisor checks returned by the
    # DescribeTrustedAdvisorCheckRefreshStatuses operation.
    #
    # @!attribute [rw] statuses
    #   The refresh status of the specified Trusted Advisor checks.
    #   @return [Array<Types::TrustedAdvisorCheckRefreshStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckRefreshStatusesResponse AWS API Documentation
    #
    class DescribeTrustedAdvisorCheckRefreshStatusesResponse < Struct.new(
      :statuses)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTrustedAdvisorCheckResultRequest
    #   data as a hash:
    #
    #       {
    #         check_id: "String", # required
    #         language: "String",
    #       }
    #
    # @!attribute [rw] check_id
    #   The unique identifier for the Trusted Advisor check.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The ISO 639-1 code for the language in which AWS provides support.
    #   AWS Support currently supports English ("en") and Japanese
    #   ("ja"). Language parameters must be passed explicitly for
    #   operations that take them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckResultRequest AWS API Documentation
    #
    class DescribeTrustedAdvisorCheckResultRequest < Struct.new(
      :check_id,
      :language)
      include Aws::Structure
    end

    # The result of the Trusted Advisor check returned by the
    # DescribeTrustedAdvisorCheckResult operation.
    #
    # @!attribute [rw] result
    #   The detailed results of the Trusted Advisor check.
    #   @return [Types::TrustedAdvisorCheckResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckResultResponse AWS API Documentation
    #
    class DescribeTrustedAdvisorCheckResultResponse < Struct.new(
      :result)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTrustedAdvisorCheckSummariesRequest
    #   data as a hash:
    #
    #       {
    #         check_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] check_ids
    #   The IDs of the Trusted Advisor checks.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckSummariesRequest AWS API Documentation
    #
    class DescribeTrustedAdvisorCheckSummariesRequest < Struct.new(
      :check_ids)
      include Aws::Structure
    end

    # The summaries of the Trusted Advisor checks returned by the
    # DescribeTrustedAdvisorCheckSummaries operation.
    #
    # @!attribute [rw] summaries
    #   The summary information for the requested Trusted Advisor checks.
    #   @return [Array<Types::TrustedAdvisorCheckSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckSummariesResponse AWS API Documentation
    #
    class DescribeTrustedAdvisorCheckSummariesResponse < Struct.new(
      :summaries)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTrustedAdvisorChecksRequest
    #   data as a hash:
    #
    #       {
    #         language: "String", # required
    #       }
    #
    # @!attribute [rw] language
    #   The ISO 639-1 code for the language in which AWS provides support.
    #   AWS Support currently supports English ("en") and Japanese
    #   ("ja"). Language parameters must be passed explicitly for
    #   operations that take them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorChecksRequest AWS API Documentation
    #
    class DescribeTrustedAdvisorChecksRequest < Struct.new(
      :language)
      include Aws::Structure
    end

    # Information about the Trusted Advisor checks returned by the
    # DescribeTrustedAdvisorChecks operation.
    #
    # @!attribute [rw] checks
    #   Information about all available Trusted Advisor checks.
    #   @return [Array<Types::TrustedAdvisorCheckDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorChecksResponse AWS API Documentation
    #
    class DescribeTrustedAdvisorChecksResponse < Struct.new(
      :checks)
      include Aws::Structure
    end

    # The five most recent communications associated with the case.
    #
    # @!attribute [rw] communications
    #   The five most recent communications associated with the case.
    #   @return [Array<Types::Communication>]
    #
    # @!attribute [rw] next_token
    #   A resumption point for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/RecentCaseCommunications AWS API Documentation
    #
    class RecentCaseCommunications < Struct.new(
      :communications,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RefreshTrustedAdvisorCheckRequest
    #   data as a hash:
    #
    #       {
    #         check_id: "String", # required
    #       }
    #
    # @!attribute [rw] check_id
    #   The unique identifier for the Trusted Advisor check to refresh.
    #   **Note:** Specifying the check ID of a check that is automatically
    #   refreshed causes an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/RefreshTrustedAdvisorCheckRequest AWS API Documentation
    #
    class RefreshTrustedAdvisorCheckRequest < Struct.new(
      :check_id)
      include Aws::Structure
    end

    # The current refresh status of a Trusted Advisor check.
    #
    # @!attribute [rw] status
    #   The current refresh status for a check, including the amount of time
    #   until the check is eligible for refresh.
    #   @return [Types::TrustedAdvisorCheckRefreshStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/RefreshTrustedAdvisorCheckResponse AWS API Documentation
    #
    class RefreshTrustedAdvisorCheckResponse < Struct.new(
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResolveCaseRequest
    #   data as a hash:
    #
    #       {
    #         case_id: "CaseId",
    #       }
    #
    # @!attribute [rw] case_id
    #   The AWS Support case ID requested or returned in the call. The case
    #   ID is an alphanumeric string formatted as shown in this example:
    #   case-*12345678910-2013-c4c1d2bf33c5cf47*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/ResolveCaseRequest AWS API Documentation
    #
    class ResolveCaseRequest < Struct.new(
      :case_id)
      include Aws::Structure
    end

    # The status of the case returned by the ResolveCase operation.
    #
    # @!attribute [rw] initial_case_status
    #   The status of the case when the ResolveCase request was sent.
    #   @return [String]
    #
    # @!attribute [rw] final_case_status
    #   The status of the case after the ResolveCase request was processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/ResolveCaseResponse AWS API Documentation
    #
    class ResolveCaseResponse < Struct.new(
      :initial_case_status,
      :final_case_status)
      include Aws::Structure
    end

    # Information about an AWS service returned by the DescribeServices
    # operation.
    #
    # @!attribute [rw] code
    #   The code for an AWS service returned by the DescribeServices
    #   response. The `name` element contains the corresponding friendly
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name for an AWS service. The `code` element contains
    #   the corresponding code.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   A list of categories that describe the type of support issue a case
    #   describes. Categories consist of a category name and a category
    #   code. Category names and codes are passed to AWS Support when you
    #   call CreateCase.
    #   @return [Array<Types::Category>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/Service AWS API Documentation
    #
    class Service < Struct.new(
      :code,
      :name,
      :categories)
      include Aws::Structure
    end

    # A code and name pair that represent a severity level that can be
    # applied to a support case.
    #
    # @!attribute [rw] code
    #   One of four values: "low," "medium," "high," and "urgent".
    #   These values correspond to response times returned to the caller in
    #   `severityLevel.name`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the severity level that corresponds to the severity
    #   level code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/SeverityLevel AWS API Documentation
    #
    class SeverityLevel < Struct.new(
      :code,
      :name)
      include Aws::Structure
    end

    # The container for summary information that relates to the category of
    # the Trusted Advisor check.
    #
    # @!attribute [rw] cost_optimizing
    #   The summary information about cost savings for a Trusted Advisor
    #   check that is in the Cost Optimizing category.
    #   @return [Types::TrustedAdvisorCostOptimizingSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/TrustedAdvisorCategorySpecificSummary AWS API Documentation
    #
    class TrustedAdvisorCategorySpecificSummary < Struct.new(
      :cost_optimizing)
      include Aws::Structure
    end

    # The description and metadata for a Trusted Advisor check.
    #
    # @!attribute [rw] id
    #   The unique identifier for the Trusted Advisor check.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the Trusted Advisor check.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Trusted Advisor check, which includes the
    #   alert criteria and recommended actions (contains HTML markup).
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the Trusted Advisor check.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The column headings for the data returned by the Trusted Advisor
    #   check. The order of the headings corresponds to the order of the
    #   data in the **Metadata** element of the TrustedAdvisorResourceDetail
    #   for the check. **Metadata** contains all the data that is shown in
    #   the Excel download, even in those cases where the UI shows just
    #   summary data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/TrustedAdvisorCheckDescription AWS API Documentation
    #
    class TrustedAdvisorCheckDescription < Struct.new(
      :id,
      :name,
      :description,
      :category,
      :metadata)
      include Aws::Structure
    end

    # The refresh status of a Trusted Advisor check.
    #
    # @!attribute [rw] check_id
    #   The unique identifier for the Trusted Advisor check.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Trusted Advisor check for which a refresh has been
    #   requested: "none", "enqueued", "processing", "success", or
    #   "abandoned".
    #   @return [String]
    #
    # @!attribute [rw] millis_until_next_refreshable
    #   The amount of time, in milliseconds, until the Trusted Advisor check
    #   is eligible for refresh.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/TrustedAdvisorCheckRefreshStatus AWS API Documentation
    #
    class TrustedAdvisorCheckRefreshStatus < Struct.new(
      :check_id,
      :status,
      :millis_until_next_refreshable)
      include Aws::Structure
    end

    # The results of a Trusted Advisor check returned by
    # DescribeTrustedAdvisorCheckResult.
    #
    # @!attribute [rw] check_id
    #   The unique identifier for the Trusted Advisor check.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time of the last refresh of the check.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The alert status of the check: "ok" (green), "warning" (yellow),
    #   "error" (red), or "not\_available".
    #   @return [String]
    #
    # @!attribute [rw] resources_summary
    #   Details about AWS resources that were analyzed in a call to Trusted
    #   Advisor DescribeTrustedAdvisorCheckSummaries.
    #   @return [Types::TrustedAdvisorResourcesSummary]
    #
    # @!attribute [rw] category_specific_summary
    #   Summary information that relates to the category of the check. Cost
    #   Optimizing is the only category that is currently supported.
    #   @return [Types::TrustedAdvisorCategorySpecificSummary]
    #
    # @!attribute [rw] flagged_resources
    #   The details about each resource listed in the check result.
    #   @return [Array<Types::TrustedAdvisorResourceDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/TrustedAdvisorCheckResult AWS API Documentation
    #
    class TrustedAdvisorCheckResult < Struct.new(
      :check_id,
      :timestamp,
      :status,
      :resources_summary,
      :category_specific_summary,
      :flagged_resources)
      include Aws::Structure
    end

    # A summary of a Trusted Advisor check result, including the alert
    # status, last refresh, and number of resources examined.
    #
    # @!attribute [rw] check_id
    #   The unique identifier for the Trusted Advisor check.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time of the last refresh of the check.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The alert status of the check: "ok" (green), "warning" (yellow),
    #   "error" (red), or "not\_available".
    #   @return [String]
    #
    # @!attribute [rw] has_flagged_resources
    #   Specifies whether the Trusted Advisor check has flagged resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] resources_summary
    #   Details about AWS resources that were analyzed in a call to Trusted
    #   Advisor DescribeTrustedAdvisorCheckSummaries.
    #   @return [Types::TrustedAdvisorResourcesSummary]
    #
    # @!attribute [rw] category_specific_summary
    #   Summary information that relates to the category of the check. Cost
    #   Optimizing is the only category that is currently supported.
    #   @return [Types::TrustedAdvisorCategorySpecificSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/TrustedAdvisorCheckSummary AWS API Documentation
    #
    class TrustedAdvisorCheckSummary < Struct.new(
      :check_id,
      :timestamp,
      :status,
      :has_flagged_resources,
      :resources_summary,
      :category_specific_summary)
      include Aws::Structure
    end

    # The estimated cost savings that might be realized if the recommended
    # actions are taken.
    #
    # @!attribute [rw] estimated_monthly_savings
    #   The estimated monthly savings that might be realized if the
    #   recommended actions are taken.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_percent_monthly_savings
    #   The estimated percentage of savings that might be realized if the
    #   recommended actions are taken.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/TrustedAdvisorCostOptimizingSummary AWS API Documentation
    #
    class TrustedAdvisorCostOptimizingSummary < Struct.new(
      :estimated_monthly_savings,
      :estimated_percent_monthly_savings)
      include Aws::Structure
    end

    # Contains information about a resource identified by a Trusted Advisor
    # check.
    #
    # @!attribute [rw] status
    #   The status code for the resource identified in the Trusted Advisor
    #   check.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS region in which the identified resource is located.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the identified resource.
    #   @return [String]
    #
    # @!attribute [rw] is_suppressed
    #   Specifies whether the AWS resource was ignored by Trusted Advisor
    #   because it was marked as suppressed by the user.
    #   @return [Boolean]
    #
    # @!attribute [rw] metadata
    #   Additional information about the identified resource. The exact
    #   metadata and its order can be obtained by inspecting the
    #   TrustedAdvisorCheckDescription object returned by the call to
    #   DescribeTrustedAdvisorChecks. **Metadata** contains all the data
    #   that is shown in the Excel download, even in those cases where the
    #   UI shows just summary data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/TrustedAdvisorResourceDetail AWS API Documentation
    #
    class TrustedAdvisorResourceDetail < Struct.new(
      :status,
      :region,
      :resource_id,
      :is_suppressed,
      :metadata)
      include Aws::Structure
    end

    # Details about AWS resources that were analyzed in a call to Trusted
    # Advisor DescribeTrustedAdvisorCheckSummaries.
    #
    # @!attribute [rw] resources_processed
    #   The number of AWS resources that were analyzed by the Trusted
    #   Advisor check.
    #   @return [Integer]
    #
    # @!attribute [rw] resources_flagged
    #   The number of AWS resources that were flagged (listed) by the
    #   Trusted Advisor check.
    #   @return [Integer]
    #
    # @!attribute [rw] resources_ignored
    #   The number of AWS resources ignored by Trusted Advisor because
    #   information was unavailable.
    #   @return [Integer]
    #
    # @!attribute [rw] resources_suppressed
    #   The number of AWS resources ignored by Trusted Advisor because they
    #   were marked as suppressed by the user.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/TrustedAdvisorResourcesSummary AWS API Documentation
    #
    class TrustedAdvisorResourcesSummary < Struct.new(
      :resources_processed,
      :resources_flagged,
      :resources_ignored,
      :resources_suppressed)
      include Aws::Structure
    end

  end
end
