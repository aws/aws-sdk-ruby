# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityIR
  module Types

    # @!attribute [rw] message
    #   The ID of the resource which lead to the access denial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_id
    #   Required element used in combination with
    #   BatchGetMemberAccountDetails to identify the membership ID to query.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   Optional element to query the membership relationship status to a
    #   provided list of account IDs.
    #
    #   <note markdown="1"> AWS account ID's may appear less than 12 characters and need to be
    #   zero-prepended. An example would be `123123123` which is nine
    #   digits, and with zero-prepend would be `000123123123`. Not
    #   zero-prepending to 12 digits could result in errors.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/BatchGetMemberAccountDetailsRequest AWS API Documentation
    #
    class BatchGetMemberAccountDetailsRequest < Struct.new(
      :membership_id,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The response element providing responses for requests to
    #   GetMembershipAccountDetails.
    #   @return [Array<Types::GetMembershipAccountDetailItem>]
    #
    # @!attribute [rw] errors
    #   The response element providing error messages for requests to
    #   GetMembershipAccountDetails.
    #   @return [Array<Types::GetMembershipAccountDetailError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/BatchGetMemberAccountDetailsResponse AWS API Documentation
    #
    class BatchGetMemberAccountDetailsResponse < Struct.new(
      :items,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_id
    #   Required element used in combination with CancelMembershipRequest to
    #   identify the membership ID to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CancelMembershipRequest AWS API Documentation
    #
    class CancelMembershipRequest < Struct.new(
      :membership_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_id
    #   The response element providing responses for requests to
    #   CancelMembershipRequest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CancelMembershipResponse AWS API Documentation
    #
    class CancelMembershipResponse < Struct.new(
      :membership_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   @return [String]
    #
    # @!attribute [rw] attachment_status
    #   @return [String]
    #
    # @!attribute [rw] creator
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CaseAttachmentAttributes AWS API Documentation
    #
    class CaseAttachmentAttributes < Struct.new(
      :attachment_id,
      :file_name,
      :attachment_status,
      :creator,
      :created_date)
      SENSITIVE = [:file_name]
      include Aws::Structure
    end

    # @!attribute [rw] event_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] principal
    #   @return [String]
    #
    # @!attribute [rw] action
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CaseEditItem AWS API Documentation
    #
    class CaseEditItem < Struct.new(
      :event_timestamp,
      :principal,
      :action,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   Required element used in combination with CloseCase to identify the
    #   case ID to close.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CloseCaseRequest AWS API Documentation
    #
    class CloseCaseRequest < Struct.new(
      :case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_status
    #   A response element providing responses for requests to CloseCase.
    #   This element responds `Closed ` if successful.
    #   @return [String]
    #
    # @!attribute [rw] closed_date
    #   A response element providing responses for requests to CloseCase.
    #   This element responds with the ISO-8601 formatted timestamp of the
    #   moment when the case was closed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CloseCaseResponse AWS API Documentation
    #
    class CloseCaseResponse < Struct.new(
      :case_status,
      :closed_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the conflicting resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the conflicting resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   Required element used in combination with CreateCaseComment to
    #   specify a case ID.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   <note markdown="1"> The `clientToken` field is an idempotency key
    #   used to ensure that
    #   repeated attempts for a single action will be ignored by the server
    #   during retries. A caller supplied unique ID (typically a UUID)
    #   should be provided.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   Required element used in combination with CreateCaseComment to add
    #   content for the new comment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateCaseCommentRequest AWS API Documentation
    #
    class CreateCaseCommentRequest < Struct.new(
      :case_id,
      :client_token,
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] comment_id
    #   Response element indicating the new comment ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateCaseCommentResponse AWS API Documentation
    #
    class CreateCaseCommentResponse < Struct.new(
      :comment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   <note markdown="1"> The `clientToken` field is an idempotency key
    #   used to ensure that
    #   repeated attempts for a single action will be ignored by the server
    #   during retries. A caller supplied unique ID (typically a UUID)
    #   should be provided.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resolver_type
    #   Required element used in combination with CreateCase to identify the
    #   resolver type.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Required element used in combination with CreateCase to provide a
    #   title for the new case.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Required element used in combination with CreateCase
    #
    #   to provide a description for the new case.
    #   @return [String]
    #
    # @!attribute [rw] engagement_type
    #   Required element used in combination with CreateCase to provide an
    #   engagement type for the new cases. Available engagement types
    #   include Security Incident \| Investigation
    #   @return [String]
    #
    # @!attribute [rw] reported_incident_start_date
    #   Required element used in combination with CreateCase to provide an
    #   initial start date for the unauthorized activity.
    #   @return [Time]
    #
    # @!attribute [rw] impacted_accounts
    #   Required element used in combination with CreateCase to provide a
    #   list of impacted accounts.
    #
    #   <note markdown="1"> AWS account ID's may appear less than 12 characters and need to be
    #   zero-prepended. An example would be `123123123` which is nine
    #   digits, and with zero-prepend would be `000123123123`. Not
    #   zero-prepending to 12 digits could result in errors.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] watchers
    #   Required element used in combination with CreateCase to provide a
    #   list of entities to receive notifications for case updates.
    #   @return [Array<Types::Watcher>]
    #
    # @!attribute [rw] threat_actor_ip_addresses
    #   An optional element used in combination with CreateCase to provide a
    #   list of suspicious internet protocol addresses associated with
    #   unauthorized activity.
    #   @return [Array<Types::ThreatActorIp>]
    #
    # @!attribute [rw] impacted_services
    #   An optional element used in combination with CreateCase to provide a
    #   list of services impacted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_aws_regions
    #   An optional element used in combination with CreateCase to provide a
    #   list of impacted regions.
    #   @return [Array<Types::ImpactedAwsRegion>]
    #
    # @!attribute [rw] tags
    #   An optional element used in combination with CreateCase to add
    #   customer specified tags to a case.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateCaseRequest AWS API Documentation
    #
    class CreateCaseRequest < Struct.new(
      :client_token,
      :resolver_type,
      :title,
      :description,
      :engagement_type,
      :reported_incident_start_date,
      :impacted_accounts,
      :watchers,
      :threat_actor_ip_addresses,
      :impacted_services,
      :impacted_aws_regions,
      :tags)
      SENSITIVE = [:title, :description]
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   A response element providing responses for requests to CreateCase.
    #   This element responds with the case ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateCaseResponse AWS API Documentation
    #
    class CreateCaseResponse < Struct.new(
      :case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   <note markdown="1"> The `clientToken` field is an idempotency key
    #   used to ensure that
    #   repeated attempts for a single action will be ignored by the server
    #   during retries. A caller supplied unique ID (typically a UUID)
    #   should be provided.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] membership_name
    #   Required element used in combination with CreateMembership to create
    #   a name for the membership.
    #   @return [String]
    #
    # @!attribute [rw] incident_response_team
    #   Required element used in combination with CreateMembership to add
    #   customer incident response team members and trusted partners to the
    #   membership.
    #   @return [Array<Types::IncidentResponder>]
    #
    # @!attribute [rw] opt_in_features
    #   Optional element to enable the monitoring and investigation opt-in
    #   features for the service.
    #   @return [Array<Types::OptInFeature>]
    #
    # @!attribute [rw] tags
    #   Optional element for customer configured tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] cover_entire_organization
    #   The `coverEntireOrganization` parameter is a boolean flag that
    #   determines whether the membership should be applied to the entire
    #   Amazon Web Services Organization. When set to true, the membership
    #   will be created for all accounts within the organization. When set
    #   to false, the membership will only be created for specified
    #   accounts.
    #
    #   This parameter is optional. If not specified, the default value is
    #   false.
    #
    #   * If set to *true*: The membership will automatically include all
    #     existing and future accounts in the Amazon Web Services
    #     Organization.
    #
    #   * If set to *false*: The membership will only apply to explicitly
    #     specified accounts.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateMembershipRequest AWS API Documentation
    #
    class CreateMembershipRequest < Struct.new(
      :client_token,
      :membership_name,
      :incident_response_team,
      :opt_in_features,
      :tags,
      :cover_entire_organization)
      SENSITIVE = [:membership_name]
      include Aws::Structure
    end

    # @!attribute [rw] membership_id
    #   Response element for CreateMembership providing the newly created
    #   membership ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateMembershipResponse AWS API Documentation
    #
    class CreateMembershipResponse < Struct.new(
      :membership_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   Required element for GetCaseAttachmentDownloadUrl to identify the
    #   case ID for downloading an attachment from.
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   Required element for GetCaseAttachmentDownloadUrl to identify the
    #   attachment ID for downloading an attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCaseAttachmentDownloadUrlRequest AWS API Documentation
    #
    class GetCaseAttachmentDownloadUrlRequest < Struct.new(
      :case_id,
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_presigned_url
    #   Response element providing the Amazon S3 presigned URL to download
    #   an attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCaseAttachmentDownloadUrlResponse AWS API Documentation
    #
    class GetCaseAttachmentDownloadUrlResponse < Struct.new(
      :attachment_presigned_url)
      SENSITIVE = [:attachment_presigned_url]
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   Required element for GetCaseAttachmentUploadUrl to identify the case
    #   ID for uploading an attachment.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   Required element for GetCaseAttachmentUploadUrl to identify the file
    #   name of the attachment to upload.
    #   @return [String]
    #
    # @!attribute [rw] content_length
    #   Required element for GetCaseAttachmentUploadUrl to identify the size
    #   of the file attachment.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   <note markdown="1"> The `clientToken` field is an idempotency key
    #   used to ensure that
    #   repeated attempts for a single action will be ignored by the server
    #   during retries. A caller supplied unique ID (typically a UUID)
    #   should be provided.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCaseAttachmentUploadUrlRequest AWS API Documentation
    #
    class GetCaseAttachmentUploadUrlRequest < Struct.new(
      :case_id,
      :file_name,
      :content_length,
      :client_token)
      SENSITIVE = [:file_name]
      include Aws::Structure
    end

    # @!attribute [rw] attachment_presigned_url
    #   Response element providing the Amazon S3 presigned URL to upload the
    #   attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCaseAttachmentUploadUrlResponse AWS API Documentation
    #
    class GetCaseAttachmentUploadUrlResponse < Struct.new(
      :attachment_presigned_url)
      SENSITIVE = [:attachment_presigned_url]
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   Required element for GetCase to identify the requested case ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCaseRequest AWS API Documentation
    #
    class GetCaseRequest < Struct.new(
      :case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] title
    #   Response element for GetCase that provides the case title.
    #   @return [String]
    #
    # @!attribute [rw] case_arn
    #   Response element for GetCase that provides the case ARN
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Response element for GetCase that provides contents of the case
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] case_status
    #   Response element for GetCase that provides the case status. Options
    #   for statuses include `Submitted | Detection and Analysis |
    #   Eradication, Containment and Recovery | Post-Incident Activities |
    #   Closed `
    #   @return [String]
    #
    # @!attribute [rw] engagement_type
    #   Response element for GetCase that provides the engagement type.
    #   Options for engagement type include `Active Security Event |
    #   Investigations`
    #   @return [String]
    #
    # @!attribute [rw] reported_incident_start_date
    #   Response element for GetCase that provides the customer provided
    #   incident start date.
    #   @return [Time]
    #
    # @!attribute [rw] actual_incident_start_date
    #   Response element for GetCase that provides the actual incident start
    #   date as identified by data analysis during the investigation.
    #   @return [Time]
    #
    # @!attribute [rw] impacted_aws_regions
    #   Response element for GetCase that provides the impacted regions.
    #   @return [Array<Types::ImpactedAwsRegion>]
    #
    # @!attribute [rw] threat_actor_ip_addresses
    #   Response element for GetCase that provides a list of suspicious IP
    #   addresses associated with unauthorized activity.
    #   @return [Array<Types::ThreatActorIp>]
    #
    # @!attribute [rw] pending_action
    #   Response element for GetCase that identifies the case is waiting on
    #   customer input.
    #   @return [String]
    #
    # @!attribute [rw] impacted_accounts
    #   Response element for GetCase that provides a list of impacted
    #   accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] watchers
    #   Response element for GetCase that provides a list of Watchers added
    #   to the case.
    #   @return [Array<Types::Watcher>]
    #
    # @!attribute [rw] created_date
    #   Response element for GetCase that provides the date the case was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   Response element for GetCase that provides the date a case was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] closure_code
    #   Response element for GetCase that provides the summary code for why
    #   a case was closed.
    #   @return [String]
    #
    # @!attribute [rw] resolver_type
    #   Response element for GetCase that provides the current resolver
    #   types.
    #   @return [String]
    #
    # @!attribute [rw] impacted_services
    #   Response element for GetCase that provides a list of impacted
    #   services.
    #   @return [Array<String>]
    #
    # @!attribute [rw] case_attachments
    #   Response element for GetCase that provides a list of current case
    #   attachments.
    #   @return [Array<Types::CaseAttachmentAttributes>]
    #
    # @!attribute [rw] closed_date
    #   Response element for GetCase that provides the date a specified case
    #   was closed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCaseResponse AWS API Documentation
    #
    class GetCaseResponse < Struct.new(
      :title,
      :case_arn,
      :description,
      :case_status,
      :engagement_type,
      :reported_incident_start_date,
      :actual_incident_start_date,
      :impacted_aws_regions,
      :threat_actor_ip_addresses,
      :pending_action,
      :impacted_accounts,
      :watchers,
      :created_date,
      :last_updated_date,
      :closure_code,
      :resolver_type,
      :impacted_services,
      :case_attachments,
      :closed_date)
      SENSITIVE = [:title, :description]
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] error
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetMembershipAccountDetailError AWS API Documentation
    #
    class GetMembershipAccountDetailError < Struct.new(
      :account_id,
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   @return [String]
    #
    # @!attribute [rw] relationship_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetMembershipAccountDetailItem AWS API Documentation
    #
    class GetMembershipAccountDetailItem < Struct.new(
      :account_id,
      :relationship_status,
      :relationship_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_id
    #   Required element for GetMembership to identify the membership ID to
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetMembershipRequest AWS API Documentation
    #
    class GetMembershipRequest < Struct.new(
      :membership_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_id
    #   Response element for GetMembership that provides the queried
    #   membership ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Response element for GetMembership that provides the account
    #   configured to manage the membership.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Response element for GetMembership that provides the region
    #   configured to manage the membership.
    #   @return [String]
    #
    # @!attribute [rw] membership_name
    #   Response element for GetMembership that provides the configured
    #   membership name.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   Response element for GetMembership that provides the membership ARN.
    #   @return [String]
    #
    # @!attribute [rw] membership_status
    #   Response element for GetMembership that provides the current
    #   membership status.
    #   @return [String]
    #
    # @!attribute [rw] membership_activation_timestamp
    #   Response element for GetMembership that provides the configured
    #   membership activation timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] membership_deactivation_timestamp
    #   Response element for GetMembership that provides the configured
    #   membership name deactivation timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] customer_type
    #   Response element for GetMembership that provides the configured
    #   membership type. Options include ` Standalone | Organizations`.
    #   @return [String]
    #
    # @!attribute [rw] number_of_accounts_covered
    #   Response element for GetMembership that provides the number of
    #   accounts in the membership.
    #   @return [Integer]
    #
    # @!attribute [rw] incident_response_team
    #   Response element for GetMembership that provides the configured
    #   membership incident response team members.
    #   @return [Array<Types::IncidentResponder>]
    #
    # @!attribute [rw] opt_in_features
    #   Response element for GetMembership that provides the if opt-in
    #   features have been enabled.
    #   @return [Array<Types::OptInFeature>]
    #
    # @!attribute [rw] membership_accounts_configurations
    #   The `membershipAccountsConfigurations` field contains the
    #   configuration details for member accounts within the Amazon Web
    #   Services Organizations membership structure.
    #
    #   This field returns a structure containing information about:
    #
    #   * Account configurations for member accounts
    #
    #   * Membership settings and preferences
    #
    #   * Account-level permissions and roles
    #   @return [Types::MembershipAccountsConfigurations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetMembershipResponse AWS API Documentation
    #
    class GetMembershipResponse < Struct.new(
      :membership_id,
      :account_id,
      :region,
      :membership_name,
      :membership_arn,
      :membership_status,
      :membership_activation_timestamp,
      :membership_deactivation_timestamp,
      :customer_type,
      :number_of_accounts_covered,
      :incident_response_team,
      :opt_in_features,
      :membership_accounts_configurations)
      SENSITIVE = [:membership_name]
      include Aws::Structure
    end

    # @!attribute [rw] region
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ImpactedAwsRegion AWS API Documentation
    #
    class ImpactedAwsRegion < Struct.new(
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] job_title
    #   @return [String]
    #
    # @!attribute [rw] email
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/IncidentResponder AWS API Documentation
    #
    class IncidentResponder < Struct.new(
      :name,
      :job_title,
      :email)
      SENSITIVE = [:name, :job_title, :email]
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds after which to retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/InvalidTokenException AWS API Documentation
    #
    class InvalidTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to ListCaseEdits. When provided in this manner,
    #   the API fetches the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional element to identify how many results to obtain. There is a
    #   maximum value of 25.
    #   @return [Integer]
    #
    # @!attribute [rw] case_id
    #   Required element used with ListCaseEdits to identify the case to
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCaseEditsRequest AWS API Documentation
    #
    class ListCaseEditsRequest < Struct.new(
      :next_token,
      :max_results,
      :case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional string that, if supplied on subsequent calls to
    #   ListCaseEdits, allows the API to fetch the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Response element for ListCaseEdits that includes the action, event
    #   timestamp, message, and principal for the response.
    #   @return [Array<Types::CaseEditItem>]
    #
    # @!attribute [rw] total
    #   Response element for ListCaseEdits that identifies the total number
    #   of edits.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCaseEditsResponse AWS API Documentation
    #
    class ListCaseEditsResponse < Struct.new(
      :next_token,
      :items,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   @return [Time]
    #
    # @!attribute [rw] title
    #   @return [String]
    #
    # @!attribute [rw] case_arn
    #   @return [String]
    #
    # @!attribute [rw] engagement_type
    #   @return [String]
    #
    # @!attribute [rw] case_status
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] closed_date
    #   @return [Time]
    #
    # @!attribute [rw] resolver_type
    #   @return [String]
    #
    # @!attribute [rw] pending_action
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCasesItem AWS API Documentation
    #
    class ListCasesItem < Struct.new(
      :case_id,
      :last_updated_date,
      :title,
      :case_arn,
      :engagement_type,
      :case_status,
      :created_date,
      :closed_date,
      :resolver_type,
      :pending_action)
      SENSITIVE = [:title]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to ListCases. When provided in this manner, the
    #   API fetches the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional element for ListCases to limit the number of responses.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCasesRequest AWS API Documentation
    #
    class ListCasesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional string that, if supplied on subsequent calls to
    #   ListCases, allows the API to fetch the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Response element for ListCases that includes caseARN, caseID,
    #   caseStatus, closedDate, createdDate, engagementType,
    #   lastUpdatedDate, pendingAction, resolverType, and title for each
    #   response.
    #   @return [Array<Types::ListCasesItem>]
    #
    # @!attribute [rw] total
    #   Response element for ListCases providing the total number of
    #   responses.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCasesResponse AWS API Documentation
    #
    class ListCasesResponse < Struct.new(
      :next_token,
      :items,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] comment_id
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   @return [Time]
    #
    # @!attribute [rw] creator
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   @return [String]
    #
    # @!attribute [rw] body
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCommentsItem AWS API Documentation
    #
    class ListCommentsItem < Struct.new(
      :comment_id,
      :created_date,
      :last_updated_date,
      :creator,
      :last_updated_by,
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to ListComments. When provided in this manner,
    #   the API fetches the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional element for ListComments to limit the number of responses.
    #   @return [Integer]
    #
    # @!attribute [rw] case_id
    #   Required element for ListComments to designate the case to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCommentsRequest AWS API Documentation
    #
    class ListCommentsRequest < Struct.new(
      :next_token,
      :max_results,
      :case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional string that, if supplied on subsequent calls to
    #   ListComments, allows the API to fetch the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Response element for ListComments providing the body, commentID,
    #   createDate, creator, lastUpdatedBy and lastUpdatedDate for each
    #   response.
    #   @return [Array<Types::ListCommentsItem>]
    #
    # @!attribute [rw] total
    #   Response element for ListComments identifying the number of
    #   responses.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCommentsResponse AWS API Documentation
    #
    class ListCommentsResponse < Struct.new(
      :next_token,
      :items,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_id
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   @return [String]
    #
    # @!attribute [rw] membership_status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListMembershipItem AWS API Documentation
    #
    class ListMembershipItem < Struct.new(
      :membership_id,
      :account_id,
      :region,
      :membership_arn,
      :membership_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to ListMemberships. When provided in this manner,
    #   the API fetches the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Request element for ListMemberships to limit the number of
    #   responses.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListMembershipsRequest AWS API Documentation
    #
    class ListMembershipsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional string that, if supplied on subsequent calls to
    #   ListMemberships, allows the API to fetch the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Request element for ListMemberships including the accountID,
    #   membershipARN, membershipID, membershipStatus, and region for each
    #   response.
    #   @return [Array<Types::ListMembershipItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListMembershipsResponse AWS API Documentation
    #
    class ListMembershipsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Required element for ListTagsForResource to provide the ARN to
    #   identify a specific resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Response element for ListTagsForResource providing content for each
    #   configured tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `MembershipAccountsConfigurations` structure defines the
    # configuration settings for managing membership accounts withinAmazon
    # Web Services.
    #
    # This structure contains settings that determine how member accounts
    # are configured and managed within your organization, including:
    #
    # * Account configuration preferences
    #
    # * Membership validation rules
    #
    # * Account access settings
    #
    # You can use this structure to define and maintain standardized
    # configurations across multiple member accounts in your organization.
    #
    # @!attribute [rw] cover_entire_organization
    #   The `coverEntireOrganization` field is a boolean value that
    #   determines whether the membership configuration applies to all
    #   accounts within an Amazon Web Services Organization.
    #
    #   When set to `true`, the configuration will be applied across all
    #   accounts in the organization. When set to `false`, the configuration
    #   will only apply to specifically designated accounts under the AWS
    #   Organizational Units specificied.
    #   @return [Boolean]
    #
    # @!attribute [rw] organizational_units
    #   A list of organizational unit IDs that follow the pattern
    #   `ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}`. These IDs represent the
    #   organizational units within an Amazon Web Services Organizations
    #   structure that are covered by the membership.
    #
    #   Each organizational unit ID in the list must:
    #
    #   * Begin with the prefix 'ou-'
    #
    #   * Contain between 4 and 32 alphanumeric characters in the first
    #     segment
    #
    #   * Contain between 8 and 32 alphanumeric characters in the second
    #     segment
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/MembershipAccountsConfigurations AWS API Documentation
    #
    class MembershipAccountsConfigurations < Struct.new(
      :cover_entire_organization,
      :organizational_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `MembershipAccountsConfigurationsUpdate`structure represents the
    # configuration updates for member accounts within an Amazon Web
    # Services organization.
    #
    # This structure is used to modify existing account configurations and
    # settings for members in the organization. When applying updates,
    # ensure all required fields are properly specified to maintain account
    # consistency.
    #
    # Key considerations when using this structure:
    #
    # * All configuration changes are validated before being applied
    #
    # * Updates are processed asynchronously in the background
    #
    # * Configuration changes may take several minutes to propagate across
    #   all affected accounts
    #
    # @!attribute [rw] cover_entire_organization
    #   The `coverEntireOrganization` field is a boolean value that
    #   determines whether the membership configuration should be applied
    #   across the entire Amazon Web Services Organization.
    #
    #   When set to `true`, the configuration will be applied to all
    #   accounts within the organization. When set to `false`, the
    #   configuration will only apply to specifically designated accounts.
    #   @return [Boolean]
    #
    # @!attribute [rw] organizational_units_to_add
    #   A list of organizational unit IDs to add to the membership
    #   configuration. Each organizational unit ID must match the pattern
    #   `ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}`.
    #
    #   The list must contain between 1 and 5 organizational unit IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organizational_units_to_remove
    #   A list of organizational unit IDs to remove from the membership
    #   configuration. Each organizational unit ID must match the pattern
    #   `ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}`.
    #
    #   The list must contain between 1 and 5 organizational unit IDs per
    #   invocation of the API request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/MembershipAccountsConfigurationsUpdate AWS API Documentation
    #
    class MembershipAccountsConfigurationsUpdate < Struct.new(
      :cover_entire_organization,
      :organizational_units_to_add,
      :organizational_units_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feature_name
    #   @return [String]
    #
    # @!attribute [rw] is_enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/OptInFeature AWS API Documentation
    #
    class OptInFeature < Struct.new(
      :feature_name,
      :is_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/SecurityIncidentResponseNotActiveException AWS API Documentation
    #
    class SecurityIncidentResponseNotActiveException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the requested resource which lead to the service quota
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the requested resource which lead to the service quota
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Required element for TagResource to identify the ARN for the
    #   resource to add a tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Required element for ListTagsForResource to provide the content for
    #   a tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] ip_address
    #   @return [String]
    #
    # @!attribute [rw] user_agent
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ThreatActorIp AWS API Documentation
    #
    class ThreatActorIp < Struct.new(
      :ip_address,
      :user_agent)
      SENSITIVE = [:ip_address]
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the exception.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code of the exception.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds after which to retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Required element for UnTagResource to identify the ARN for the
    #   resource to remove a tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Required element for UnTagResource to identify tag to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] case_id
    #   Required element for UpdateCaseComment to identify the case ID
    #   containing the comment to be updated.
    #   @return [String]
    #
    # @!attribute [rw] comment_id
    #   Required element for UpdateCaseComment to identify the case ID to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   Required element for UpdateCaseComment to identify the content for
    #   the comment to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCaseCommentRequest AWS API Documentation
    #
    class UpdateCaseCommentRequest < Struct.new(
      :case_id,
      :comment_id,
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] comment_id
    #   Response element for UpdateCaseComment providing the updated comment
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   Response element for UpdateCaseComment providing the updated comment
    #   content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCaseCommentResponse AWS API Documentation
    #
    class UpdateCaseCommentResponse < Struct.new(
      :comment_id,
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   Required element for UpdateCase to identify the case ID for updates.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Optional element for UpdateCase to provide content for the title
    #   field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional element for UpdateCase to provide content for the
    #   description field.
    #   @return [String]
    #
    # @!attribute [rw] reported_incident_start_date
    #   Optional element for UpdateCase to provide content for the customer
    #   reported incident start date field.
    #   @return [Time]
    #
    # @!attribute [rw] actual_incident_start_date
    #   Optional element for UpdateCase to provide content for the incident
    #   start date field.
    #   @return [Time]
    #
    # @!attribute [rw] engagement_type
    #   Optional element for UpdateCase to provide content for the
    #   engagement type field. `Available engagement types include Security
    #   Incident | Investigation`.
    #   @return [String]
    #
    # @!attribute [rw] watchers_to_add
    #   Optional element for UpdateCase to provide content to add additional
    #   watchers to a case.
    #   @return [Array<Types::Watcher>]
    #
    # @!attribute [rw] watchers_to_delete
    #   Optional element for UpdateCase to provide content to remove
    #   existing watchers from a case.
    #   @return [Array<Types::Watcher>]
    #
    # @!attribute [rw] threat_actor_ip_addresses_to_add
    #   Optional element for UpdateCase to provide content to add additional
    #   suspicious IP addresses related to a case.
    #   @return [Array<Types::ThreatActorIp>]
    #
    # @!attribute [rw] threat_actor_ip_addresses_to_delete
    #   Optional element for UpdateCase to provide content to remove
    #   suspicious IP addresses from a case.
    #   @return [Array<Types::ThreatActorIp>]
    #
    # @!attribute [rw] impacted_services_to_add
    #   Optional element for UpdateCase to provide content to add services
    #   impacted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_services_to_delete
    #   Optional element for UpdateCase to provide content to remove
    #   services impacted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_aws_regions_to_add
    #   Optional element for UpdateCase to provide content to add regions
    #   impacted.
    #   @return [Array<Types::ImpactedAwsRegion>]
    #
    # @!attribute [rw] impacted_aws_regions_to_delete
    #   Optional element for UpdateCase to provide content to remove regions
    #   impacted.
    #   @return [Array<Types::ImpactedAwsRegion>]
    #
    # @!attribute [rw] impacted_accounts_to_add
    #   Optional element for UpdateCase to provide content to add accounts
    #   impacted.
    #
    #   <note markdown="1"> AWS account ID's may appear less than 12 characters and need to be
    #   zero-prepended. An example would be `123123123` which is nine
    #   digits, and with zero-prepend would be `000123123123`. Not
    #   zero-prepending to 12 digits could result in errors.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_accounts_to_delete
    #   Optional element for UpdateCase to provide content to add accounts
    #   impacted.
    #
    #   <note markdown="1"> AWS account ID's may appear less than 12 characters and need to be
    #   zero-prepended. An example would be `123123123` which is nine
    #   digits, and with zero-prepend would be `000123123123`. Not
    #   zero-prepending to 12 digits could result in errors.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCaseRequest AWS API Documentation
    #
    class UpdateCaseRequest < Struct.new(
      :case_id,
      :title,
      :description,
      :reported_incident_start_date,
      :actual_incident_start_date,
      :engagement_type,
      :watchers_to_add,
      :watchers_to_delete,
      :threat_actor_ip_addresses_to_add,
      :threat_actor_ip_addresses_to_delete,
      :impacted_services_to_add,
      :impacted_services_to_delete,
      :impacted_aws_regions_to_add,
      :impacted_aws_regions_to_delete,
      :impacted_accounts_to_add,
      :impacted_accounts_to_delete)
      SENSITIVE = [:title, :description]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCaseResponse AWS API Documentation
    #
    class UpdateCaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] case_id
    #   Required element for UpdateCaseStatus to identify the case to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] case_status
    #   Required element for UpdateCaseStatus to identify the status for a
    #   case. Options include `Submitted | Detection and Analysis |
    #   Containment, Eradication and Recovery | Post-incident Activities`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCaseStatusRequest AWS API Documentation
    #
    class UpdateCaseStatusRequest < Struct.new(
      :case_id,
      :case_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_status
    #   Response element for UpdateCaseStatus showing the newly configured
    #   status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCaseStatusResponse AWS API Documentation
    #
    class UpdateCaseStatusResponse < Struct.new(
      :case_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_id
    #   Required element for UpdateMembership to identify the membership to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] membership_name
    #   Optional element for UpdateMembership to update the membership name.
    #   @return [String]
    #
    # @!attribute [rw] incident_response_team
    #   Optional element for UpdateMembership to update the membership name.
    #   @return [Array<Types::IncidentResponder>]
    #
    # @!attribute [rw] opt_in_features
    #   Optional element for UpdateMembership to enable or disable opt-in
    #   features for the service.
    #   @return [Array<Types::OptInFeature>]
    #
    # @!attribute [rw] membership_accounts_configurations_update
    #   The `membershipAccountsConfigurationsUpdate` field in the
    #   `UpdateMembershipRequest` structure allows you to update the
    #   configuration settings for accounts within a membership.
    #
    #   This field is optional and contains a structure of type
    #   `MembershipAccountsConfigurationsUpdate ` that specifies the updated
    #   account configurations for the membership.
    #   @return [Types::MembershipAccountsConfigurationsUpdate]
    #
    # @!attribute [rw] undo_membership_cancellation
    #   The `undoMembershipCancellation` parameter is a boolean flag that
    #   indicates whether to reverse a previously requested membership
    #   cancellation. When set to true, this will revoke the cancellation
    #   request and maintain the membership status.
    #
    #   This parameter is optional and can be used in scenarios where you
    #   need to restore a membership that was marked for cancellation but
    #   hasn't been fully terminated yet.
    #
    #   * If set to `true`, the cancellation request will be revoked
    #
    #   * If set to `false` the service will throw a ValidationException.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateMembershipRequest AWS API Documentation
    #
    class UpdateMembershipRequest < Struct.new(
      :membership_id,
      :membership_name,
      :incident_response_team,
      :opt_in_features,
      :membership_accounts_configurations_update,
      :undo_membership_cancellation)
      SENSITIVE = [:membership_name]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateMembershipResponse AWS API Documentation
    #
    class UpdateMembershipResponse < Aws::EmptyStructure; end

    # @!attribute [rw] case_id
    #   Required element for UpdateResolverType to identify the case to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] resolver_type
    #   Required element for UpdateResolverType to identify the new
    #   resolver.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateResolverTypeRequest AWS API Documentation
    #
    class UpdateResolverTypeRequest < Struct.new(
      :case_id,
      :resolver_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   Response element for UpdateResolver identifying the case ID being
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] case_status
    #   Response element for UpdateResolver identifying the current status
    #   of the case.
    #   @return [String]
    #
    # @!attribute [rw] resolver_type
    #   Response element for UpdateResolver identifying the current resolver
    #   of the case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateResolverTypeResponse AWS API Documentation
    #
    class UpdateResolverTypeResponse < Struct.new(
      :case_id,
      :case_status,
      :resolver_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The fields which lead to the exception.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] email
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] job_title
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/Watcher AWS API Documentation
    #
    class Watcher < Struct.new(
      :email,
      :name,
      :job_title)
      SENSITIVE = [:email, :name, :job_title]
      include Aws::Structure
    end

  end
end

