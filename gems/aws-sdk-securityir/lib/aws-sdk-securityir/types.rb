# frozen_string_literal: true

# This is generated code!

module Aws::SecurityIR
  # This module contains the types returned by client operations.
  module Types

    # <p/>
    # @!attribute message
    #   <p>The ID of the resource which lead to the access denial.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#API_BatchGetMemberAccountDetails_RequestSyntax API Reference
    # @!attribute membership_id
    #   <p>Required element used in combination with BatchGetMemberAccountDetails to identify the membership ID to query. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#securityir-BatchGetMemberAccountDetails-request-uri-membershipId API Reference
    #   @return [String]
    # @!attribute account_ids
    #   <p>Optional element to query the membership relationship status to a provided list of account IDs.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#securityir-BatchGetMemberAccountDetails-request-accountIds API Reference
    #   @return [Array<String>]
    class BatchGetMemberAccountDetailsRequest < Struct.new(
      nil,
      :membership_id,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#API_BatchGetMemberAccountDetails_ResponseSyntax API Reference
    # @!attribute items
    #   <p>The response element providing responses for requests to GetMembershipAccountDetails.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#securityir-BatchGetMemberAccountDetails-response-items API Reference
    #   @return [Array<Types::GetMembershipAccountDetailItem>]
    # @!attribute errors
    #   <p>The response element providing error messages for requests to GetMembershipAccountDetails.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_BatchGetMemberAccountDetails.html#securityir-BatchGetMemberAccountDetails-response-errors API Reference
    #   @return [Array<Types::GetMembershipAccountDetailError>]
    class BatchGetMemberAccountDetailsResponse < Struct.new(
      nil,
      :items,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html#API_CancelMembership_RequestSyntax API Reference
    # @!attribute membership_id
    #   <p>Required element used in combination with CancelMembershipRequest to identify the membership ID to cancel. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html#securityir-CancelMembership-request-uri-membershipId API Reference
    #   @return [String]
    class CancelMembershipRequest < Struct.new(
      nil,
      :membership_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html#API_CancelMembership_ResponseSyntax API Reference
    # @!attribute membership_id
    #   <p>The response element providing responses for requests to CancelMembershipRequest.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CancelMembership.html#securityir-CancelMembership-response-membershipId API Reference
    #   @return [String]
    class CancelMembershipResponse < Struct.new(
      nil,
      :membership_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html API Reference
    # @!attribute attachment_id
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-attachmentId API Reference
    #   @return [String]
    # @!attribute file_name
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-fileName API Reference
    #   @return [String]
    # @!attribute attachment_status
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-attachmentStatus API Reference
    #   @return [String]
    # @!attribute creator
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-creator API Reference
    #   @return [String]
    # @!attribute created_date
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseAttachmentAttributes.html#securityir-Type-CaseAttachmentAttributes-createdDate API Reference
    #   @return [Time]
    class CaseAttachmentAttributes < Struct.new(
      nil,
      :attachment_id,
      :file_name,
      :attachment_status,
      :creator,
      :created_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html API Reference
    # @!attribute event_timestamp
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html#securityir-Type-CaseEditItem-eventTimestamp API Reference
    #   @return [Time]
    # @!attribute principal
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html#securityir-Type-CaseEditItem-principal API Reference
    #   @return [String]
    # @!attribute action
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html#securityir-Type-CaseEditItem-action API Reference
    #   @return [String]
    # @!attribute message
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CaseEditItem.html#securityir-Type-CaseEditItem-message API Reference
    #   @return [String]
    class CaseEditItem < Struct.new(
      nil,
      :event_timestamp,
      :principal,
      :action,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element used in combination with CloseCase to identify the case ID to close.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CloseCase.html#securityir-CloseCase-request-uri-caseId API Reference
    #   @return [String]
    class CloseCaseRequest < Struct.new(
      nil,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_status
    #   <p>A response element providing responses for requests to CloseCase. This element responds <code>Closed </code> if successful. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CloseCase.html#securityir-CloseCase-response-caseStatus API Reference
    #   @return [String]
    # @!attribute closed_date
    #   <p>A response element providing responses for requests to CloseCase. This element responds with the ISO-8601 formatted timestamp of the moment when the case was closed. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CloseCase.html#securityir-CloseCase-response-closedDate API Reference
    #   @return [Time]
    class CloseCaseResponse < Struct.new(
      nil,
      :case_status,
      :closed_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the conflicting resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the conflicting resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element used in combination with CreateCaseComment to specify a case ID.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html#securityir-CreateCaseComment-request-uri-caseId API Reference
    #   @return [String]
    # @!attribute client_token
    #   <note> <p>The <code>clientToken</code> field is an idempotency key used to ensure that repeated attempts for a single action will be ignored by the server during retries. A caller supplied unique ID (typically a UUID) should be provided. </p> </note>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html#securityir-CreateCaseComment-request-clientToken API Reference
    #   @return [String]
    # @!attribute body
    #   <p>Required element used in combination with CreateCaseComment to add content for the new comment.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html#securityir-CreateCaseComment-request-body API Reference
    #   @return [String]
    class CreateCaseCommentRequest < Struct.new(
      nil,
      :case_id,
      :client_token,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment_id
    #   <p>Response element indicating the new comment ID.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCaseComment.html#securityir-CreateCaseComment-response-commentId API Reference
    #   @return [String]
    class CreateCaseCommentResponse < Struct.new(
      nil,
      :comment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <note> <p>The <code>clientToken</code> field is an idempotency key used to ensure that repeated attempts for a single action will be ignored by the server during retries. A caller supplied unique ID (typically a UUID) should be provided. </p> </note>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-clientToken API Reference
    #   @return [String]
    # @!attribute resolver_type
    #   <p>Required element used in combination with CreateCase to identify the resolver type.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-resolverType API Reference
    #   @return [String]
    # @!attribute title
    #   <p>Required element used in combination with CreateCase to provide a title for the new case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-title API Reference
    #   @return [String]
    # @!attribute description
    #   <p>Required element used in combination with CreateCase</p> <p>to provide a description for the new case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-description API Reference
    #   @return [String]
    # @!attribute engagement_type
    #   <p>Required element used in combination with CreateCase to provide an engagement type for the new cases. Available engagement types include Security Incident | Investigation </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-engagementType API Reference
    #   @return [String]
    # @!attribute reported_incident_start_date
    #   <p>Required element used in combination with CreateCase to provide an initial start date for the unauthorized activity. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-reportedIncidentStartDate API Reference
    #   @return [Time]
    # @!attribute impacted_accounts
    #   <p>Required element used in combination with CreateCase to provide a list of impacted accounts.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-impactedAccounts API Reference
    #   @return [Array<String>]
    # @!attribute watchers
    #   <p>Required element used in combination with CreateCase to provide a list of entities to receive notifications for case updates. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-watchers API Reference
    #   @return [Array<Types::Watcher>]
    # @!attribute threat_actor_ip_addresses
    #   <p>An optional element used in combination with CreateCase to provide a list of suspicious internet protocol addresses associated with unauthorized activity. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-threatActorIpAddresses API Reference
    #   @return [Array<Types::ThreatActorIp>]
    # @!attribute impacted_services
    #   <p>An optional element used in combination with CreateCase to provide a list of services impacted.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-impactedServices API Reference
    #   @return [Array<String>]
    # @!attribute impacted_aws_regions
    #   <p>An optional element used in combination with CreateCase to provide a list of impacted regions.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-impactedAwsRegions API Reference
    #   @return [Array<Types::ImpactedAwsRegion>]
    # @!attribute tags
    #   <p>An optional element used in combination with CreateCase to add customer specified tags to a case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-request-tags API Reference
    #   @return [Hash<String, String>]
    class CreateCaseRequest < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#API_CreateCase_ResponseSyntax API Reference
    # @!attribute case_id
    #   <p>A response element providing responses for requests to CreateCase. This element responds with the case ID. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateCase.html#securityir-CreateCase-response-caseId API Reference
    #   @return [String]
    class CreateCaseResponse < Struct.new(
      nil,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <note> <p>The <code>clientToken</code> field is an idempotency key used to ensure that repeated attempts for a single action will be ignored by the server during retries. A caller supplied unique ID (typically a UUID) should be provided. </p> </note>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-clientToken API Reference
    #   @return [String]
    # @!attribute membership_name
    #   <p>Required element used in combination with CreateMembership to create a name for the membership.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-membershipName API Reference
    #   @return [String]
    # @!attribute incident_response_team
    #   <p>Required element used in combination with CreateMembership to add customer incident response team members and trusted partners to the membership. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-incidentResponseTeam API Reference
    #   @return [Array<Types::IncidentResponder>]
    # @!attribute opt_in_features
    #   <p>Optional element to enable the monitoring and investigation opt-in features for the service.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-optInFeatures API Reference
    #   @return [Array<Types::OptInFeature>]
    # @!attribute tags
    #   <p>Optional element for customer configured tags.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-tags API Reference
    #   @return [Hash<String, String>]
    # @!attribute cover_entire_organization
    #   <p>The <code>coverEntireOrganization</code> parameter is a boolean flag that determines whether the membership should be applied to the entire Amazon Web Services Organization. When set to true, the membership will be created for all accounts within the organization. When set to false, the membership will only be created for specified accounts. </p> <p>This parameter is optional. If not specified, the default value is false.</p> <ul> <li> <p>If set to <i>true</i>: The membership will automatically include all existing and future accounts in the Amazon Web Services Organization. </p> </li> <li> <p>If set to <i>false</i>: The membership will only apply to explicitly specified accounts. </p> </li> </ul>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-request-coverEntireOrganization API Reference
    #   @return [Boolean]
    class CreateMembershipRequest < Struct.new(
      nil,
      :client_token,
      :membership_name,
      :incident_response_team,
      :opt_in_features,
      :tags,
      :cover_entire_organization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_id
    #   <p>Response element for CreateMembership providing the newly created membership ID.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_CreateMembership.html#securityir-CreateMembership-response-membershipId API Reference
    #   @return [String]
    class CreateMembershipResponse < Struct.new(
      nil,
      :membership_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element for GetCaseAttachmentDownloadUrl to identify the case ID for downloading an attachment from. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentDownloadUrl.html#securityir-GetCaseAttachmentDownloadUrl-request-uri-caseId API Reference
    #   @return [String]
    # @!attribute attachment_id
    #   <p>Required element for GetCaseAttachmentDownloadUrl to identify the attachment ID for downloading an attachment. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentDownloadUrl.html#securityir-GetCaseAttachmentDownloadUrl-request-uri-attachmentId API Reference
    #   @return [String]
    class GetCaseAttachmentDownloadUrlRequest < Struct.new(
      nil,
      :case_id,
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_presigned_url
    #   <p>Response element providing the Amazon S3 presigned URL to download an attachment.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentDownloadUrl.html#securityir-GetCaseAttachmentDownloadUrl-response-attachmentPresignedUrl API Reference
    #   @return [String]
    class GetCaseAttachmentDownloadUrlResponse < Struct.new(
      nil,
      :attachment_presigned_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element for GetCaseAttachmentUploadUrl to identify the case ID for uploading an attachment. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-request-uri-caseId API Reference
    #   @return [String]
    # @!attribute file_name
    #   <p>Required element for GetCaseAttachmentUploadUrl to identify the file name of the attachment to upload. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-request-contentLength API Reference
    #   @return [String]
    # @!attribute content_length
    #   <p>Required element for GetCaseAttachmentUploadUrl to identify the size of the file attachment.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-request-fileName API Reference
    #   @return [Integer]
    # @!attribute client_token
    #   <note> <p>The <code>clientToken</code> field is an idempotency key used to ensure that repeated attempts for a single action will be ignored by the server during retries. A caller supplied unique ID (typically a UUID) should be provided. </p> </note>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-request-clientToken API Reference
    #   @return [String]
    class GetCaseAttachmentUploadUrlRequest < Struct.new(
      nil,
      :case_id,
      :file_name,
      :content_length,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_presigned_url
    #   <p>Response element providing the Amazon S3 presigned URL to upload the attachment.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCaseAttachmentUploadUrl.html#securityir-GetCaseAttachmentUploadUrl-response-attachmentPresignedUrl API Reference
    #   @return [String]
    class GetCaseAttachmentUploadUrlResponse < Struct.new(
      nil,
      :attachment_presigned_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element for GetCase to identify the requested case ID.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-request-uri-caseId API Reference
    #   @return [String]
    class GetCaseRequest < Struct.new(
      nil,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute title
    #   <p>Response element for GetCase that provides the case title.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-title API Reference
    #   @return [String]
    # @!attribute case_arn
    #   <p>Response element for GetCase that provides the case ARN</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-caseArn API Reference
    #   @return [String]
    # @!attribute description
    #   <p>Response element for GetCase that provides contents of the case description.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-description API Reference
    #   @return [String]
    # @!attribute case_status
    #   <p>Response element for GetCase that provides the case status. Options for statuses include <code>Submitted | Detection and Analysis | Eradication, Containment and Recovery | Post-Incident Activities | Closed </code> </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-caseStatus API Reference
    #   @return [String]
    # @!attribute engagement_type
    #   <p>Response element for GetCase that provides the engagement type. Options for engagement type include <code>Active Security Event | Investigations</code> </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-engagementType API Reference
    #   @return [String]
    # @!attribute reported_incident_start_date
    #   <p>Response element for GetCase that provides the customer provided incident start date.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-reportedIncidentStartDate API Reference
    #   @return [Time]
    # @!attribute actual_incident_start_date
    #   <p>Response element for GetCase that provides the actual incident start date as identified by data analysis during the investigation. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-actualIncidentStartDate API Reference
    #   @return [Time]
    # @!attribute impacted_aws_regions
    #   <p>Response element for GetCase that provides the impacted regions.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-impactedAwsRegions API Reference
    #   @return [Array<Types::ImpactedAwsRegion>]
    # @!attribute threat_actor_ip_addresses
    #   <p>Response element for GetCase that provides a list of suspicious IP addresses associated with unauthorized activity. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-threatActorIpAddresses API Reference
    #   @return [Array<Types::ThreatActorIp>]
    # @!attribute pending_action
    #   <p>Response element for GetCase that identifies the case is waiting on customer input.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-pendingAction API Reference
    #   @return [String]
    # @!attribute impacted_accounts
    #   <p>Response element for GetCase that provides a list of impacted accounts.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-impactedAccounts API Reference
    #   @return [Array<String>]
    # @!attribute watchers
    #   <p>Response element for GetCase that provides a list of Watchers added to the case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-watchers API Reference
    #   @return [Array<Types::Watcher>]
    # @!attribute created_date
    #   <p>Response element for GetCase that provides the date the case was created.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-createdDate API Reference
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>Response element for GetCase that provides the date a case was last modified.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-lastUpdatedDate API Reference
    #   @return [Time]
    # @!attribute closure_code
    #   <p>Response element for GetCase that provides the summary code for why a case was closed.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-closureCode API Reference
    #   @return [String]
    # @!attribute resolver_type
    #   <p>Response element for GetCase that provides the current resolver types.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-resolverType API Reference
    #   @return [String]
    # @!attribute impacted_services
    #   <p>Response element for GetCase that provides a list of impacted services.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-impactedServices API Reference
    #   @return [Array<String>]
    # @!attribute case_attachments
    #   <p>Response element for GetCase that provides a list of current case attachments.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-caseAttachments API Reference
    #   @return [Array<Types::CaseAttachmentAttributes>]
    # @!attribute closed_date
    #   <p>Response element for GetCase that provides the date a specified case was closed.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetCase.html#securityir-GetCase-response-closedDate API Reference
    #   @return [Time]
    class GetCaseResponse < Struct.new(
      nil,
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
      :closed_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailError.html API Reference
    # @!attribute account_id
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailError.html#securityir-Type-GetMembershipAccountDetailError-accountId API Reference
    #   @return [String]
    # @!attribute error
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-relationshipStatus API Reference
    #   @return [String]
    # @!attribute message
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-relationshipType API Reference
    #   @return [String]
    class GetMembershipAccountDetailError < Struct.new(
      nil,
      :account_id,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html API Reference
    # @!attribute account_id
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-accountId API Reference
    #   @return [String]
    # @!attribute relationship_status
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-relationshipStatus API Reference
    #   @return [String]
    # @!attribute relationship_type
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembershipAccountDetailItem.html#securityir-Type-GetMembershipAccountDetailItem-relationshipType API Reference
    #   @return [String]
    class GetMembershipAccountDetailItem < Struct.new(
      nil,
      :account_id,
      :relationship_status,
      :relationship_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_id
    #   <p>Required element for GetMembership to identify the membership ID to query.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-request-uri-membershipId API Reference
    #   @return [String]
    class GetMembershipRequest < Struct.new(
      nil,
      :membership_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_id
    #   <p>Response element for GetMembership that provides the queried membership ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Response element for GetMembership that provides the account configured to manage the membership.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-accountId API Reference
    #   @return [String]
    # @!attribute region
    #   <p>Response element for GetMembership that provides the region configured to manage the membership.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-region API Reference
    #   @return [String]
    # @!attribute membership_name
    #   <p>Response element for GetMembership that provides the configured membership name.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipName API Reference
    #   @return [String]
    # @!attribute membership_arn
    #   <p>Response element for GetMembership that provides the membership ARN.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipArn API Reference
    #   @return [String]
    # @!attribute membership_status
    #   <p>Response element for GetMembership that provides the current membership status.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipStatus API Reference
    #   @return [String]
    # @!attribute membership_activation_timestamp
    #   <p>Response element for GetMembership that provides the configured membership activation timestamp.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipActivationTimestamp API Reference
    #   @return [Time]
    # @!attribute membership_deactivation_timestamp
    #   <p>Response element for GetMembership that provides the configured membership name deactivation timestamp. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipDeactivationTimestamp API Reference
    #   @return [Time]
    # @!attribute customer_type
    #   <p>Response element for GetMembership that provides the configured membership type. Options include <code> Standalone | Organizations</code>. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-customerType API Reference
    #   @return [String]
    # @!attribute number_of_accounts_covered
    #   <p>Response element for GetMembership that provides the number of accounts in the membership.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-numberOfAccountsCovered API Reference
    #   @return [Integer]
    # @!attribute incident_response_team
    #   <p>Response element for GetMembership that provides the configured membership incident response team members. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-incidentResponseTeam API Reference
    #   @return [Array<Types::IncidentResponder>]
    # @!attribute opt_in_features
    #   <p>Response element for GetMembership that provides the if opt-in features have been enabled.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-optInFeatures API Reference
    #   @return [Array<Types::OptInFeature>]
    # @!attribute membership_accounts_configurations
    #   <p>The <code>membershipAccountsConfigurations</code> field contains the configuration details for member accounts within the Amazon Web Services Organizations membership structure. </p> <p>This field returns a structure containing information about:</p> <ul> <li> <p>Account configurations for member accounts</p> </li> <li> <p>Membership settings and preferences</p> </li> <li> <p>Account-level permissions and roles</p> </li> </ul>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_GetMembership.html#securityir-GetMembership-response-membershipAccountsConfigurations API Reference
    #   @return [Types::MembershipAccountsConfigurations]
    class GetMembershipResponse < Struct.new(
      nil,
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
      :membership_accounts_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute region
    #   <p/>
    #   @return [String]
    class ImpactedAwsRegion < Struct.new(
      nil,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute name
    #   <p/>
    #   @return [String]
    # @!attribute job_title
    #   <p/>
    #   @return [String]
    # @!attribute email
    #   <p/>
    #   @return [String]
    class IncidentResponder < Struct.new(
      nil,
      :name,
      :job_title,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds after which to retry the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class InvalidTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous call to ListCaseEdits. When provided in this manner, the API fetches the next page of results. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-request-nextToken API Response
    #   @return [String]
    # @!attribute max_results
    #   <p>Optional element to identify how many results to obtain. There is a maximum value of 25.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-request-maxResults API Response
    #   @return [Integer]
    # @!attribute case_id
    #   <p>Required element used with ListCaseEdits to identify the case to query.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-request-uri-caseId API Reference
    #   @return [String]
    class ListCaseEditsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional string that, if supplied on subsequent calls to ListCaseEdits, allows the API to fetch the next page of results. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-response-nextToken API Response
    #   @return [String]
    # @!attribute items
    #   <p>Response element for ListCaseEdits that includes the action, event timestamp, message, and principal for the response. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-response-items API Reference
    #   @return [Array<Types::CaseEditItem>]
    # @!attribute total
    #   <p>Response element for ListCaseEdits that identifies the total number of edits.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-response-total API Reference
    #   @return [Integer]
    class ListCaseEditsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute case_id
    #   <p/>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-lastUpdatedDate API Response
    #   @return [Time]
    # @!attribute title
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-title API Response
    #   @return [String]
    # @!attribute case_arn
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-caseArn API Response
    #   @return [String]
    # @!attribute engagement_type
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-engagementType API Response
    #   @return [String]
    # @!attribute case_status
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-caseStatus API Response
    #   @return [String]
    # @!attribute created_date
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-createdDate API Response
    #   @return [Time]
    # @!attribute closed_date
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-closedDate API Response
    #   @return [Time]
    # @!attribute resolver_type
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-resolverType API Response
    #   @return [String]
    # @!attribute pending_action
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCasesItem.html#securityir-Type-ListCasesItem-pendingAction API Response
    #   @return [String]
    class ListCasesItem < Struct.new(
      nil,
      :case_id,
      :last_updated_date,
      :title,
      :case_arn,
      :engagement_type,
      :case_status,
      :created_date,
      :closed_date,
      :resolver_type,
      :pending_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous call to ListCases. When provided in this manner, the API fetches the next page of results. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html#securityir-ListCases-request-nextToken API Response
    #   @return [String]
    # @!attribute max_results
    #   <p>Optional element for ListCases to limit the number of responses.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html#securityir-ListCases-request-maxResults API Response
    #   @return [Integer]
    class ListCasesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional string that, if supplied on subsequent calls to ListCases, allows the API to fetch the next page of results. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCaseEdits.html#securityir-ListCaseEdits-response-nextToken API Response
    #   @return [String]
    # @!attribute items
    #   <p>Response element for ListCases that includes caseARN, caseID, caseStatus, closedDate, createdDate, engagementType, lastUpdatedDate, pendingAction, resolverType, and title for each response. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html#securityir-ListCases-response-items API Response
    #   @return [Array<Types::ListCasesItem>]
    # @!attribute total
    #   <p>Response element for ListCases providing the total number of responses.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCases.html#securityir-ListCases-response-total API Response
    #   @return [Integer]
    class ListCasesResponse < Struct.new(
      nil,
      :next_token,
      :items,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCommentsItem.html#securityir-Type-ListCommentsItem-commentId API Reference
    # @!attribute comment_id
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCommentsItem.html#securityir-Type-ListCommentsItem-commentId API Reference
    #   @return [String]
    # @!attribute created_date
    #   <p/>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p/>
    #   @return [Time]
    # @!attribute creator
    #   <p/>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p/>
    #   @return [String]
    # @!attribute body
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListCommentsItem.html#securityir-Type-ListCommentsItem-body API Reference
    #   @return [String]
    class ListCommentsItem < Struct.new(
      nil,
      :comment_id,
      :created_date,
      :last_updated_date,
      :creator,
      :last_updated_by,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous call to ListComments. When provided in this manner, the API fetches the next page of results. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-request-nextToken API Reference
    #   @return [String]
    # @!attribute max_results
    #   <p>Optional element for ListComments to limit the number of responses.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-request-maxResults API Reference
    #   @return [Integer]
    # @!attribute case_id
    #   <p>Required element for ListComments to designate the case to query.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-request-uri-caseId API Reference
    #   @return [String]
    class ListCommentsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional string that, if supplied on subsequent calls to ListComments, allows the API to fetch the next page of results. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-response-nextToken API Reference
    #   @return [String]
    # @!attribute items
    #   <p>Response element for ListComments providing the body, commentID, createDate, creator, lastUpdatedBy and lastUpdatedDate for each response. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-response-items API Reference
    #   @return [Array<Types::ListCommentsItem>]
    # @!attribute total
    #   <p>Response element for ListComments identifying the number of responses.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListComments.html#securityir-ListComments-response-total API Reference
    #   @return [Integer]
    class ListCommentsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-items API Reference
    # @!attribute membership_id
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMembershipItem.html#securityir-Type-ListMembershipItem-membershipId API Reference
    #   @return [String]
    # @!attribute account_id
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-accountId API Reference
    #   @return [String]
    # @!attribute region
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-region API Reference
    #   @return [String]
    # @!attribute membership_arn
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-membershipArn API Reference
    #   @return [String]
    # @!attribute membership_status
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-membershipStatus API Reference
    #   @return [String]
    class ListMembershipItem < Struct.new(
      nil,
      :membership_id,
      :account_id,
      :region,
      :membership_arn,
      :membership_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous call to ListMemberships. When provided in this manner, the API fetches the next page of results. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-request-nextToken API Reference
    #   @return [String]
    # @!attribute max_results
    #   <p>Request element for ListMemberships to limit the number of responses.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-request-maxResults API Reference
    #   @return [Integer]
    class ListMembershipsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional string that, if supplied on subsequent calls to ListMemberships, allows the API to fetch the next page of results. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-nextToken API Reference
    #   @return [String]
    # @!attribute items
    #   <p>Request element for ListMemberships including the accountID, membershipARN, membershipID, membershipStatus, and region for each response. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListMemberships.html#securityir-ListMemberships-response-items API Reference
    #   @return [Array<Types::ListMembershipItem>]
    class ListMembershipsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Required element for ListTagsForResource to provide the ARN to identify a specific resource.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListTagsForResource.html#securityir-ListTagsForResource-request-uri-resourceArn API Reference
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Response element for ListTagsForResource providing content for each configured tag.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_ListTagsForResource.html#securityir-ListTagsForResource-response-tags API Reference
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>MembershipAccountsConfigurations</code> structure defines the configuration settings for managing membership accounts withinAmazon Web Services. </p> <p>This structure contains settings that determine how member accounts are configured and managed within your organization, including: </p> <ul> <li> <p>Account configuration preferences</p> </li> <li> <p>Membership validation rules</p> </li> <li> <p>Account access settings</p> </li> </ul> <p>You can use this structure to define and maintain standardized configurations across multiple member accounts in your organization. </p>
    # @!attribute cover_entire_organization
    #   <p>The <code>coverEntireOrganization</code> field is a boolean value that determines whether the membership configuration applies to all accounts within an Amazon Web Services Organization. </p> <p>When set to <code>true</code>, the configuration will be applied across all accounts in the organization. When set to <code>false</code>, the configuration will only apply to specifically designated accounts under the AWS Organizational Units specificied. </p>
    #   @return [Boolean]
    # @!attribute organizational_units
    #   <p>A list of organizational unit IDs that follow the pattern <code>ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}</code>. These IDs represent the organizational units within an Amazon Web Services Organizations structure that are covered by the membership. </p> <p>Each organizational unit ID in the list must:</p> <ul> <li> <p>Begin with the prefix 'ou-'</p> </li> <li> <p>Contain between 4 and 32 alphanumeric characters in the first segment</p> </li> <li> <p>Contain between 8 and 32 alphanumeric characters in the second segment</p> </li> </ul>
    #   @return [Array<String>]
    class MembershipAccountsConfigurations < Struct.new(
      nil,
      :cover_entire_organization,
      :organizational_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>MembershipAccountsConfigurationsUpdate</code>structure represents the configuration updates for member accounts within an Amazon Web Services organization. </p> <p>This structure is used to modify existing account configurations and settings for members in the organization. When applying updates, ensure all required fields are properly specified to maintain account consistency. </p> <p>Key considerations when using this structure:</p> <ul> <li> <p>All configuration changes are validated before being applied</p> </li> <li> <p>Updates are processed asynchronously in the background</p> </li> <li> <p>Configuration changes may take several minutes to propagate across all affected accounts</p> </li> </ul>
    # @!attribute cover_entire_organization
    #   <p>The <code>coverEntireOrganization</code> field is a boolean value that determines whether the membership configuration should be applied across the entire Amazon Web Services Organization. </p> <p>When set to <code>true</code>, the configuration will be applied to all accounts within the organization. When set to <code>false</code>, the configuration will only apply to specifically designated accounts. </p>
    #   @return [Boolean]
    # @!attribute organizational_units_to_add
    #   <p>A list of organizational unit IDs to add to the membership configuration. Each organizational unit ID must match the pattern <code>ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}</code>. </p> <p>The list must contain between 1 and 5 organizational unit IDs.</p>
    #   @return [Array<String>]
    # @!attribute organizational_units_to_remove
    #   <p>A list of organizational unit IDs to remove from the membership configuration. Each organizational unit ID must match the pattern <code>ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}</code>. </p> <p>The list must contain between 1 and 5 organizational unit IDs per invocation of the API request.</p>
    #   @return [Array<String>]
    class MembershipAccountsConfigurationsUpdate < Struct.new(
      nil,
      :cover_entire_organization,
      :organizational_units_to_add,
      :organizational_units_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute feature_name
    #   <p/>
    #   @return [String]
    # @!attribute is_enabled
    #   <p/>
    #   @return [Boolean]
    class OptInFeature < Struct.new(
      nil,
      :feature_name,
      :is_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/CommonErrors.html API Reference
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class SecurityIncidentResponseNotActiveException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the requested resource which lead to the service quota exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the requested resource which lead to the service quota exception.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code of the quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Required element for TagResource to identify the ARN for the resource to add a tag to.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_TagResource.html#securityir-TagResource-request-uri-resourceArn API Reference
    #   @return [String]
    # @!attribute tags
    #   <p>Required element for ListTagsForResource to provide the content for a tag.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_TagResource.html#securityir-TagResource-request-tags API Reference
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_TagResource.html#API_TagResource_ResponseSyntax API Reference
    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute ip_address
    #   <p/>
    #   @return [String]
    # @!attribute user_agent
    #   <p/>
    #   @return [String]
    class ThreatActorIp < Struct.new(
      nil,
      :ip_address,
      :user_agent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the exception.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code of the exception.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds after which to retry the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Required element for UnTagResource to identify the ARN for the resource to remove a tag from.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UntagResource.html#securityir-UntagResource-request-uri-resourceArn API Reference
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Required element for UnTagResource to identify tag to remove.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UntagResource.html#securityir-UntagResource-request-uri-resourceArn API Reference
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UntagResource.html#API_UntagResource_ResponseSyntax API Reference
    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element for UpdateCaseComment to identify the case ID containing the comment to be updated. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-request-uri-caseId API Reference
    #   @return [String]
    # @!attribute comment_id
    #   <p>Required element for UpdateCaseComment to identify the case ID to be updated.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-request-uri-commentId API Reference
    #   @return [String]
    # @!attribute body
    #   <p>Required element for UpdateCaseComment to identify the content for the comment to be updated.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-request-body API Reference
    #   @return [String]
    class UpdateCaseCommentRequest < Struct.new(
      nil,
      :case_id,
      :comment_id,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment_id
    #   <p>Response element for UpdateCaseComment providing the updated comment ID.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-response-commentId API Reference
    #   @return [String]
    # @!attribute body
    #   <p>Response element for UpdateCaseComment providing the updated comment content.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseComment.html#securityir-UpdateCaseComment-response-body API Reference
    #   @return [String]
    class UpdateCaseCommentResponse < Struct.new(
      nil,
      :comment_id,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element for UpdateCase to identify the case ID for updates.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-uri-caseId API Reference
    #   @return [String]
    # @!attribute title
    #   <p>Optional element for UpdateCase to provide content for the title field.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-title API Reference
    #   @return [String]
    # @!attribute description
    #   <p>Optional element for UpdateCase to provide content for the description field.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-description API Reference
    #   @return [String]
    # @!attribute reported_incident_start_date
    #   <p>Optional element for UpdateCase to provide content for the customer reported incident start date field. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-reportedIncidentStartDate API Reference
    #   @return [Time]
    # @!attribute actual_incident_start_date
    #   <p>Optional element for UpdateCase to provide content for the incident start date field.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-actualIncidentStartDate API Reference
    #   @return [Time]
    # @!attribute engagement_type
    #   <p>Optional element for UpdateCase to provide content for the engagement type field. <code>Available engagement types include Security Incident | Investigation</code>. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-engagementType API Reference
    #   @return [String]
    # @!attribute watchers_to_add
    #   <p>Optional element for UpdateCase to provide content to add additional watchers to a case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-watchersToAdd API Reference
    #   @return [Array<Types::Watcher>]
    # @!attribute watchers_to_delete
    #   <p>Optional element for UpdateCase to provide content to remove existing watchers from a case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-watchersToDelete API Reference
    #   @return [Array<Types::Watcher>]
    # @!attribute threat_actor_ip_addresses_to_add
    #   <p>Optional element for UpdateCase to provide content to add additional suspicious IP addresses related to a case. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-threatActorIpAddressesToAdd API Reference
    #   @return [Array<Types::ThreatActorIp>]
    # @!attribute threat_actor_ip_addresses_to_delete
    #   <p>Optional element for UpdateCase to provide content to remove suspicious IP addresses from a case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-threatActorIpAddressesToDelete API Reference
    #   @return [Array<Types::ThreatActorIp>]
    # @!attribute impacted_services_to_add
    #   <p>Optional element for UpdateCase to provide content to add services impacted.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedServicesToAdd API Reference
    #   @return [Array<String>]
    # @!attribute impacted_services_to_delete
    #   <p>Optional element for UpdateCase to provide content to remove services impacted.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedServicesToDelete API Reference
    #   @return [Array<String>]
    # @!attribute impacted_aws_regions_to_add
    #   <p>Optional element for UpdateCase to provide content to add regions impacted.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedAwsRegionsToAdd API Reference
    #   @return [Array<Types::ImpactedAwsRegion>]
    # @!attribute impacted_aws_regions_to_delete
    #   <p>Optional element for UpdateCase to provide content to remove regions impacted.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedAwsRegionsToDelete API Reference
    #   @return [Array<Types::ImpactedAwsRegion>]
    # @!attribute impacted_accounts_to_add
    #   <p>Optional element for UpdateCase to provide content to add accounts impacted.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedAccountsToAdd API Reference
    #   @return [Array<String>]
    # @!attribute impacted_accounts_to_delete
    #   <p>Optional element for UpdateCase to provide content to add accounts impacted.</p> <note> <p> AWS account ID's may appear less than 12 characters and need to be zero-prepended. An example would be <code>123123123</code> which is nine digits, and with zero-prepend would be <code>000123123123</code>. Not zero-prepending to 12 digits could result in errors. </p> </note>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCase.html#securityir-UpdateCase-request-impactedAccountsToDelete API Reference
    #   @return [Array<String>]
    class UpdateCaseRequest < Struct.new(
      nil,
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
      :impacted_accounts_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCaseResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element for UpdateCaseStatus to identify the case to update.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseStatus.html#securityir-UpdateCaseStatus-request-uri-caseId API Reference
    #   @return [String]
    # @!attribute case_status
    #   <p>Required element for UpdateCaseStatus to identify the status for a case. Options include <code>Submitted | Detection and Analysis | Containment, Eradication and Recovery | Post-incident Activities</code>. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseStatus.html#securityir-UpdateCaseStatus-request-caseStatus API Reference
    #   @return [String]
    class UpdateCaseStatusRequest < Struct.new(
      nil,
      :case_id,
      :case_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_status
    #   <p>Response element for UpdateCaseStatus showing the newly configured status.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateCaseStatus.html#securityir-UpdateCaseStatus-response-caseStatus API Reference
    #   @return [String]
    class UpdateCaseStatusResponse < Struct.new(
      nil,
      :case_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_id
    #   <p>Required element for UpdateMembership to identify the membership to update.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-uri-membershipId API Reference
    #   @return [String]
    # @!attribute membership_name
    #   <p>Optional element for UpdateMembership to update the membership name.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-membershipName API Reference
    #   @return [String]
    # @!attribute incident_response_team
    #   <p>Optional element for UpdateMembership to update the membership name.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-incidentResponseTeam API Reference
    #   @return [Array<Types::IncidentResponder>]
    # @!attribute opt_in_features
    #   <p>Optional element for UpdateMembership to enable or disable opt-in features for the service.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-optInFeatures API Reference
    #   @return [Array<Types::OptInFeature>]
    # @!attribute membership_accounts_configurations_update
    #   <p>The <code>membershipAccountsConfigurationsUpdate</code> field in the <code>UpdateMembershipRequest</code> structure allows you to update the configuration settings for accounts within a membership. </p> <p>This field is optional and contains a structure of type <code>MembershipAccountsConfigurationsUpdate </code> that specifies the updated account configurations for the membership. </p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-membershipAccountsConfigurationsUpdate API Reference
    #   @return [Types::MembershipAccountsConfigurationsUpdate]
    # @!attribute undo_membership_cancellation
    #   <p>The <code>undoMembershipCancellation</code> parameter is a boolean flag that indicates whether to reverse a previously requested membership cancellation. When set to true, this will revoke the cancellation request and maintain the membership status. </p> <p>This parameter is optional and can be used in scenarios where you need to restore a membership that was marked for cancellation but hasn't been fully terminated yet. </p> <ul> <li> <p>If set to <code>true</code>, the cancellation request will be revoked </p> </li> <li> <p>If set to <code>false</code> the service will throw a ValidationException. </p> </li> </ul>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateMembership.html#securityir-UpdateMembership-request-undoMembershipCancellation API Reference
    #   @return [Boolean]
    class UpdateMembershipRequest < Struct.new(
      nil,
      :membership_id,
      :membership_name,
      :incident_response_team,
      :opt_in_features,
      :membership_accounts_configurations_update,
      :undo_membership_cancellation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateMembershipResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Required element for UpdateResolverType to identify the case to update.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-request-uri-caseId API Reference
    #   @return [String]
    # @!attribute resolver_type
    #   <p>Required element for UpdateResolverType to identify the new resolver.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-request-resolverType API Reference
    #   @return [String]
    class UpdateResolverTypeRequest < Struct.new(
      nil,
      :case_id,
      :resolver_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>Response element for UpdateResolver identifying the case ID being updated.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-response-caseId API Response
    #   @return [String]
    # @!attribute case_status
    #   <p>Response element for UpdateResolver identifying the current status of the case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-response-caseStatus API Response
    #   @return [String]
    # @!attribute resolver_type
    #   <p>Response element for UpdateResolver identifying the current resolver of the case.</p>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_UpdateResolverType.html#securityir-UpdateResolverType-response-resolverType API Response
    #   @return [String]
    class UpdateResolverTypeResponse < Struct.new(
      nil,
      :case_id,
      :case_status,
      :resolver_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The fields which lead to the exception.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute name
    #   <p/>
    #   @return [String]
    # @!attribute message
    #   <p/>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_Watcher.html API Reference
    # @!attribute email
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_Watcher.html#securityir-Type-Watcher-email API Reference
    #   @return [String]
    # @!attribute name
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_Watcher.html#securityir-Type-Watcher-name API Reference
    #   @return [String]
    # @!attribute job_title
    #   <p/>
    #   @see https://docs.aws.amazon.com/security-ir/latest/APIReference/API_Watcher.html#securityir-Type-Watcher-jobTitle API Reference
    #   @return [String]
    class Watcher < Struct.new(
      nil,
      :email,
      :name,
      :job_title,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
