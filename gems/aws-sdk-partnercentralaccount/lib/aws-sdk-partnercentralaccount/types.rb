# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralAccount
  # This module contains the types returned by client operations.
  module Types

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the connection invitation to accept.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class AcceptConnectionInvitationRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>The details of the accepted connection between the two partners.</p>
    #   @return [Types::Connection]
    class AcceptConnectionInvitationResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to insufficient permissions. The caller does not have the required permissions to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The specific reason for the access denial.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an AWS account.</p>
    # @!attribute name
    #   <p>The name associated with the AWS account.</p>
    #   @return [String]
    class AccountSummary < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains contact information for the primary alliance lead responsible for partnership activities.</p>
    # @!attribute first_name
    #   <p>The first name of the alliance lead contact person.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name of the alliance lead contact person.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the alliance lead contact person.</p>
    #   @return [String]
    # @!attribute business_title
    #   <p>The business title or role of the alliance lead contact person.</p>
    #   @return [String]
    class AllianceLeadContact < Struct.new(
      nil,
      :first_name,
      :last_name,
      :email,
      :business_title,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address used to verify domain ownership for AWS training and certification association.</p>
    #   @return [String]
    # @!attribute email_verification_code
    #   <p>The verification code sent to the email address to confirm domain ownership.</p>
    #   @return [String]
    class AssociateAwsTrainingCertificationEmailDomainRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      :email,
      :email_verification_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateAwsTrainingCertificationEmailDomainResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a business rule validation error that occurred during an operation.</p>
    # @!attribute message
    #   <p>A description of the business validation error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>A code identifying the specific business validation error.</p>
    #   @return [String]
    class BusinessValidationError < Struct.new(
      nil,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the business information required for verifying a company's legal status and registration details within AWS Partner Central.</p>
    # @!attribute legal_name
    #   <p>The official legal name of the business as registered with the appropriate government authorities.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique business registration identifier assigned by the government or regulatory authority, such as a company registration number or tax identification number.</p>
    #   @return [String]
    # @!attribute country_code
    #   <p>The ISO 3166-1 alpha-2 country code where the business is legally registered and operates.</p>
    #   @return [String]
    # @!attribute jurisdiction_of_incorporation
    #   <p>The specific legal jurisdiction or state where the business was incorporated or registered, providing additional location context beyond the country code.</p>
    #   @return [String]
    class BusinessVerificationDetails < Struct.new(
      nil,
      :legal_name,
      :registration_id,
      :country_code,
      :jurisdiction_of_incorporation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response information and results from a business verification process, including any verification-specific data returned by the verification service.</p>
    # @!attribute business_verification_details
    #   <p>The business verification details that were processed and verified, potentially including additional information discovered during the verification process.</p>
    #   @return [Types::BusinessVerificationDetails]
    # @!attribute completion_url
    #   <p>A secure URL where the registrant can complete additional verification steps, such as document upload or identity confirmation through a third-party verification service.</p>
    #   @return [String]
    # @!attribute completion_url_expires_at
    #   <p>The timestamp when the completion URL expires and is no longer valid for accessing the verification workflow.</p>
    #   @return [Time]
    class BusinessVerificationResponse < Struct.new(
      nil,
      :business_verification_details,
      :completion_url,
      :completion_url_expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the connection invitation to cancel.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class CancelConnectionInvitationRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation was canceled.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the canceled connection invitation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the canceled connection invitation.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The identifier of the connection associated with the canceled invitation.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection that was being invited for.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the connection invitation was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the connection invitation was last updated (canceled).</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The timestamp when the connection invitation would have expired if not canceled.</p>
    #   @return [Time]
    # @!attribute other_participant_identifier
    #   <p>The identifier of the other participant who was invited to connect.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>The type of participant (inviter or invitee) in the connection invitation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the connection invitation (canceled).</p>
    #   @return [String]
    # @!attribute invitation_message
    #   <p>The message that was included with the original connection invitation.</p>
    #   @return [String]
    # @!attribute inviter_email
    #   <p>The email address of the person who sent the connection invitation.</p>
    #   @return [String]
    # @!attribute inviter_name
    #   <p>The name of the person who sent the connection invitation.</p>
    #   @return [String]
    class CancelConnectionInvitationResponse < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :connection_id,
      :connection_type,
      :created_at,
      :updated_at,
      :expires_at,
      :other_participant_identifier,
      :participant_type,
      :status,
      :invitation_message,
      :inviter_email,
      :inviter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the connection to cancel.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection to cancel (e.g., reseller, distributor, technology partner).</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for canceling the connection, providing context for the termination.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class CancelConnectionRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :connection_type,
      :reason,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection was canceled.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the canceled connection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the canceled connection.</p>
    #   @return [String]
    # @!attribute other_participant_account_id
    #   <p>The AWS account ID of the other participant in the canceled connection.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the connection was last updated (canceled).</p>
    #   @return [Time]
    # @!attribute connection_types
    #   <p>The list of connection types that were active before cancellation.</p>
    #   @return [Hash<String, Types::ConnectionTypeDetail>]
    class CancelConnectionResponse < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :other_participant_account_id,
      :updated_at,
      :connection_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the profile update task to cancel.</p>
    #   @return [String]
    class CancelProfileUpdateTaskRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the canceled profile update task.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the canceled profile update task.</p>
    #   @return [String]
    # @!attribute task_details
    #   <p>The details of the profile update task that was canceled.</p>
    #   @return [Types::TaskDetails]
    # @!attribute started_at
    #   <p>The timestamp when the profile update task was started.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the profile update task (canceled).</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The timestamp when the profile update task was ended (canceled).</p>
    #   @return [Time]
    # @!attribute error_detail_list
    #   <p>A list of error details if any errors occurred during the profile update task.</p>
    #   @return [Array<Types::ErrorDetail>]
    class CancelProfileUpdateTaskResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :task_id,
      :task_details,
      :started_at,
      :status,
      :ended_at,
      :error_detail_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource. This typically occurs when trying to create a resource that already exists or modify a resource that has been changed by another process.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The specific reason for the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Base structure containing common connection properties.</p>
    # @!attribute catalog
    #   <p>The catalog identifier that the connection belongs to.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the connection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The AWS Resource Name (ARN) of the connection.</p>
    #   @return [String]
    # @!attribute other_participant_account_id
    #   <p>The AWS account ID of the other participant in the connection.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the connection was last updated.</p>
    #   @return [Time]
    # @!attribute connection_types
    #   <p>The type of connection.</p>
    #   @return [Hash<String, Types::ConnectionTypeDetail>]
    class Connection < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :other_participant_account_id,
      :updated_at,
      :connection_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary view of a connection invitation containing key information without full details.</p>
    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the connection invitation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connection invitation.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The identifier of the connection associated with this invitation.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection being requested in the invitation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the connection invitation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the connection invitation was last updated.</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The timestamp when the connection invitation will expire.</p>
    #   @return [Time]
    # @!attribute other_participant_identifier
    #   <p>The identifier of the other participant in the connection invitation.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>The type of participant (inviter or invitee) in the connection invitation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the connection invitation.</p>
    #   @return [String]
    class ConnectionInvitationSummary < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :connection_id,
      :connection_type,
      :created_at,
      :updated_at,
      :expires_at,
      :other_participant_identifier,
      :participant_type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary view of an active connection between partners containing key information.</p>
    # @!attribute catalog
    #   <p>The catalog identifier where the connection exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the connection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connection.</p>
    #   @return [String]
    # @!attribute other_participant_account_id
    #   <p>The AWS account ID of the other participant in the connection.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the connection was last updated.</p>
    #   @return [Time]
    # @!attribute connection_types
    #   <p>A map of connection types and their summary information for this connection.</p>
    #   @return [Hash<String, Types::ConnectionTypeSummary>]
    class ConnectionSummary < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :other_participant_account_id,
      :updated_at,
      :connection_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about a specific connection type within a connection.</p>
    # @!attribute created_at
    #   <p>The timestamp when this connection type was created.</p>
    #   @return [Time]
    # @!attribute inviter_email
    #   <p>The email address of the person who initiated this connection type.</p>
    #   @return [String]
    # @!attribute inviter_name
    #   <p>The name of the person who initiated this connection type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of this connection type.</p>
    #   @return [String]
    # @!attribute canceled_at
    #   <p>The timestamp when this connection type was cancelled, if applicable.</p>
    #   @return [Time]
    # @!attribute canceled_by
    #   <p>The AWS account ID of the participant who cancelled this connection type.</p>
    #   @return [String]
    # @!attribute other_participant
    #   <p>Information about the other participant in this connection type.</p>
    #   @return [Types::Participant]
    class ConnectionTypeDetail < Struct.new(
      nil,
      :created_at,
      :inviter_email,
      :inviter_name,
      :status,
      :canceled_at,
      :canceled_by,
      :other_participant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a specific connection type between partners.</p>
    # @!attribute status
    #   <p>The current status of this connection type (active, canceled, etc.).</p>
    #   @return [String]
    # @!attribute other_participant
    #   <p>Information about the other participant in this connection type.</p>
    #   @return [Types::Participant]
    class ConnectionTypeSummary < Struct.new(
      nil,
      :status,
      :other_participant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation will be created.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection being requested (e.g., reseller, distributor, technology partner).</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the person to send the connection invitation to.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A custom message to include with the connection invitation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the person sending the connection invitation.</p>
    #   @return [String]
    # @!attribute receiver_identifier
    #   <p>The identifier of the organization or partner to invite for connection.</p>
    #   @return [String]
    class CreateConnectionInvitationRequest < Struct.new(
      nil,
      :catalog,
      :client_token,
      :connection_type,
      :email,
      :message,
      :name,
      :receiver_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation was created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the created connection invitation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created connection invitation.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The identifier of the connection associated with this invitation.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection being requested in the invitation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the connection invitation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the connection invitation was last updated.</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The timestamp when the connection invitation will expire if not responded to.</p>
    #   @return [Time]
    # @!attribute other_participant_identifier
    #   <p>The identifier of the organization or partner being invited.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>The type of participant (inviter or invitee) in the connection invitation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the connection invitation (pending, accepted, rejected, etc.).</p>
    #   @return [String]
    # @!attribute invitation_message
    #   <p>The custom message included with the connection invitation.</p>
    #   @return [String]
    # @!attribute inviter_email
    #   <p>The email address of the person who sent the connection invitation.</p>
    #   @return [String]
    # @!attribute inviter_name
    #   <p>The name of the person who sent the connection invitation.</p>
    #   @return [String]
    class CreateConnectionInvitationResponse < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :connection_id,
      :connection_type,
      :created_at,
      :updated_at,
      :expires_at,
      :other_participant_identifier,
      :participant_type,
      :status,
      :invitation_message,
      :inviter_email,
      :inviter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the partner account will be created.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute legal_name
    #   <p>The legal name of the organization becoming a partner.</p>
    #   @return [String]
    # @!attribute primary_solution_type
    #   <p>The primary type of solution or service the partner provides (e.g., consulting, software, managed services).</p>
    #   @return [String]
    # @!attribute alliance_lead_contact
    #   <p>The primary contact person for alliance and partnership matters.</p>
    #   @return [Types::AllianceLeadContact]
    # @!attribute email_verification_code
    #   <p>The verification code sent to the alliance lead contact's email to confirm account creation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to associate with the partner account for organization and billing purposes.</p>
    #   @return [Array<Types::Tag>]
    class CreatePartnerRequest < Struct.new(
      nil,
      :catalog,
      :client_token,
      :legal_name,
      :primary_solution_type,
      :alliance_lead_contact,
      :email_verification_code,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the partner account was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created partner account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the created partner account.</p>
    #   @return [String]
    # @!attribute legal_name
    #   <p>The legal name of the partner organization.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the partner account was created.</p>
    #   @return [Time]
    # @!attribute profile
    #   <p>The partner profile information including display name, description, and other public details.</p>
    #   @return [Types::PartnerProfile]
    # @!attribute aws_training_certification_email_domains
    #   <p>The list of verified email domains associated with AWS training and certification credentials for the partner organization.</p>
    #   @return [Array<Types::PartnerDomain>]
    # @!attribute alliance_lead_contact
    #   <p>The alliance lead contact information for the partner account.</p>
    #   @return [Types::AllianceLeadContact]
    class CreatePartnerResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :legal_name,
      :created_at,
      :profile,
      :aws_training_certification_email_domains,
      :alliance_lead_contact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name to disassociate from AWS training and certification.</p>
    #   @return [String]
    class DisassociateAwsTrainingCertificationEmailDomainRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateAwsTrainingCertificationEmailDomainResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about an error that occurred during an operation.</p>
    # @!attribute locale
    #   <p>The locale or language code for the error message.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A machine-readable code or reason for the error.</p>
    #   @return [String]
    class ErrorDetail < Struct.new(
      nil,
      :locale,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a field-level validation error that occurred during an operation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the field validation error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>A code identifying the specific field validation error.</p>
    #   @return [String]
    class FieldValidationError < Struct.new(
      nil,
      :name,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    class GetAllianceLeadContactRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the partner account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute alliance_lead_contact
    #   <p>The alliance lead contact information including name, email, and business title.</p>
    #   @return [Types::AllianceLeadContact]
    class GetAllianceLeadContactResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :alliance_lead_contact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the connection invitation to retrieve.</p>
    #   @return [String]
    class GetConnectionInvitationRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the connection invitation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connection invitation.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The identifier of the connection associated with this invitation.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection being requested in the invitation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the connection invitation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the connection invitation was last updated.</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The timestamp when the connection invitation will expire.</p>
    #   @return [Time]
    # @!attribute other_participant_identifier
    #   <p>The identifier of the other participant in the connection invitation.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>The type of participant (inviter or invitee) in the connection invitation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the connection invitation.</p>
    #   @return [String]
    # @!attribute invitation_message
    #   <p>The custom message included with the connection invitation.</p>
    #   @return [String]
    # @!attribute inviter_email
    #   <p>The email address of the person who sent the connection invitation.</p>
    #   @return [String]
    # @!attribute inviter_name
    #   <p>The name of the person who sent the connection invitation.</p>
    #   @return [String]
    class GetConnectionInvitationResponse < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :connection_id,
      :connection_type,
      :created_at,
      :updated_at,
      :expires_at,
      :other_participant_identifier,
      :participant_type,
      :status,
      :invitation_message,
      :inviter_email,
      :inviter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    class GetConnectionPreferencesRequest < Struct.new(
      nil,
      :catalog,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connection preferences.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>The access type setting for connections (e.g., open, restricted, invitation-only).</p>
    #   @return [String]
    # @!attribute excluded_participant_ids
    #   <p>A list of participant IDs that are excluded from connection requests or interactions.</p>
    #   @return [Array<String>]
    # @!attribute updated_at
    #   <p>The timestamp when the connection preferences were last updated.</p>
    #   @return [Time]
    # @!attribute revision
    #   <p>The revision number of the connection preferences for optimistic locking.</p>
    #   @return [Integer]
    class GetConnectionPreferencesResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :access_type,
      :excluded_participant_ids,
      :updated_at,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the connection to retrieve.</p>
    #   @return [String]
    class GetConnectionRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection exists.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the connection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connection.</p>
    #   @return [String]
    # @!attribute other_participant_account_id
    #   <p>The AWS account ID of the other participant in the connection.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the connection was last updated.</p>
    #   @return [Time]
    # @!attribute connection_types
    #   <p>The list of connection types active between the partners.</p>
    #   @return [Hash<String, Types::ConnectionTypeDetail>]
    class GetConnectionResponse < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :other_participant_account_id,
      :updated_at,
      :connection_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account to retrieve.</p>
    #   @return [String]
    class GetPartnerRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the partner account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute legal_name
    #   <p>The legal name of the partner organization.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the partner account was created.</p>
    #   @return [Time]
    # @!attribute profile
    #   <p>The partner profile information including display name, description, and other public details.</p>
    #   @return [Types::PartnerProfile]
    # @!attribute aws_training_certification_email_domains
    #   <p>The list of verified email domains associated with AWS training and certification credentials for the partner organization.</p>
    #   @return [Array<Types::PartnerDomain>]
    class GetPartnerResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :legal_name,
      :created_at,
      :profile,
      :aws_training_certification_email_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    class GetProfileUpdateTaskRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the profile update task.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the profile update task.</p>
    #   @return [String]
    # @!attribute task_details
    #   <p>The details of the profile update task including what changes are being made.</p>
    #   @return [Types::TaskDetails]
    # @!attribute started_at
    #   <p>The timestamp when the profile update task was started.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the profile update task (in progress, completed, failed, etc.).</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The timestamp when the profile update task was completed or failed.</p>
    #   @return [Time]
    # @!attribute error_detail_list
    #   <p>A list of error details if any errors occurred during the profile update task.</p>
    #   @return [Array<Types::ErrorDetail>]
    class GetProfileUpdateTaskResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :task_id,
      :task_details,
      :started_at,
      :status,
      :ended_at,
      :error_detail_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    class GetProfileVisibilityRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the partner account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility setting for the partner profile (public, private, restricted, etc.).</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of the partner profile.</p>
    #   @return [String]
    class GetProfileVisibilityResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :visibility,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which to look up the qualifications association. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    #   @return [String]
    class GetQualificationsAssociationDetailsRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier echoed from the request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies your partner resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Your unique partner identifier in the AWS Partner Network.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current qualifications association status. Valid values: <code>ASSOCIATED</code> (the partner is associated with a primary), <code>NOT_ASSOCIATED</code> (the partner has no active association).</p>
    #   @return [String]
    # @!attribute primary_partner
    #   <p>The primary partner's profile and account identifiers. This field is null when the status is <code>NOT_ASSOCIATED</code>.</p>
    #   @return [Types::QualificationsAssociationPartner]
    # @!attribute associated_partners
    #   <p>The list of all partner profile and account identifiers currently associated under the primary partner. This field is null when the status is <code>NOT_ASSOCIATED</code>.</p>
    #   @return [Array<Types::QualificationsAssociationPartner>]
    # @!attribute updated_at
    #   <p>The timestamp when the qualifications association was last updated, in ISO 8601 format. This field is null when the status is <code>NOT_ASSOCIATED</code>.</p>
    #   @return [Time]
    class GetQualificationsAssociationDetailsResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :status,
      :primary_partner,
      :associated_partners,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which to look up the qualifications association task. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    #   @return [String]
    class GetQualificationsAssociationTaskRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier echoed from the request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies your partner resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Your unique partner identifier in the AWS Partner Network.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the qualifications association task, in the format <code>pqatask-[a-z2-7]{13}</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the qualifications association task. Valid values: <code>IN_PROGRESS</code>, <code>SUCCEEDED</code>.</p>
    #   @return [String]
    # @!attribute primary_partner
    #   <p>The primary partner's profile and account identifiers that the task is associating qualifications with.</p>
    #   @return [Types::QualificationsAssociationPartner]
    # @!attribute started_at
    #   <p>The timestamp when the qualifications association task started, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the qualifications association task ended, in ISO 8601 format. This field is present only when the status is <code>SUCCEEDED</code>.</p>
    #   @return [Time]
    class GetQualificationsAssociationTaskResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :task_id,
      :status,
      :primary_partner,
      :started_at,
      :ended_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which to look up the qualifications disassociation task. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    #   @return [String]
    class GetQualificationsDisassociationTaskRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier echoed from the request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies your partner resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Your unique partner identifier in the AWS Partner Network.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the qualifications disassociation task, in the format <code>pqdtask-[a-z2-7]{13}</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the qualifications disassociation task. Valid values: <code>IN_PROGRESS</code>, <code>SUCCEEDED</code>.</p>
    #   @return [String]
    # @!attribute associated_partner
    #   <p>The primary partner's profile and account identifiers that the task is disassociating qualifications from.</p>
    #   @return [Types::QualificationsAssociationPartner]
    # @!attribute started_at
    #   <p>The timestamp when the qualifications disassociation task started, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the qualifications disassociation task ended, in ISO 8601 format. This field is present only when the status is <code>SUCCEEDED</code>.</p>
    #   @return [Time]
    class GetQualificationsDisassociationTaskResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :task_id,
      :status,
      :associated_partner,
      :started_at,
      :ended_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verification_type
    #   <p>The type of verification to retrieve information for. Valid values include business verification for company registration details and registrant verification for individual identity confirmation.</p>
    #   @return [String]
    class GetVerificationRequest < Struct.new(
      nil,
      :verification_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verification_type
    #   <p>The type of verification that was requested and processed.</p>
    #   @return [String]
    # @!attribute verification_status
    #   <p>The current status of the verification process. Possible values include pending, in-progress, completed, failed, or expired.</p>
    #   @return [String]
    # @!attribute verification_status_reason
    #   <p>Additional information explaining the current verification status, particularly useful when the status indicates a failure or requires additional action.</p>
    #   @return [String]
    # @!attribute verification_response_details
    #   <p>Detailed response information specific to the type of verification performed, including any verification-specific data or results.</p>
    #   @return [Types::VerificationResponseDetails]
    # @!attribute started_at
    #   <p>The timestamp when the verification process was initiated.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The timestamp when the verification process was completed. This field is null if the verification is still in progress.</p>
    #   @return [Time]
    class GetVerificationResponse < Struct.new(
      nil,
      :verification_type,
      :verification_status,
      :verification_status_reason,
      :verification_response_details,
      :started_at,
      :completed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the partner's headquarters location using International Organization for Standardization (ISO) 3166 country and subdivision codes.</p>
    # @!attribute country_code
    #   <p>The ISO 3166-1 alpha-2 country code of the partner's headquarters. For example, <code>US</code>, <code>BR</code>, or <code>DE</code>.</p>
    #   @return [String]
    # @!attribute subdivision_code
    #   <p>The subdivision portion of the ISO 3166-2 code for the partner's headquarters (for example, <code>SP</code> from <code>BR-SP</code>, <code>NSW</code> from <code>AU-NSW</code>, or <code>13</code> from <code>JP-13</code>).</p>
    #   @return [String]
    class Headquarters < Struct.new(
      nil,
      :country_code,
      :subdivision_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred while processing the request. This is typically a temporary condition and the request may be retried.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results in paginated responses.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>Filter results by connection type (e.g., reseller, distributor, technology partner).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of connection invitations to return in a single response.</p>
    #   @return [Integer]
    # @!attribute other_participant_identifiers
    #   <p>Filter results by specific participant identifiers.</p>
    #   @return [Array<String>]
    # @!attribute participant_type
    #   <p>Filter results by participant type (inviter or invitee).</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter results by invitation status (pending, accepted, rejected, canceled, expired).</p>
    #   @return [String]
    class ListConnectionInvitationsRequest < Struct.new(
      nil,
      :catalog,
      :next_token,
      :connection_type,
      :max_results,
      :other_participant_identifiers,
      :participant_type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_invitation_summaries
    #   <p>A list of connection invitation summaries matching the specified criteria.</p>
    #   @return [Array<Types::ConnectionInvitationSummary>]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results if more results are available.</p>
    #   @return [String]
    class ListConnectionInvitationsResponse < Struct.new(
      nil,
      :connection_invitation_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results in paginated responses.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>Filter results by connection type (e.g., reseller, distributor, technology partner).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of connections to return in a single response.</p>
    #   @return [Integer]
    # @!attribute other_participant_identifiers
    #   <p>Filter results by specific participant identifiers.</p>
    #   @return [Array<String>]
    class ListConnectionsRequest < Struct.new(
      nil,
      :catalog,
      :next_token,
      :connection_type,
      :max_results,
      :other_participant_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_summaries
    #   <p>A list of connection summaries matching the specified criteria.</p>
    #   @return [Array<Types::ConnectionSummary>]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results if more results are available.</p>
    #   @return [String]
    class ListConnectionsResponse < Struct.new(
      nil,
      :connection_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier to list partners from.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results in paginated responses.</p>
    #   @return [String]
    class ListPartnersRequest < Struct.new(
      nil,
      :catalog,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partner_summary_list
    #   <p>A list of partner summaries including basic information about each partner account.</p>
    #   @return [Array<Types::PartnerSummary>]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results if more results are available.</p>
    #   @return [String]
    class ListPartnersResponse < Struct.new(
      nil,
      :partner_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that the tags are associated with.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags associated with the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains localized content for a partner profile in a specific language or locale.</p>
    # @!attribute display_name
    #   <p>The localized display name for the partner.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The localized description of the partner's business and services.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>The localized website URL for the partner.</p>
    #   @return [String]
    # @!attribute logo_url
    #   <p>The URL to the partner's logo image for this locale.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale or language code for the localized content.</p>
    #   @return [String]
    class LocalizedContent < Struct.new(
      nil,
      :display_name,
      :description,
      :website_url,
      :logo_url,
      :locale,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a participant in a partner connection, containing their profile and account information.</p>
    # @!attribute partner_profile
    #   <p>The partner profile information for the participant.</p>
    #   @return [Types::PartnerProfileSummary]
    # @!attribute seller_profile
    #   <p>The seller profile information for the participant.</p>
    #   @return [Types::SellerProfileSummary]
    # @!attribute account
    #   <p>The AWS account information for the participant.</p>
    #   @return [Types::AccountSummary]
    class Participant < Struct.new(
      :partner_profile,
      :seller_profile,
      :account,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PartnerProfile < Participant; end
      class SellerProfile < Participant; end
      class Account < Participant; end
      class Unknown < Participant; end
    end

    # <p>Represents a verified domain associated with a partner account.</p>
    # @!attribute domain_name
    #   <p>The domain name that has been verified for the partner account.</p>
    #   @return [String]
    # @!attribute registered_at
    #   <p>The timestamp when the domain was registered and verified for the partner account.</p>
    #   @return [Time]
    class PartnerDomain < Struct.new(
      nil,
      :domain_name,
      :registered_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains comprehensive profile information for a partner including public-facing details.</p>
    # @!attribute display_name
    #   <p>The public display name for the partner organization.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the partner's business, services, and capabilities.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>The partner's primary website URL.</p>
    #   @return [String]
    # @!attribute logo_url
    #   <p>The URL to the partner's logo image.</p>
    #   @return [String]
    # @!attribute primary_solution_type
    #   <p>The primary type of solution or service the partner provides.</p>
    #   @return [String]
    # @!attribute industry_segments
    #   <p>The industry segments or verticals that the partner serves.</p>
    #   @return [Array<String>]
    # @!attribute translation_source_locale
    #   <p>The source locale used for automatic translation of profile content.</p>
    #   @return [String]
    # @!attribute localized_contents
    #   <p>A list of localized content versions for different languages and regions.</p>
    #   @return [Array<Types::LocalizedContent>]
    # @!attribute headquarters
    #   <p>The ISO 3166 country and subdivision codes for the partner's headquarters location. If no headquarters location is set, this field is not included in the response.</p>
    #   @return [Types::Headquarters]
    # @!attribute profile_id
    #   <p>The unique identifier of the partner profile.</p>
    #   @return [String]
    class PartnerProfile < Struct.new(
      nil,
      :display_name,
      :description,
      :website_url,
      :logo_url,
      :primary_solution_type,
      :industry_segments,
      :translation_source_locale,
      :localized_contents,
      :headquarters,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary view of a partner profile containing basic identifying information.</p>
    # @!attribute id
    #   <p>The unique identifier of the partner profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the partner.</p>
    #   @return [String]
    class PartnerProfileSummary < Struct.new(
      nil,
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary view of a partner account containing basic information for listing purposes.</p>
    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the partner account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute legal_name
    #   <p>The legal name of the partner organization.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the partner account was created.</p>
    #   @return [Time]
    class PartnerSummary < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :legal_name,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute alliance_lead_contact
    #   <p>The alliance lead contact information to set for the partner account.</p>
    #   @return [Types::AllianceLeadContact]
    # @!attribute email_verification_code
    #   <p>The verification code sent to the alliance lead contact's email to confirm the update.</p>
    #   @return [String]
    class PutAllianceLeadContactRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :alliance_lead_contact,
      :email_verification_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the partner account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute alliance_lead_contact
    #   <p>The updated alliance lead contact information.</p>
    #   @return [Types::AllianceLeadContact]
    class PutAllianceLeadContactResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :alliance_lead_contact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility setting to apply to the partner profile.</p>
    #   @return [String]
    class PutProfileVisibilityRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the partner account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The updated visibility setting for the partner profile.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of the partner profile.</p>
    #   @return [String]
    class PutProfileVisibilityResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :visibility,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a partner in a qualifications association group. Contains the partner's profile identifier and AWS account identifier. In requests, provide at least one of <code>ProfileId</code> or <code>AccountId</code>. In responses, both fields are populated.</p>
    # @!attribute profile_id
    #   <p>The unique identifier for the partner profile, in the format <code>pprofile-*</code>. Required in requests if <code>AccountId</code> is not provided.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The 12-digit AWS account ID linked to the partner profile. Required in requests if <code>ProfileId</code> is not provided.</p>
    #   @return [String]
    class QualificationsAssociationPartner < Struct.new(
      nil,
      :profile_id,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the personal information required for verifying an individual's identity as part of the partner registration process in AWS Partner Central.</p>
    class RegistrantVerificationDetails < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response information from a registrant verification process, including any verification-specific data and next steps for the individual verification workflow.</p>
    # @!attribute completion_url
    #   <p>A secure URL where the registrant can complete additional verification steps, such as document upload or identity confirmation through a third-party verification service.</p>
    #   @return [String]
    # @!attribute completion_url_expires_at
    #   <p>The timestamp when the completion URL expires and is no longer valid for accessing the verification workflow.</p>
    #   @return [Time]
    class RegistrantVerificationResponse < Struct.new(
      nil,
      :completion_url,
      :completion_url_expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the connection invitation to reject.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for rejecting the connection invitation.</p>
    #   @return [String]
    class RejectConnectionInvitationRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier where the connection invitation was rejected.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the rejected connection invitation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rejected connection invitation.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The identifier of the connection associated with the rejected invitation.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection that was being invited for.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the connection invitation was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the connection invitation was last updated (rejected).</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The timestamp when the connection invitation would have expired.</p>
    #   @return [Time]
    # @!attribute other_participant_identifier
    #   <p>The identifier of the other participant who sent the invitation.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>The type of participant (inviter or invitee) in the connection invitation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the connection invitation (rejected).</p>
    #   @return [String]
    # @!attribute invitation_message
    #   <p>The message that was included with the original connection invitation.</p>
    #   @return [String]
    # @!attribute inviter_email
    #   <p>The email address of the person who sent the connection invitation.</p>
    #   @return [String]
    # @!attribute inviter_name
    #   <p>The name of the person who sent the connection invitation.</p>
    #   @return [String]
    class RejectConnectionInvitationResponse < Struct.new(
      nil,
      :catalog,
      :id,
      :arn,
      :connection_id,
      :connection_type,
      :created_at,
      :updated_at,
      :expires_at,
      :other_participant_identifier,
      :participant_type,
      :status,
      :invitation_message,
      :inviter_email,
      :inviter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource could not be found. This may occur when referencing a resource that does not exist or has been deleted.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The specific reason why the resource was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary view of a seller profile containing basic identifying information.</p>
    # @!attribute id
    #   <p>The unique identifier of the seller profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the seller.</p>
    #   @return [String]
    class SellerProfileSummary < Struct.new(
      nil,
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address to send the verification code to.</p>
    #   @return [String]
    class SendEmailVerificationCodeRequest < Struct.new(
      nil,
      :catalog,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendEmailVerificationCodeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because it would exceed a service quota or limit. This may occur when trying to create more resources than allowed by the service limits.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The specific reason for the service quota being exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute task_details
    #   <p>The details of the profile updates to be performed.</p>
    #   @return [Types::TaskDetails]
    class StartProfileUpdateTaskRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      :task_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the started profile update task.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the partner account.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the started profile update task.</p>
    #   @return [String]
    # @!attribute task_details
    #   <p>The details of the profile update task that was started.</p>
    #   @return [Types::TaskDetails]
    # @!attribute started_at
    #   <p>The timestamp when the profile update task was started.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the profile update task (in progress).</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The timestamp when the profile update task ended (null for in-progress tasks).</p>
    #   @return [Time]
    # @!attribute error_detail_list
    #   <p>A list of error details if any errors occurred during the profile update task.</p>
    #   @return [Array<Types::ErrorDetail>]
    class StartProfileUpdateTaskResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :task_id,
      :task_details,
      :started_at,
      :status,
      :ended_at,
      :error_detail_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which to perform the qualifications association. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute primary_partner
    #   <p>The primary (acquiring) partner's profile and account identifier to associate qualifications with. You must provide at least one of <code>ProfileId</code> or <code>AccountId</code>. You cannot specify yourself as the primary partner.</p>
    #   @return [Types::QualificationsAssociationPartner]
    class StartQualificationsAssociationTaskRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      :primary_partner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier echoed from the request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies your partner resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Your unique partner identifier in the AWS Partner Network.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the started qualifications association task, in the format <code>pqatask-[a-z2-7]{13}</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the qualifications association task. The initial value is <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute primary_partner
    #   <p>The resolved primary partner's profile and account identifiers, including both <code>ProfileId</code> and <code>AccountId</code>.</p>
    #   @return [Types::QualificationsAssociationPartner]
    # @!attribute started_at
    #   <p>The timestamp when the qualifications association task started, in ISO 8601 format.</p>
    #   @return [Time]
    class StartQualificationsAssociationTaskResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :task_id,
      :status,
      :primary_partner,
      :started_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which to perform the qualifications disassociation. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute associated_partner
    #   <p>The primary partner's profile and account identifier that you are currently associated with and will disassociate from. You must provide at least one of <code>ProfileId</code> or <code>AccountId</code>. The specified partner must match your current primary association.</p>
    #   @return [Types::QualificationsAssociationPartner]
    class StartQualificationsDisassociationTaskRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      :associated_partner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier echoed from the request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies your partner resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Your unique partner identifier in the AWS Partner Network.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the started qualifications disassociation task, in the format <code>pqdtask-[a-z2-7]{13}</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the qualifications disassociation task. The initial value is <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute associated_partner
    #   <p>The resolved primary partner's profile and account identifiers that the task is disassociating qualifications from.</p>
    #   @return [Types::QualificationsAssociationPartner]
    # @!attribute started_at
    #   <p>The timestamp when the qualifications disassociation task started, in ISO 8601 format.</p>
    #   @return [Time]
    class StartQualificationsDisassociationTaskResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :id,
      :task_id,
      :status,
      :associated_partner,
      :started_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This prevents duplicate verification processes from being started accidentally.</p>
    #   @return [String]
    # @!attribute verification_details
    #   <p>The specific details required for the verification process, including business information for business verification or personal information for registrant verification.</p>
    #   @return [Types::VerificationDetails]
    class StartVerificationRequest < Struct.new(
      nil,
      :client_token,
      :verification_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verification_type
    #   <p>The type of verification that was started based on the provided verification details.</p>
    #   @return [String]
    # @!attribute verification_status
    #   <p>The initial status of the verification process after it has been started. Typically this will be pending or in-progress.</p>
    #   @return [String]
    # @!attribute verification_status_reason
    #   <p>Additional information about the initial verification status, including any immediate feedback about the submitted verification details.</p>
    #   @return [String]
    # @!attribute verification_response_details
    #   <p>Initial response details specific to the type of verification started, which may include next steps or additional requirements.</p>
    #   @return [Types::VerificationResponseDetails]
    # @!attribute started_at
    #   <p>The timestamp when the verification process was successfully initiated.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The timestamp when the verification process was completed. This field is typically null for newly started verifications unless they complete immediately.</p>
    #   @return [Time]
    class StartVerificationResponse < Struct.new(
      nil,
      :verification_type,
      :verification_status,
      :verification_status_reason,
      :verification_response_details,
      :started_at,
      :completed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair used to associate metadata with AWS Partner Central Account resources.</p>
    # @!attribute key
    #   <p>The key name of the tag. Tag keys are case-sensitive.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value associated with the tag key. Tag values are case-sensitive.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to add or update for the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a profile update task including the changes to be made.</p>
    # @!attribute display_name
    #   <p>The updated display name for the partner profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description for the partner profile.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>The updated website URL for the partner profile.</p>
    #   @return [String]
    # @!attribute logo_url
    #   <p>The updated logo URL for the partner profile.</p>
    #   @return [String]
    # @!attribute primary_solution_type
    #   <p>The updated primary solution type for the partner profile.</p>
    #   @return [String]
    # @!attribute industry_segments
    #   <p>The updated industry segments for the partner profile.</p>
    #   @return [Array<String>]
    # @!attribute translation_source_locale
    #   <p>The updated translation source locale for the partner profile.</p>
    #   @return [String]
    # @!attribute localized_contents
    #   <p>The updated localized content for the partner profile.</p>
    #   @return [Array<Types::LocalizedContent>]
    # @!attribute headquarters
    #   <p>The ISO 3166 country and subdivision codes for the partner's headquarters location. If you omit this field, the service retains the existing headquarters value.</p>
    #   @return [Types::Headquarters]
    class TaskDetails < Struct.new(
      nil,
      :display_name,
      :description,
      :website_url,
      :logo_url,
      :primary_solution_type,
      :industry_segments,
      :translation_source_locale,
      :localized_contents,
      :headquarters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled due to too many requests being sent in a short period of time. The client should implement exponential backoff and retry the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code associated with the throttling error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code associated with the throttling error.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision number of the connection preferences for optimistic locking.</p>
    #   @return [Integer]
    # @!attribute access_type
    #   <p>The access type setting for connections (e.g., open, restricted, invitation-only).</p>
    #   @return [String]
    # @!attribute excluded_participant_identifiers
    #   <p>The updated list of participant identifiers to exclude from connections.</p>
    #   @return [Array<String>]
    class UpdateConnectionPreferencesRequest < Struct.new(
      nil,
      :catalog,
      :revision,
      :access_type,
      :excluded_participant_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the partner account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated connection preferences.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>The updated access type setting for connections.</p>
    #   @return [String]
    # @!attribute excluded_participant_ids
    #   <p>A list of participant IDs that are excluded from connection requests or interactions.</p>
    #   @return [Array<String>]
    # @!attribute updated_at
    #   <p>The timestamp when the connection preferences were last updated.</p>
    #   @return [Time]
    # @!attribute revision
    #   <p>The updated revision number of the connection preferences.</p>
    #   @return [Integer]
    class UpdateConnectionPreferencesResponse < Struct.new(
      nil,
      :catalog,
      :arn,
      :access_type,
      :excluded_participant_ids,
      :updated_at,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a validation error, which can be either a field-level or business rule validation error.</p>
    # @!attribute field_validation_error
    #   <p>Details about a field-level validation error, if applicable.</p>
    #   @return [Types::FieldValidationError]
    # @!attribute business_validation_error
    #   <p>Details about a business rule validation error, if applicable.</p>
    #   @return [Types::BusinessValidationError]
    class ValidationError < Struct.new(
      :field_validation_error,
      :business_validation_error,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FieldValidationError < ValidationError; end
      class BusinessValidationError < ValidationError; end
      class Unknown < ValidationError; end
    end

    # <p>The request failed validation. One or more input parameters are invalid, missing, or do not meet the required format or constraints.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>A list of detailed validation errors that occurred during request processing.</p>
    #   @return [Array<Types::ValidationError>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union structure containing the specific details required for different types of verification processes supported by AWS Partner Central.</p>
    # @!attribute business_verification_details
    #   <p>The business verification details to be used when starting a business verification process.</p>
    #   @return [Types::BusinessVerificationDetails]
    # @!attribute registrant_verification_details
    #   <p>The registrant verification details to be used when starting an individual identity verification process.</p>
    #   @return [Types::RegistrantVerificationDetails]
    class VerificationDetails < Struct.new(
      :business_verification_details,
      :registrant_verification_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BusinessVerificationDetails < VerificationDetails; end
      class RegistrantVerificationDetails < VerificationDetails; end
      class Unknown < VerificationDetails; end
    end

    # <p>A union structure containing the response details specific to different types of verification processes, providing type-specific information and results.</p>
    # @!attribute business_verification_response
    #   <p>The response details from a business verification process, including verification results and any additional business information discovered.</p>
    #   @return [Types::BusinessVerificationResponse]
    # @!attribute registrant_verification_response
    #   <p>The response details from a registrant verification process, including verification results and any additional steps required for identity confirmation.</p>
    #   @return [Types::RegistrantVerificationResponse]
    class VerificationResponseDetails < Struct.new(
      :business_verification_response,
      :registrant_verification_response,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BusinessVerificationResponse < VerificationResponseDetails; end
      class RegistrantVerificationResponse < VerificationResponseDetails; end
      class Unknown < VerificationResponseDetails; end
    end

  end
end
