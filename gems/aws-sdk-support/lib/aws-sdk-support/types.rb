# frozen_string_literal: true

# This is generated code!

module Aws::Support
  # This module contains the types returned by client operations.
  module Types

    # @!attribute attachment_set_id
    #   <p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a
    #               new attachment set is created, and the ID of the set is returned in the response. If an
    #                   <code>attachmentSetId</code> is specified, the attachments are added to the
    #               specified set, if it exists.</p>
    #   @return [String]
    # @!attribute attachments
    #   <p>One or more attachments to add to the set. You can add up to three attachments per
    #               set. The size limit is 5 MB per attachment.</p>
    #            <p>In the <code>Attachment</code> object, use the <code>data</code> parameter to specify
    #               the contents of the attachment file. In the previous request syntax, the value for
    #                   <code>data</code> appear as <code>blob</code>, which is represented as a
    #               base64-encoded string. The value for <code>fileName</code> is the name of the
    #               attachment, such as <code>troubleshoot-screenshot.png</code>.</p>
    #   @return [Array<Types::Attachment>]
    class AddAttachmentsToSetRequest < Struct.new(
      :attachment_set_id,
      :attachments,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The ID and expiry time of the attachment set returned by the <a>AddAttachmentsToSet</a> operation.</p>
    # @!attribute attachment_set_id
    #   <p>The ID of the attachment set. If an <code>attachmentSetId</code> was not specified, a
    #               new attachment set is created, and the ID of the set is returned in the response. If an
    #                   <code>attachmentSetId</code> was specified, the attachments are added to the
    #               specified set, if it exists.</p>
    #   @return [String]
    # @!attribute expiry_time
    #   <p>The time and date when the attachment set expires.</p>
    #   @return [String]
    class AddAttachmentsToSetResponse < Struct.new(
      :attachment_set_id,
      :expiry_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    #   @return [String]
    # @!attribute communication_body
    #   <p>The body of an email communication to add to the support case.</p>
    #   @return [String]
    # @!attribute cc_email_addresses
    #   <p>The email addresses in the CC line of an email to be added to the support case.</p>
    #   @return [Array<String>]
    # @!attribute attachment_set_id
    #   <p>The ID of a set of one or more attachments for the communication to add to the case.
    #               Create the set by calling <a>AddAttachmentsToSet</a>
    #            </p>
    #   @return [String]
    class AddCommunicationToCaseRequest < Struct.new(
      :case_id,
      :communication_body,
      :cc_email_addresses,
      :attachment_set_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of the <a>AddCommunicationToCase</a> operation.</p>
    # @!attribute result
    #   <p>True if <a>AddCommunicationToCase</a> succeeds. Otherwise, returns an
    #               error.</p>
    #   @return [Boolean]
    class AddCommunicationToCaseResponse < Struct.new(
      :result,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:result] = false unless options.key?(:result)
        super
      end
    end

    # <p>An attachment to a case communication. The attachment consists of the file name and
    #             the content of the file. Each attachment file size should not exceed 5 MB. File types that are supported include the following: pdf, jpeg,.doc, .log, .text </p>
    # @!attribute file_name
    #   <p>The name of the attachment file.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The content of the attachment file.</p>
    #   @return [String]
    class Attachment < Struct.new(
      :file_name,
      :data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The file name and ID of an attachment to a case communication. You can use the ID to
    #             retrieve the attachment with the <a>DescribeAttachment</a> operation.</p>
    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The file name of the attachment.</p>
    #   @return [String]
    class AttachmentDetails < Struct.new(
      :attachment_id,
      :file_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An attachment with the specified ID could not be found.</p>
    # @!attribute message
    #   <p>An attachment with the specified ID could not be found.</p>
    #   @return [String]
    class AttachmentIdNotFound < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The limit for the number of attachment sets created in a short period of time has been
    #             exceeded.</p>
    # @!attribute message
    #   <p>The limit for the number of attachment sets created in a short period of time has been
    #               exceeded.</p>
    #   @return [String]
    class AttachmentLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The expiration time of the attachment set has passed. The set expires 1 hour after it
    #             is created.</p>
    # @!attribute message
    #   <p>The expiration time of the attachment set has passed. The set expires one hour after
    #               it is created.</p>
    #   @return [String]
    class AttachmentSetExpired < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An attachment set with the specified ID could not be found.</p>
    # @!attribute message
    #   <p>An attachment set with the specified ID could not be found.</p>
    #   @return [String]
    class AttachmentSetIdNotFound < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A limit for the size of an attachment set has been exceeded. The limits are three
    #             attachments and 5 MB per attachment.</p>
    # @!attribute message
    #   <p>A limit for the size of an attachment set has been exceeded. The limits are three
    #               attachments and 5 MB per attachment.</p>
    #   @return [String]
    class AttachmentSetSizeLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The case creation limit for the account has been exceeded.</p>
    # @!attribute message
    #   <p>An error message that indicates that you have exceeded the number of cases you can
    #               have open.</p>
    #   @return [String]
    class CaseCreationLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A JSON-formatted object that contains the metadata for a support case. It is contained
    #             in the response from a <a>DescribeCases</a> request. <b>CaseDetails</b> contains the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>caseId</b> - The support case ID requested
    #                     or returned in the call. The case ID is an alphanumeric string formatted as
    #                     shown in this example:
    #                         case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>categoryCode</b> - The category of problem
    #                     for the support case. Corresponds to the <code>CategoryCode</code> values
    #                     returned by a call to <a>DescribeServices</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>displayId</b> - The identifier for the case
    #                     on pages in the Amazon Web Services Support Center.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>language</b> - The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    # currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    # code for the <code>language</code> parameter if you want support in that language.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>nextToken</b> - A resumption point for
    #                     pagination.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>recentCommunications</b> - One or more <a>Communication</a> objects. Fields of these objects are
    #                         <code>attachments</code>, <code>body</code>, <code>caseId</code>,
    #                         <code>submittedBy</code>, and <code>timeCreated</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>serviceCode</b> - The identifier for the
    #                     Amazon Web Services service that corresponds to the service code defined in the call to <a>DescribeServices</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>severityCode</b> - The severity code
    #                     assigned to the case. Contains one of the values returned by the call to <a>DescribeSeverityLevels</a>. The possible values are:
    #                         <code>low</code>, <code>normal</code>, <code>high</code>,
    #                         <code>urgent</code>, and <code>critical</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>status</b> - The status of the case in the
    #                     Amazon Web Services Support Center. Valid values:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>all-open</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>customer-action-completed</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>opened</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>pending-customer-action</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>reopened</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>resolved</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>unassigned</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>work-in-progress</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>subject</b> - The subject line of the
    #                     case.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>submittedBy</b> - The email address of the
    #                     account that submitted the case.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>timeCreated</b> - The time the case was
    #                     created, in ISO-8601 format.</p>
    #             </li>
    #          </ul>
    # @!attribute case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    #   @return [String]
    # @!attribute display_id
    #   <p>The ID displayed for the case in the Amazon Web Services Support Center. This is a numeric
    #               string.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The subject line for the case in the Amazon Web Services Support Center.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the case.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>all-open</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>customer-action-completed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>opened</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending-customer-action</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>reopened</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resolved</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unassigned</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>work-in-progress</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service. You can get a list of codes and the corresponding
    #               service names by calling <a>DescribeServices</a>.</p>
    #   @return [String]
    # @!attribute category_code
    #   <p>The category of problem for the support case.</p>
    #   @return [String]
    # @!attribute severity_code
    #   <p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p>
    #   @return [String]
    # @!attribute submitted_by
    #   <p>The email address of the account that submitted the case.</p>
    #   @return [String]
    # @!attribute time_created
    #   <p>The time that the case was created in the Amazon Web Services Support Center.</p>
    #   @return [String]
    # @!attribute recent_communications
    #   <p>The five most recent communications between you and Amazon Web Services Support Center, including the
    #               IDs of any attachments to the communications. Also includes a <code>nextToken</code>
    #               that you can use to retrieve earlier communications.</p>
    #   @return [Types::RecentCaseCommunications]
    # @!attribute cc_email_addresses
    #   <p>The email addresses that receive copies of communication about the case.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    #   @return [String]
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
      :language,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested <code>caseId</code> couldn't be located.</p>
    # @!attribute message
    #   <p>The requested <code>CaseId</code> could not be located.</p>
    #   @return [String]
    class CaseIdNotFound < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A JSON-formatted name/value pair that represents the category name and category code
    #             of the problem, selected from the <a>DescribeServices</a> response for each
    #             Amazon Web Services service.</p>
    # @!attribute code
    #   <p>The category code for the support case.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The category name for the support case.</p>
    #   @return [String]
    class Category < Struct.new(
      :code,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A communication associated with a support case. The communication consists of the case
    #             ID, the message body, attachment information, the submitter of the communication, and
    #             the date and time of the communication.</p>
    # @!attribute case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    #   @return [String]
    # @!attribute body
    #   <p>The text of the communication between the customer and Amazon Web Services Support.</p>
    #   @return [String]
    # @!attribute submitted_by
    #   <p>The identity of the account that submitted, or responded to, the support case.
    #               Customer entries include the IAM role as well as the email address (for example,
    #               "AdminRole (Role) <janedoe@example.com>). Entries from the Amazon Web Services Support team display
    #               "Amazon Web Services," and don't show an email address.
    #               </p>
    #   @return [String]
    # @!attribute time_created
    #   <p>The time the communication was created.</p>
    #   @return [String]
    # @!attribute attachment_set
    #   <p>Information about the attachments to the case communication.</p>
    #   @return [Array<Types::AttachmentDetails>]
    class Communication < Struct.new(
      :case_id,
      :body,
      :submitted_by,
      :time_created,
      :attachment_set,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A JSON-formatted object that contains the CommunicationTypeOptions for creating a case for a certain
    #         communication channel. It is contained in the response from a <a>DescribeCreateCaseOptions</a> request. <b>CommunicationTypeOptions</b> contains the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>datesWithoutSupport</b> - 
    #                     A JSON-formatted list containing date and time ranges for periods 
    #                     without support in UTC time. Date and time format is RFC 3339 : 'yyyy-MM-dd'T'HH:mm:ss.SSSZZ'.
    #                     </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>supportedHours</b> - 
    #                     A JSON-formatted list containing time ranges when support are available. 
    #                     Time format is RFC 3339 : 'HH:mm:ss.SSS'.
    #                     </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>type</b> - 
    #                    A string value indicating the communication type that the aforementioned rules apply to. At the moment
    #                    the type value can assume one of 3 values at the moment <code>chat</code>, <code>web</code> and 
    #                    <code>call</code>.
    #                     </p>
    #             </li>
    #          </ul>
    # @!attribute type
    #   <p>
    #           A string value indicating the communication type. At the moment the type value can assume one of 3 values at the moment chat, web and call.
    #           </p>
    #   @return [String]
    # @!attribute supported_hours
    #   <p>
    #           A JSON-formatted list containing time ranges when support is available.
    #           </p>
    #   @return [Array<Types::SupportedHour>]
    # @!attribute dates_without_support
    #   <p>
    #           A JSON-formatted list containing date and time ranges for periods without support
    #           </p>
    #   @return [Array<Types::DateInterval>]
    class CommunicationTypeOptions < Struct.new(
      :type,
      :supported_hours,
      :dates_without_support,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute subject
    #   <p>The title of the support case. The title appears in the <b>Subject</b> field on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>
    #               operation to get the possible <code>serviceCode</code> values.</p>
    #   @return [String]
    # @!attribute severity_code
    #   <p>A value that indicates the urgency of the case. This value determines the response
    #               time according to your service level agreement with Amazon Web Services Support. You can use the <a>DescribeSeverityLevels</a> operation to get the possible values for
    #                   <code>severityCode</code>. </p>
    #            <p>For more information, see <a>SeverityLevel</a> and <a href="https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity">Choosing a
    #                   Severity</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    #            <note>
    #               <p>The availability of severity levels depends on the support plan for the
    #                   Amazon Web Services account.</p>
    #            </note>
    #   @return [String]
    # @!attribute category_code
    #   <p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each
    #               Amazon Web Services service defines its own set of category codes.</p>
    #   @return [String]
    # @!attribute communication_body
    #   <p>The communication body text that describes the issue. This text appears in the
    #                   <b>Description</b> field on the Amazon Web Services Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p>
    #   @return [String]
    # @!attribute cc_email_addresses
    #   <p>A list of email addresses that Amazon Web Services Support copies on case correspondence. Amazon Web Services Support
    #               identifies the account that creates the case when you specify your Amazon Web Services credentials in
    #               an HTTP POST method or use the <a href="http://aws.amazon.com/tools/">Amazon Web Services SDKs</a>.
    #           </p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    #   @return [String]
    # @!attribute issue_type
    #   <p>The type of issue for the case. You can specify <code>customer-service</code> or
    #                   <code>technical</code>. If you don't specify a value, the default is
    #                   <code>technical</code>.</p>
    #   @return [String]
    # @!attribute attachment_set_id
    #   <p>The ID of a set of one or more attachments for the case. Create the set by using the
    #                   <a>AddAttachmentsToSet</a> operation.</p>
    #   @return [String]
    class CreateCaseRequest < Struct.new(
      :subject,
      :service_code,
      :severity_code,
      :category_code,
      :communication_body,
      :cc_email_addresses,
      :language,
      :issue_type,
      :attachment_set_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The support case ID returned by a successful completion of the <a>CreateCase</a> operation.</p>
    # @!attribute case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string in the following format:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    #   @return [String]
    class CreateCaseResponse < Struct.new(
      :case_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Date and time (UTC) format in RFC 3339 : 'yyyy-MM-dd'T'HH:mm:ss.SSSZZ'.</p>
    # @!attribute start_date_time
    #   <p>
    #           A JSON object containing start and date time (UTC). Date and time format is RFC 3339 : 'yyyy-MM-dd'T'HH:mm:ss.SSSZZ'.
    #           </p>
    #   @return [String]
    # @!attribute end_date_time
    #   <p>
    #           End Date Time (UTC). RFC 3339 format : 'yyyy-MM-dd'T'HH:mm:ss.SSSZZ'.
    #           </p>
    #   @return [String]
    class DateInterval < Struct.new(
      :start_date_time,
      :end_date_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The limit for the number of <a>DescribeAttachment</a> requests in a short
    #             period of time has been exceeded.</p>
    # @!attribute message
    #   <p>The limit for the number of <a>DescribeAttachment</a> requests in a short
    #               period of time has been exceeded.</p>
    #   @return [String]
    class DescribeAttachmentLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>
    #   @return [String]
    class DescribeAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The content and file name of the attachment returned by the <a>DescribeAttachment</a> operation.</p>
    # @!attribute attachment
    #   <p>This object includes the attachment content and file name.</p>
    #            <p>In the previous response syntax, the value for the <code>data</code> parameter appears
    #               as <code>blob</code>, which is represented as a base64-encoded string. The value for
    #                   <code>fileName</code> is the name of the attachment, such as
    #                   <code>troubleshoot-screenshot.png</code>.</p>
    #   @return [Types::Attachment]
    class DescribeAttachmentResponse < Struct.new(
      :attachment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute case_id_list
    #   <p>A list of ID numbers of the support cases you want returned. The maximum number of
    #               cases is 100.</p>
    #   @return [Array<String>]
    # @!attribute display_id
    #   <p>The ID displayed for a case in the Amazon Web Services Support Center user interface.</p>
    #   @return [String]
    # @!attribute after_time
    #   <p>The start date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    #   @return [String]
    # @!attribute before_time
    #   <p>The end date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    #   @return [String]
    # @!attribute include_resolved_cases
    #   <p>Specifies whether to include resolved support cases in the <code>DescribeCases</code>
    #               response. By default, resolved cases aren't included.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>A resumption point for pagination.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return before paginating.</p>
    #   @return [Integer]
    # @!attribute language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    #   @return [String]
    # @!attribute include_communications
    #   <p>Specifies whether to include communications in the <code>DescribeCases</code>
    #               response. By default, communications are included.</p>
    #   @return [Boolean]
    class DescribeCasesRequest < Struct.new(
      :case_id_list,
      :display_id,
      :after_time,
      :before_time,
      :include_resolved_cases,
      :next_token,
      :max_results,
      :language,
      :include_communications,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns an array of <a href="https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html">CaseDetails</a>
    #             objects and a <code>nextToken</code> that defines a point for pagination in the result
    #             set.</p>
    # @!attribute cases
    #   <p>The details for the cases that match the request.</p>
    #   @return [Array<Types::CaseDetails>]
    # @!attribute next_token
    #   <p>A resumption point for pagination.</p>
    #   @return [String]
    class DescribeCasesResponse < Struct.new(
      :cases,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    #   @return [String]
    # @!attribute before_time
    #   <p>The end date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    #   @return [String]
    # @!attribute after_time
    #   <p>The start date for a filtered date search on support case communications. Case
    #               communications are available for 12 months after creation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A resumption point for pagination.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return before paginating.</p>
    #   @return [Integer]
    class DescribeCommunicationsRequest < Struct.new(
      :case_id,
      :before_time,
      :after_time,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The communications returned by the <a>DescribeCommunications</a>
    #             operation.</p>
    # @!attribute communications
    #   <p>The communications for the case.</p>
    #   @return [Array<Types::Communication>]
    # @!attribute next_token
    #   <p>A resumption point for pagination.</p>
    #   @return [String]
    class DescribeCommunicationsResponse < Struct.new(
      :communications,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute issue_type
    #   <p>The type of issue for the case. You can specify <code>customer-service</code> or
    #                   <code>technical</code>. If you don't specify a value, the default is
    #                   <code>technical</code>.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>
    #               operation to get the possible <code>serviceCode</code> values.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    #   @return [String]
    # @!attribute category_code
    #   <p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each
    #               Amazon Web Services service defines its own set of category codes.</p>
    #   @return [String]
    class DescribeCreateCaseOptionsRequest < Struct.new(
      :issue_type,
      :service_code,
      :language,
      :category_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute language_availability
    #   <p>Language availability can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                       available
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                       best_effort
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                       unavailable
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute communication_types
    #   <p>
    #           A JSON-formatted array that contains the available communication type options, along with the available support 
    #           timeframes for the given inputs.
    #           </p>
    #   @return [Array<Types::CommunicationTypeOptions>]
    class DescribeCreateCaseOptionsResponse < Struct.new(
      :language_availability,
      :communication_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_code_list
    #   <p>A JSON-formatted list of service codes available for Amazon Web Services services.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    #   @return [String]
    class DescribeServicesRequest < Struct.new(
      :service_code_list,
      :language,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The list of Amazon Web Services services returned by the <a>DescribeServices</a>
    #             operation.</p>
    # @!attribute services
    #   <p>A JSON-formatted list of Amazon Web Services services.</p>
    #   @return [Array<Types::Service>]
    class DescribeServicesResponse < Struct.new(
      :services,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute language
    #   <p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support
    #   currently supports Chinese (“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the ISO 639-1
    #   code for the <code>language</code> parameter if you want support in that language.</p>
    #   @return [String]
    class DescribeSeverityLevelsRequest < Struct.new(
      :language,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The list of severity levels returned by the <a>DescribeSeverityLevels</a>
    #             operation.</p>
    # @!attribute severity_levels
    #   <p>The available severity levels for the support case. Available severity levels are
    #               defined by your service level agreement with Amazon Web Services.</p>
    #   @return [Array<Types::SeverityLevel>]
    class DescribeSeverityLevelsResponse < Struct.new(
      :severity_levels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute issue_type
    #   <p>The type of issue for the case. You can specify <code>customer-service</code> or
    #                   <code>technical</code>.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>
    #               operation to get the possible <code>serviceCode</code> values.</p>
    #   @return [String]
    # @!attribute category_code
    #   <p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each
    #               Amazon Web Services service defines its own set of category codes.</p>
    #   @return [String]
    class DescribeSupportedLanguagesRequest < Struct.new(
      :issue_type,
      :service_code,
      :category_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute supported_languages
    #   <p>
    #           A JSON-formatted array that contains the available ISO 639-1 language codes.
    #           </p>
    #   @return [Array<Types::SupportedLanguage>]
    class DescribeSupportedLanguagesResponse < Struct.new(
      :supported_languages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute check_ids
    #   <p>The IDs of the Trusted Advisor checks to get the status.</p>
    #            <note>
    #               <p>If you specify the check ID of a check that is automatically refreshed, you might
    #                   see an <code>InvalidParameterValue</code> error.</p>
    #            </note>
    #   @return [Array<String>]
    class DescribeTrustedAdvisorCheckRefreshStatusesRequest < Struct.new(
      :check_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The statuses of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> operation.</p>
    # @!attribute statuses
    #   <p>The refresh status of the specified Trusted Advisor checks.</p>
    #   @return [Array<Types::TrustedAdvisorCheckRefreshStatus>]
    class DescribeTrustedAdvisorCheckRefreshStatusesResponse < Struct.new(
      :statuses,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute check_id
    #   <p>The unique identifier for the Trusted Advisor check.</p>
    #   @return [String]
    # @!attribute language
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
    #   @return [String]
    class DescribeTrustedAdvisorCheckResultRequest < Struct.new(
      :check_id,
      :language,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of the Trusted Advisor check returned by the <a>DescribeTrustedAdvisorCheckResult</a> operation.</p>
    # @!attribute result
    #   <p>The detailed results of the Trusted Advisor check.</p>
    #   @return [Types::TrustedAdvisorCheckResult]
    class DescribeTrustedAdvisorCheckResultResponse < Struct.new(
      :result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute check_ids
    #   <p>The IDs of the Trusted Advisor checks.</p>
    #   @return [Array<String>]
    class DescribeTrustedAdvisorCheckSummariesRequest < Struct.new(
      :check_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The summaries of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckSummaries</a> operation.</p>
    # @!attribute summaries
    #   <p>The summary information for the requested Trusted Advisor checks.</p>
    #   @return [Array<Types::TrustedAdvisorCheckSummary>]
    class DescribeTrustedAdvisorCheckSummariesResponse < Struct.new(
      :summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute language
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
    #   @return [String]
    class DescribeTrustedAdvisorChecksRequest < Struct.new(
      :language,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorChecks</a> operation.</p>
    # @!attribute checks
    #   <p>Information about all available Trusted Advisor checks.</p>
    #   @return [Array<Types::TrustedAdvisorCheckDescription>]
    class DescribeTrustedAdvisorChecksResponse < Struct.new(
      :checks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An internal server error occurred.</p>
    # @!attribute message
    #   <p>An internal server error occurred.</p>
    #   @return [String]
    class InternalServerError < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The five most recent communications associated with the case.</p>
    # @!attribute communications
    #   <p>The five most recent communications associated with the case.</p>
    #   @return [Array<Types::Communication>]
    # @!attribute next_token
    #   <p>A resumption point for pagination.</p>
    #   @return [String]
    class RecentCaseCommunications < Struct.new(
      :communications,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute check_id
    #   <p>The unique identifier for the Trusted Advisor check to refresh.</p>
    #            <note>
    #               <p>Specifying the check ID of a check that is automatically refreshed causes an
    #                       <code>InvalidParameterValue</code> error.</p>
    #            </note>
    #   @return [String]
    class RefreshTrustedAdvisorCheckRequest < Struct.new(
      :check_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The current refresh status of a Trusted Advisor check.</p>
    # @!attribute status
    #   <p>The current refresh status for a check, including the amount of time until the check
    #               is eligible for refresh.</p>
    #   @return [Types::TrustedAdvisorCheckRefreshStatus]
    class RefreshTrustedAdvisorCheckResponse < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>The support case ID requested or returned in the call. The case ID is an alphanumeric
    #               string formatted as shown in this example:
    #                   case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    #            </p>
    #   @return [String]
    class ResolveCaseRequest < Struct.new(
      :case_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The status of the case returned by the <a>ResolveCase</a> operation.</p>
    # @!attribute initial_case_status
    #   <p>The status of the case when the <a>ResolveCase</a> request was sent.</p>
    #   @return [String]
    # @!attribute final_case_status
    #   <p>The status of the case after the <a>ResolveCase</a> request was
    #               processed.</p>
    #   @return [String]
    class ResolveCaseResponse < Struct.new(
      :initial_case_status,
      :final_case_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an Amazon Web Services service returned by the <a>DescribeServices</a>
    #             operation.</p>
    # @!attribute code
    #   <p>The code for an Amazon Web Services service returned by the <a>DescribeServices</a>
    #               response. The <code>name</code> element contains the corresponding friendly name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name for an Amazon Web Services service. The <code>code</code> element contains the
    #               corresponding code.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>A list of categories that describe the type of support issue a case describes.
    #               Categories consist of a category name and a category code. Category names and codes are
    #               passed to Amazon Web Services Support when you call <a>CreateCase</a>.</p>
    #   @return [Array<Types::Category>]
    class Service < Struct.new(
      :code,
      :name,
      :categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A code and name pair that represents the severity level of a support case. The
    #             available values depend on the support plan for the account. For more information, see
    #                 <a href="https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity">Choosing a
    #                 severity</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    # @!attribute code
    #   <p>The code for case severity level.</p>
    #            <p>Valid values: <code>low</code> | <code>normal</code> | <code>high</code> |
    #                   <code>urgent</code> | <code>critical</code>
    #            </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the severity level that corresponds to the severity level code.</p>
    #            <note>
    #               <p>The values returned by the API are different from the values that appear in the
    #                   Amazon Web Services Support Center. For example, the API uses the code <code>low</code>, but the name
    #                   appears as General guidance in Support Center. </p>
    #               <p>The following are the API code names and how they appear in the console:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>low</code> - General guidance</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>normal</code> - System impaired</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>high</code> - Production system impaired</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>urgent</code> - Production system down</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>critical</code> - Business-critical system down</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity">Choosing a
    #                   severity</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    #   @return [String]
    class SeverityLevel < Struct.new(
      :code,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Time range object with <code>startTime</code> and <code>endTime</code> range in RFC 3339 format. <code>'HH:mm:ss.SSS'</code>.</p>
    # @!attribute start_time
    #   <p>
    #           Start Time. RFC 3339 format <code>'HH:mm:ss.SSS'</code>.
    #           </p>
    #   @return [String]
    # @!attribute end_time
    #   <p>
    #           End Time. RFC 3339 format <code>'HH:mm:ss.SSS'</code>.
    #           </p>
    #   @return [String]
    class SupportedHour < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             A JSON-formatted object that contains the available ISO 639-1 language <code>code</code>,
    #             <code>language</code> name and langauge <code>display</code> value. The language code is what should be used
    #             in the <a>CreateCase</a> call.
    #         </p>
    # @!attribute code
    #   <p>
    #           2 digit ISO 639-1 code. e.g. <code>en</code>
    #            </p>
    #   @return [String]
    # @!attribute language
    #   <p>
    #           Full language description e.g. <code>ENGLISH</code>
    #            </p>
    #   @return [String]
    # @!attribute display
    #   <p>
    #               Language display value e.g. <code>ENGLISH</code>
    #            </p>
    #   @return [String]
    class SupportedLanguage < Struct.new(
      :code,
      :language,
      :display,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #         You have exceeded the maximum allowed TPS (Transactions Per Second) for the operations.
    #         </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The container for summary information that relates to the category of the Trusted Advisor
    #             check.</p>
    # @!attribute cost_optimizing
    #   <p>The summary information about cost savings for a Trusted Advisor check that is in the Cost
    #               Optimizing category.</p>
    #   @return [Types::TrustedAdvisorCostOptimizingSummary]
    class TrustedAdvisorCategorySpecificSummary < Struct.new(
      :cost_optimizing,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The description and metadata for a Trusted Advisor check.</p>
    # @!attribute id
    #   <p>The unique identifier for the Trusted Advisor check.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name for the Trusted Advisor check.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Trusted Advisor check, which includes the alert criteria and
    #               recommended operations (contains HTML markup).</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the Trusted Advisor check.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The column headings for the data returned by the Trusted Advisor check. The order of the
    #               headings corresponds to the order of the data in the <b>Metadata</b> element of the <a>TrustedAdvisorResourceDetail</a>
    #               for the check. <b>Metadata</b> contains all the data that is
    #               shown in the Excel download, even in those cases where the UI shows just summary data.
    #           </p>
    #   @return [Array<String>]
    class TrustedAdvisorCheckDescription < Struct.new(
      :id,
      :name,
      :description,
      :category,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The refresh status of a Trusted Advisor check.</p>
    # @!attribute check_id
    #   <p>The unique identifier for the Trusted Advisor check.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Trusted Advisor check for which a refresh has been requested:
    #               </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>none</code> - The check is not refreshed or the non-success
    #                       status exceeds the timeout</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>enqueued</code> - The check refresh requests has entered the
    #                       refresh queue</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>processing</code> - The check refresh request is picked up by the
    #                       rule processing engine</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>success</code> - The check is successfully refreshed</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>abandoned</code> - The check refresh has failed</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute millis_until_next_refreshable
    #   <p>The amount of time, in milliseconds, until the Trusted Advisor check is eligible for
    #               refresh.</p>
    #   @return [Integer]
    class TrustedAdvisorCheckRefreshStatus < Struct.new(
      :check_id,
      :status,
      :millis_until_next_refreshable,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:millis_until_next_refreshable] = 0 unless options.key?(:millis_until_next_refreshable)
        super
      end
    end

    # <p>The results of a Trusted Advisor check returned by <a>DescribeTrustedAdvisorCheckResult</a>.</p>
    # @!attribute check_id
    #   <p>The unique identifier for the Trusted Advisor check.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time of the last refresh of the check.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or
    #               "not_available".</p>
    #   @return [String]
    # @!attribute resources_summary
    #   <p>Details about Amazon Web Services resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>.</p>
    #   @return [Types::TrustedAdvisorResourcesSummary]
    # @!attribute category_specific_summary
    #   <p>Summary information that relates to the category of the check. Cost Optimizing is the
    #               only category that is currently supported.</p>
    #   @return [Types::TrustedAdvisorCategorySpecificSummary]
    # @!attribute flagged_resources
    #   <p>The details about each resource listed in the check result.</p>
    #   @return [Array<Types::TrustedAdvisorResourceDetail>]
    class TrustedAdvisorCheckResult < Struct.new(
      :check_id,
      :timestamp,
      :status,
      :resources_summary,
      :category_specific_summary,
      :flagged_resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A summary of a Trusted Advisor check result, including the alert status, last refresh, and
    #             number of resources examined.</p>
    # @!attribute check_id
    #   <p>The unique identifier for the Trusted Advisor check.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time of the last refresh of the check.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or
    #               "not_available".</p>
    #   @return [String]
    # @!attribute has_flagged_resources
    #   <p>Specifies whether the Trusted Advisor check has flagged resources.</p>
    #   @return [Boolean]
    # @!attribute resources_summary
    #   <p>Details about Amazon Web Services resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>.</p>
    #   @return [Types::TrustedAdvisorResourcesSummary]
    # @!attribute category_specific_summary
    #   <p>Summary information that relates to the category of the check. Cost Optimizing is the
    #               only category that is currently supported.</p>
    #   @return [Types::TrustedAdvisorCategorySpecificSummary]
    class TrustedAdvisorCheckSummary < Struct.new(
      :check_id,
      :timestamp,
      :status,
      :has_flagged_resources,
      :resources_summary,
      :category_specific_summary,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_flagged_resources] = false unless options.key?(:has_flagged_resources)
        super
      end
    end

    # <p>The estimated cost savings that might be realized if the recommended operations are
    #             taken.</p>
    # @!attribute estimated_monthly_savings
    #   <p>The estimated monthly savings that might be realized if the recommended operations are
    #               taken.</p>
    #   @return [Float]
    # @!attribute estimated_percent_monthly_savings
    #   <p>The estimated percentage of savings that might be realized if the recommended
    #               operations are taken.</p>
    #   @return [Float]
    class TrustedAdvisorCostOptimizingSummary < Struct.new(
      :estimated_monthly_savings,
      :estimated_percent_monthly_savings,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:estimated_monthly_savings] = 0 unless options.key?(:estimated_monthly_savings)
        options[:estimated_percent_monthly_savings] = 0 unless options.key?(:estimated_percent_monthly_savings)
        super
      end
    end

    # <p>Contains information about a resource identified by a Trusted Advisor check.</p>
    # @!attribute status
    #   <p>The status code for the resource identified in the Trusted Advisor check.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region in which the identified resource is located.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the identified resource.</p>
    #   @return [String]
    # @!attribute is_suppressed
    #   <p>Specifies whether the Amazon Web Services resource was ignored by Trusted Advisor because it was marked as
    #               suppressed by the user.</p>
    #   @return [Boolean]
    # @!attribute metadata
    #   <p>Additional information about the identified resource. The exact metadata and its order
    #               can be obtained by inspecting the <a>TrustedAdvisorCheckDescription</a>
    #               object returned by the call to <a>DescribeTrustedAdvisorChecks</a>. <b>Metadata</b> contains all the data that is shown in the Excel
    #               download, even in those cases where the UI shows just summary data.</p>
    #   @return [Array<String>]
    class TrustedAdvisorResourceDetail < Struct.new(
      :status,
      :region,
      :resource_id,
      :is_suppressed,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_suppressed] = false unless options.key?(:is_suppressed)
        super
      end
    end

    # <p>Details about Amazon Web Services resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>.</p>
    # @!attribute resources_processed
    #   <p>The number of Amazon Web Services resources that were analyzed by the Trusted Advisor check.</p>
    #   @return [Integer]
    # @!attribute resources_flagged
    #   <p>The number of Amazon Web Services resources that were flagged (listed) by the Trusted Advisor check.</p>
    #   @return [Integer]
    # @!attribute resources_ignored
    #   <p>The number of Amazon Web Services resources ignored by Trusted Advisor because information was
    #               unavailable.</p>
    #   @return [Integer]
    # @!attribute resources_suppressed
    #   <p>The number of Amazon Web Services resources ignored by Trusted Advisor because they were marked as
    #               suppressed by the user.</p>
    #   @return [Integer]
    class TrustedAdvisorResourcesSummary < Struct.new(
      :resources_processed,
      :resources_flagged,
      :resources_ignored,
      :resources_suppressed,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:resources_processed] = 0 unless options.key?(:resources_processed)
        options[:resources_flagged] = 0 unless options.key?(:resources_flagged)
        options[:resources_ignored] = 0 unless options.key?(:resources_ignored)
        options[:resources_suppressed] = 0 unless options.key?(:resources_suppressed)
        super
      end
    end

  end
end
