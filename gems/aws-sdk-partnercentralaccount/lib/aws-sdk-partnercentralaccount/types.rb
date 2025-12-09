# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PartnerCentralAccount
  module Types

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the connection invitation to accept.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AcceptConnectionInvitationRequest AWS API Documentation
    #
    class AcceptConnectionInvitationRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The details of the accepted connection between the two partners.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AcceptConnectionInvitationResponse AWS API Documentation
    #
    class AcceptConnectionInvitationResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to insufficient permissions. The caller
    # does not have the required permissions to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The specific reason for the access denial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an AWS account.
    #
    # @!attribute [rw] name
    #   The name associated with the AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AccountSummary AWS API Documentation
    #
    class AccountSummary < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains contact information for the primary alliance lead responsible
    # for partnership activities.
    #
    # @!attribute [rw] first_name
    #   The first name of the alliance lead contact person.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the alliance lead contact person.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the alliance lead contact person.
    #   @return [String]
    #
    # @!attribute [rw] business_title
    #   The business title or role of the alliance lead contact person.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AllianceLeadContact AWS API Documentation
    #
    class AllianceLeadContact < Struct.new(
      :first_name,
      :last_name,
      :email,
      :business_title)
      SENSITIVE = [:first_name, :last_name, :business_title]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address used to verify domain ownership for AWS training
    #   and certification association.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_code
    #   The verification code sent to the email address to confirm domain
    #   ownership.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AssociateAwsTrainingCertificationEmailDomainRequest AWS API Documentation
    #
    class AssociateAwsTrainingCertificationEmailDomainRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token,
      :email,
      :email_verification_code)
      SENSITIVE = [:email_verification_code]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AssociateAwsTrainingCertificationEmailDomainResponse AWS API Documentation
    #
    class AssociateAwsTrainingCertificationEmailDomainResponse < Aws::EmptyStructure; end

    # Contains information about a business rule validation error that
    # occurred during an operation.
    #
    # @!attribute [rw] message
    #   A description of the business validation error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   A code identifying the specific business validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/BusinessValidationError AWS API Documentation
    #
    class BusinessValidationError < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the business information required for verifying a company's
    # legal status and registration details within AWS Partner Central.
    #
    # @!attribute [rw] legal_name
    #   The official legal name of the business as registered with the
    #   appropriate government authorities.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique business registration identifier assigned by the
    #   government or regulatory authority, such as a company registration
    #   number or tax identification number.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The ISO 3166-1 alpha-2 country code where the business is legally
    #   registered and operates.
    #   @return [String]
    #
    # @!attribute [rw] jurisdiction_of_incorporation
    #   The specific legal jurisdiction or state where the business was
    #   incorporated or registered, providing additional location context
    #   beyond the country code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/BusinessVerificationDetails AWS API Documentation
    #
    class BusinessVerificationDetails < Struct.new(
      :legal_name,
      :registration_id,
      :country_code,
      :jurisdiction_of_incorporation)
      SENSITIVE = [:legal_name, :registration_id]
      include Aws::Structure
    end

    # Contains the response information and results from a business
    # verification process, including any verification-specific data
    # returned by the verification service.
    #
    # @!attribute [rw] business_verification_details
    #   The business verification details that were processed and verified,
    #   potentially including additional information discovered during the
    #   verification process.
    #   @return [Types::BusinessVerificationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/BusinessVerificationResponse AWS API Documentation
    #
    class BusinessVerificationResponse < Struct.new(
      :business_verification_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the connection invitation to cancel.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelConnectionInvitationRequest AWS API Documentation
    #
    class CancelConnectionInvitationRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation was canceled.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the canceled connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the canceled connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The identifier of the connection associated with the canceled
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection that was being invited for.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the connection invitation was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection invitation was last updated
    #   (canceled).
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the connection invitation would have expired if
    #   not canceled.
    #   @return [Time]
    #
    # @!attribute [rw] other_participant_identifier
    #   The identifier of the other participant who was invited to connect.
    #   @return [String]
    #
    # @!attribute [rw] participant_type
    #   The type of participant (inviter or invitee) in the connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the connection invitation (canceled).
    #   @return [String]
    #
    # @!attribute [rw] invitation_message
    #   The message that was included with the original connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] inviter_email
    #   The email address of the person who sent the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] inviter_name
    #   The name of the person who sent the connection invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelConnectionInvitationResponse AWS API Documentation
    #
    class CancelConnectionInvitationResponse < Struct.new(
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
      :inviter_name)
      SENSITIVE = [:inviter_name]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the connection to cancel.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection to cancel (e.g., reseller, distributor,
    #   technology partner).
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for canceling the connection, providing context for the
    #   termination.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelConnectionRequest AWS API Documentation
    #
    class CancelConnectionRequest < Struct.new(
      :catalog,
      :identifier,
      :connection_type,
      :reason,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection was canceled.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the canceled connection.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the canceled connection.
    #   @return [String]
    #
    # @!attribute [rw] other_participant_account_id
    #   The AWS account ID of the other participant in the canceled
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection was last updated (canceled).
    #   @return [Time]
    #
    # @!attribute [rw] connection_types
    #   The list of connection types that were active before cancellation.
    #   @return [Hash<String,Types::ConnectionTypeDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelConnectionResponse AWS API Documentation
    #
    class CancelConnectionResponse < Struct.new(
      :catalog,
      :id,
      :arn,
      :other_participant_account_id,
      :updated_at,
      :connection_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the profile update task to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelProfileUpdateTaskRequest AWS API Documentation
    #
    class CancelProfileUpdateTaskRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the canceled profile update task.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the canceled profile update task.
    #   @return [String]
    #
    # @!attribute [rw] task_details
    #   The details of the profile update task that was canceled.
    #   @return [Types::TaskDetails]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the profile update task was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the profile update task (canceled).
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the profile update task was ended (canceled).
    #   @return [Time]
    #
    # @!attribute [rw] error_detail_list
    #   A list of error details if any errors occurred during the profile
    #   update task.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelProfileUpdateTaskResponse AWS API Documentation
    #
    class CancelProfileUpdateTaskResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :task_id,
      :task_details,
      :started_at,
      :status,
      :ended_at,
      :error_detail_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource. This typically occurs when trying to create a
    # resource that already exists or modify a resource that has been
    # changed by another process.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The specific reason for the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Base structure containing common connection properties.
    #
    # @!attribute [rw] catalog
    #   The catalog identifier that the connection belongs to.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the connection.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The AWS Resource Name (ARN) of the connection.
    #   @return [String]
    #
    # @!attribute [rw] other_participant_account_id
    #   The AWS account ID of the other participant in the connection.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] connection_types
    #   The type of connection.
    #   @return [Hash<String,Types::ConnectionTypeDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :catalog,
      :id,
      :arn,
      :other_participant_account_id,
      :updated_at,
      :connection_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary view of a connection invitation containing key information
    # without full details.
    #
    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The identifier of the connection associated with this invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection being requested in the invitation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the connection invitation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection invitation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the connection invitation will expire.
    #   @return [Time]
    #
    # @!attribute [rw] other_participant_identifier
    #   The identifier of the other participant in the connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] participant_type
    #   The type of participant (inviter or invitee) in the connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the connection invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ConnectionInvitationSummary AWS API Documentation
    #
    class ConnectionInvitationSummary < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary view of an active connection between partners containing key
    # information.
    #
    # @!attribute [rw] catalog
    #   The catalog identifier where the connection exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the connection.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the connection.
    #   @return [String]
    #
    # @!attribute [rw] other_participant_account_id
    #   The AWS account ID of the other participant in the connection.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] connection_types
    #   A map of connection types and their summary information for this
    #   connection.
    #   @return [Hash<String,Types::ConnectionTypeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ConnectionSummary AWS API Documentation
    #
    class ConnectionSummary < Struct.new(
      :catalog,
      :id,
      :arn,
      :other_participant_account_id,
      :updated_at,
      :connection_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a specific connection type within a
    # connection.
    #
    # @!attribute [rw] created_at
    #   The timestamp when this connection type was created.
    #   @return [Time]
    #
    # @!attribute [rw] inviter_email
    #   The email address of the person who initiated this connection type.
    #   @return [String]
    #
    # @!attribute [rw] inviter_name
    #   The name of the person who initiated this connection type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this connection type.
    #   @return [String]
    #
    # @!attribute [rw] canceled_at
    #   The timestamp when this connection type was cancelled, if
    #   applicable.
    #   @return [Time]
    #
    # @!attribute [rw] canceled_by
    #   The AWS account ID of the participant who cancelled this connection
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] other_participant
    #   Information about the other participant in this connection type.
    #   @return [Types::Participant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ConnectionTypeDetail AWS API Documentation
    #
    class ConnectionTypeDetail < Struct.new(
      :created_at,
      :inviter_email,
      :inviter_name,
      :status,
      :canceled_at,
      :canceled_by,
      :other_participant)
      SENSITIVE = [:inviter_name]
      include Aws::Structure
    end

    # Summary information about a specific connection type between partners.
    #
    # @!attribute [rw] status
    #   The current status of this connection type (active, canceled, etc.).
    #   @return [String]
    #
    # @!attribute [rw] other_participant
    #   Information about the other participant in this connection type.
    #   @return [Types::Participant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ConnectionTypeSummary AWS API Documentation
    #
    class ConnectionTypeSummary < Struct.new(
      :status,
      :other_participant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection being requested (e.g., reseller, distributor,
    #   technology partner).
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the person to send the connection invitation
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A custom message to include with the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the person sending the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] receiver_identifier
    #   The identifier of the organization or partner to invite for
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CreateConnectionInvitationRequest AWS API Documentation
    #
    class CreateConnectionInvitationRequest < Struct.new(
      :catalog,
      :client_token,
      :connection_type,
      :email,
      :message,
      :name,
      :receiver_identifier)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the created connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The identifier of the connection associated with this invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection being requested in the invitation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the connection invitation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection invitation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the connection invitation will expire if not
    #   responded to.
    #   @return [Time]
    #
    # @!attribute [rw] other_participant_identifier
    #   The identifier of the organization or partner being invited.
    #   @return [String]
    #
    # @!attribute [rw] participant_type
    #   The type of participant (inviter or invitee) in the connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the connection invitation (pending, accepted,
    #   rejected, etc.).
    #   @return [String]
    #
    # @!attribute [rw] invitation_message
    #   The custom message included with the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] inviter_email
    #   The email address of the person who sent the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] inviter_name
    #   The name of the person who sent the connection invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CreateConnectionInvitationResponse AWS API Documentation
    #
    class CreateConnectionInvitationResponse < Struct.new(
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
      :inviter_name)
      SENSITIVE = [:inviter_name]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the partner account will be created.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] legal_name
    #   The legal name of the organization becoming a partner.
    #   @return [String]
    #
    # @!attribute [rw] primary_solution_type
    #   The primary type of solution or service the partner provides (e.g.,
    #   consulting, software, managed services).
    #   @return [String]
    #
    # @!attribute [rw] alliance_lead_contact
    #   The primary contact person for alliance and partnership matters.
    #   @return [Types::AllianceLeadContact]
    #
    # @!attribute [rw] email_verification_code
    #   The verification code sent to the alliance lead contact's email to
    #   confirm account creation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the partner account for
    #   organization and billing purposes.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CreatePartnerRequest AWS API Documentation
    #
    class CreatePartnerRequest < Struct.new(
      :catalog,
      :client_token,
      :legal_name,
      :primary_solution_type,
      :alliance_lead_contact,
      :email_verification_code,
      :tags)
      SENSITIVE = [:legal_name, :email_verification_code]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the partner account was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created partner account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the created partner account.
    #   @return [String]
    #
    # @!attribute [rw] legal_name
    #   The legal name of the partner organization.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the partner account was created.
    #   @return [Time]
    #
    # @!attribute [rw] profile
    #   The partner profile information including display name, description,
    #   and other public details.
    #   @return [Types::PartnerProfile]
    #
    # @!attribute [rw] aws_training_certification_email_domains
    #   The list of verified email domains associated with AWS training and
    #   certification credentials for the partner organization.
    #   @return [Array<Types::PartnerDomain>]
    #
    # @!attribute [rw] alliance_lead_contact
    #   The alliance lead contact information for the partner account.
    #   @return [Types::AllianceLeadContact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CreatePartnerResponse AWS API Documentation
    #
    class CreatePartnerResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :legal_name,
      :created_at,
      :profile,
      :aws_training_certification_email_domains,
      :alliance_lead_contact)
      SENSITIVE = [:legal_name]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name to disassociate from AWS training and certification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/DisassociateAwsTrainingCertificationEmailDomainRequest AWS API Documentation
    #
    class DisassociateAwsTrainingCertificationEmailDomainRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/DisassociateAwsTrainingCertificationEmailDomainResponse AWS API Documentation
    #
    class DisassociateAwsTrainingCertificationEmailDomainResponse < Aws::EmptyStructure; end

    # Contains detailed information about an error that occurred during an
    # operation.
    #
    # @!attribute [rw] locale
    #   The locale or language code for the error message.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A machine-readable code or reason for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :locale,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a field-level validation error that
    # occurred during an operation.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the field validation error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   A code identifying the specific field validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/FieldValidationError AWS API Documentation
    #
    class FieldValidationError < Struct.new(
      :name,
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetAllianceLeadContactRequest AWS API Documentation
    #
    class GetAllianceLeadContactRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] alliance_lead_contact
    #   The alliance lead contact information including name, email, and
    #   business title.
    #   @return [Types::AllianceLeadContact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetAllianceLeadContactResponse AWS API Documentation
    #
    class GetAllianceLeadContactResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :alliance_lead_contact)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the connection invitation to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnectionInvitationRequest AWS API Documentation
    #
    class GetConnectionInvitationRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The identifier of the connection associated with this invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection being requested in the invitation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the connection invitation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection invitation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the connection invitation will expire.
    #   @return [Time]
    #
    # @!attribute [rw] other_participant_identifier
    #   The identifier of the other participant in the connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] participant_type
    #   The type of participant (inviter or invitee) in the connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_message
    #   The custom message included with the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] inviter_email
    #   The email address of the person who sent the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] inviter_name
    #   The name of the person who sent the connection invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnectionInvitationResponse AWS API Documentation
    #
    class GetConnectionInvitationResponse < Struct.new(
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
      :inviter_name)
      SENSITIVE = [:inviter_name]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnectionPreferencesRequest AWS API Documentation
    #
    class GetConnectionPreferencesRequest < Struct.new(
      :catalog)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the connection preferences.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The access type setting for connections (e.g., open, restricted,
    #   invitation-only).
    #   @return [String]
    #
    # @!attribute [rw] excluded_participant_ids
    #   A list of participant IDs that are excluded from connection requests
    #   or interactions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection preferences were last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision
    #   The revision number of the connection preferences for optimistic
    #   locking.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnectionPreferencesResponse AWS API Documentation
    #
    class GetConnectionPreferencesResponse < Struct.new(
      :catalog,
      :arn,
      :access_type,
      :excluded_participant_ids,
      :updated_at,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the connection to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnectionRequest AWS API Documentation
    #
    class GetConnectionRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection exists.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the connection.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the connection.
    #   @return [String]
    #
    # @!attribute [rw] other_participant_account_id
    #   The AWS account ID of the other participant in the connection.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] connection_types
    #   The list of connection types active between the partners.
    #   @return [Hash<String,Types::ConnectionTypeDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnectionResponse AWS API Documentation
    #
    class GetConnectionResponse < Struct.new(
      :catalog,
      :id,
      :arn,
      :other_participant_account_id,
      :updated_at,
      :connection_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetPartnerRequest AWS API Documentation
    #
    class GetPartnerRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] legal_name
    #   The legal name of the partner organization.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the partner account was created.
    #   @return [Time]
    #
    # @!attribute [rw] profile
    #   The partner profile information including display name, description,
    #   and other public details.
    #   @return [Types::PartnerProfile]
    #
    # @!attribute [rw] aws_training_certification_email_domains
    #   The list of verified email domains associated with AWS training and
    #   certification credentials for the partner organization.
    #   @return [Array<Types::PartnerDomain>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetPartnerResponse AWS API Documentation
    #
    class GetPartnerResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :legal_name,
      :created_at,
      :profile,
      :aws_training_certification_email_domains)
      SENSITIVE = [:legal_name]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetProfileUpdateTaskRequest AWS API Documentation
    #
    class GetProfileUpdateTaskRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the profile update task.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the profile update task.
    #   @return [String]
    #
    # @!attribute [rw] task_details
    #   The details of the profile update task including what changes are
    #   being made.
    #   @return [Types::TaskDetails]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the profile update task was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the profile update task (in progress,
    #   completed, failed, etc.).
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the profile update task was completed or failed.
    #   @return [Time]
    #
    # @!attribute [rw] error_detail_list
    #   A list of error details if any errors occurred during the profile
    #   update task.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetProfileUpdateTaskResponse AWS API Documentation
    #
    class GetProfileUpdateTaskResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :task_id,
      :task_details,
      :started_at,
      :status,
      :ended_at,
      :error_detail_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetProfileVisibilityRequest AWS API Documentation
    #
    class GetProfileVisibilityRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility setting for the partner profile (public, private,
    #   restricted, etc.).
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the partner profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetProfileVisibilityResponse AWS API Documentation
    #
    class GetProfileVisibilityResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :visibility,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verification_type
    #   The type of verification to retrieve information for. Valid values
    #   include business verification for company registration details and
    #   registrant verification for individual identity confirmation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetVerificationRequest AWS API Documentation
    #
    class GetVerificationRequest < Struct.new(
      :verification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verification_type
    #   The type of verification that was requested and processed.
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   The current status of the verification process. Possible values
    #   include pending, in-progress, completed, failed, or expired.
    #   @return [String]
    #
    # @!attribute [rw] verification_status_reason
    #   Additional information explaining the current verification status,
    #   particularly useful when the status indicates a failure or requires
    #   additional action.
    #   @return [String]
    #
    # @!attribute [rw] verification_response_details
    #   Detailed response information specific to the type of verification
    #   performed, including any verification-specific data or results.
    #   @return [Types::VerificationResponseDetails]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the verification process was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The timestamp when the verification process was completed. This
    #   field is null if the verification is still in progress.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetVerificationResponse AWS API Documentation
    #
    class GetVerificationResponse < Struct.new(
      :verification_type,
      :verification_status,
      :verification_status_reason,
      :verification_response_details,
      :started_at,
      :completed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred while processing the request. This
    # is typically a temporary condition and the request may be retried.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results in paginated
    #   responses.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   Filter results by connection type (e.g., reseller, distributor,
    #   technology partner).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of connection invitations to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] other_participant_identifiers
    #   Filter results by specific participant identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] participant_type
    #   Filter results by participant type (inviter or invitee).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter results by invitation status (pending, accepted, rejected,
    #   canceled, expired).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListConnectionInvitationsRequest AWS API Documentation
    #
    class ListConnectionInvitationsRequest < Struct.new(
      :catalog,
      :next_token,
      :connection_type,
      :max_results,
      :other_participant_identifiers,
      :participant_type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_invitation_summaries
    #   A list of connection invitation summaries matching the specified
    #   criteria.
    #   @return [Array<Types::ConnectionInvitationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results if more results
    #   are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListConnectionInvitationsResponse AWS API Documentation
    #
    class ListConnectionInvitationsResponse < Struct.new(
      :connection_invitation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results in paginated
    #   responses.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   Filter results by connection type (e.g., reseller, distributor,
    #   technology partner).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of connections to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] other_participant_identifiers
    #   Filter results by specific participant identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListConnectionsRequest AWS API Documentation
    #
    class ListConnectionsRequest < Struct.new(
      :catalog,
      :next_token,
      :connection_type,
      :max_results,
      :other_participant_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_summaries
    #   A list of connection summaries matching the specified criteria.
    #   @return [Array<Types::ConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results if more results
    #   are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListConnectionsResponse AWS API Documentation
    #
    class ListConnectionsResponse < Struct.new(
      :connection_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier to list partners from.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results in paginated
    #   responses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListPartnersRequest AWS API Documentation
    #
    class ListPartnersRequest < Struct.new(
      :catalog,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partner_summary_list
    #   A list of partner summaries including basic information about each
    #   partner account.
    #   @return [Array<Types::PartnerSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results if more results
    #   are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListPartnersResponse AWS API Documentation
    #
    class ListPartnersResponse < Struct.new(
      :partner_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the tags are
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains localized content for a partner profile in a specific
    # language or locale.
    #
    # @!attribute [rw] display_name
    #   The localized display name for the partner.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The localized description of the partner's business and services.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The localized website URL for the partner.
    #   @return [String]
    #
    # @!attribute [rw] logo_url
    #   The URL to the partner's logo image for this locale.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The locale or language code for the localized content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/LocalizedContent AWS API Documentation
    #
    class LocalizedContent < Struct.new(
      :display_name,
      :description,
      :website_url,
      :logo_url,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a participant in a partner connection, containing their
    # profile and account information.
    #
    # @note Participant is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Participant corresponding to the set member.
    #
    # @!attribute [rw] partner_profile
    #   The partner profile information for the participant.
    #   @return [Types::PartnerProfileSummary]
    #
    # @!attribute [rw] seller_profile
    #   The seller profile information for the participant.
    #   @return [Types::SellerProfileSummary]
    #
    # @!attribute [rw] account
    #   The AWS account information for the participant.
    #   @return [Types::AccountSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/Participant AWS API Documentation
    #
    class Participant < Struct.new(
      :partner_profile,
      :seller_profile,
      :account,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PartnerProfile < Participant; end
      class SellerProfile < Participant; end
      class Account < Participant; end
      class Unknown < Participant; end
    end

    # Represents a verified domain associated with a partner account.
    #
    # @!attribute [rw] domain_name
    #   The domain name that has been verified for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] registered_at
    #   The timestamp when the domain was registered and verified for the
    #   partner account.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PartnerDomain AWS API Documentation
    #
    class PartnerDomain < Struct.new(
      :domain_name,
      :registered_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains comprehensive profile information for a partner including
    # public-facing details.
    #
    # @!attribute [rw] display_name
    #   The public display name for the partner organization.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the partner's business, services, and
    #   capabilities.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The partner's primary website URL.
    #   @return [String]
    #
    # @!attribute [rw] logo_url
    #   The URL to the partner's logo image.
    #   @return [String]
    #
    # @!attribute [rw] primary_solution_type
    #   The primary type of solution or service the partner provides.
    #   @return [String]
    #
    # @!attribute [rw] industry_segments
    #   The industry segments or verticals that the partner serves.
    #   @return [Array<String>]
    #
    # @!attribute [rw] translation_source_locale
    #   The source locale used for automatic translation of profile content.
    #   @return [String]
    #
    # @!attribute [rw] localized_contents
    #   A list of localized content versions for different languages and
    #   regions.
    #   @return [Array<Types::LocalizedContent>]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the partner profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PartnerProfile AWS API Documentation
    #
    class PartnerProfile < Struct.new(
      :display_name,
      :description,
      :website_url,
      :logo_url,
      :primary_solution_type,
      :industry_segments,
      :translation_source_locale,
      :localized_contents,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary view of a partner profile containing basic identifying
    # information.
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the partner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PartnerProfileSummary AWS API Documentation
    #
    class PartnerProfileSummary < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary view of a partner account containing basic information for
    # listing purposes.
    #
    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] legal_name
    #   The legal name of the partner organization.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the partner account was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PartnerSummary AWS API Documentation
    #
    class PartnerSummary < Struct.new(
      :catalog,
      :arn,
      :id,
      :legal_name,
      :created_at)
      SENSITIVE = [:legal_name]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] alliance_lead_contact
    #   The alliance lead contact information to set for the partner
    #   account.
    #   @return [Types::AllianceLeadContact]
    #
    # @!attribute [rw] email_verification_code
    #   The verification code sent to the alliance lead contact's email to
    #   confirm the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PutAllianceLeadContactRequest AWS API Documentation
    #
    class PutAllianceLeadContactRequest < Struct.new(
      :catalog,
      :identifier,
      :alliance_lead_contact,
      :email_verification_code)
      SENSITIVE = [:email_verification_code]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] alliance_lead_contact
    #   The updated alliance lead contact information.
    #   @return [Types::AllianceLeadContact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PutAllianceLeadContactResponse AWS API Documentation
    #
    class PutAllianceLeadContactResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :alliance_lead_contact)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility setting to apply to the partner profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PutProfileVisibilityRequest AWS API Documentation
    #
    class PutProfileVisibilityRequest < Struct.new(
      :catalog,
      :identifier,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The updated visibility setting for the partner profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the partner profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PutProfileVisibilityResponse AWS API Documentation
    #
    class PutProfileVisibilityResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :visibility,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the personal information required for verifying an
    # individual's identity as part of the partner registration process in
    # AWS Partner Central.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/RegistrantVerificationDetails AWS API Documentation
    #
    class RegistrantVerificationDetails < Aws::EmptyStructure; end

    # Contains the response information from a registrant verification
    # process, including any verification-specific data and next steps for
    # the individual verification workflow.
    #
    # @!attribute [rw] completion_url
    #   A secure URL where the registrant can complete additional
    #   verification steps, such as document upload or identity confirmation
    #   through a third-party verification service.
    #   @return [String]
    #
    # @!attribute [rw] completion_url_expires_at
    #   The timestamp when the completion URL expires and is no longer valid
    #   for accessing the verification workflow.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/RegistrantVerificationResponse AWS API Documentation
    #
    class RegistrantVerificationResponse < Struct.new(
      :completion_url,
      :completion_url_expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation exists.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the connection invitation to reject.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for rejecting the connection invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/RejectConnectionInvitationRequest AWS API Documentation
    #
    class RejectConnectionInvitationRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier where the connection invitation was rejected.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the rejected connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rejected connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The identifier of the connection associated with the rejected
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection that was being invited for.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the connection invitation was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection invitation was last updated
    #   (rejected).
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the connection invitation would have expired.
    #   @return [Time]
    #
    # @!attribute [rw] other_participant_identifier
    #   The identifier of the other participant who sent the invitation.
    #   @return [String]
    #
    # @!attribute [rw] participant_type
    #   The type of participant (inviter or invitee) in the connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the connection invitation (rejected).
    #   @return [String]
    #
    # @!attribute [rw] invitation_message
    #   The message that was included with the original connection
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] inviter_email
    #   The email address of the person who sent the connection invitation.
    #   @return [String]
    #
    # @!attribute [rw] inviter_name
    #   The name of the person who sent the connection invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/RejectConnectionInvitationResponse AWS API Documentation
    #
    class RejectConnectionInvitationResponse < Struct.new(
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
      :inviter_name)
      SENSITIVE = [:inviter_name]
      include Aws::Structure
    end

    # The specified resource could not be found. This may occur when
    # referencing a resource that does not exist or has been deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The specific reason why the resource was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary view of a seller profile containing basic identifying
    # information.
    #
    # @!attribute [rw] id
    #   The unique identifier of the seller profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the seller.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/SellerProfileSummary AWS API Documentation
    #
    class SellerProfileSummary < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address to send the verification code to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/SendEmailVerificationCodeRequest AWS API Documentation
    #
    class SendEmailVerificationCodeRequest < Struct.new(
      :catalog,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/SendEmailVerificationCodeResponse AWS API Documentation
    #
    class SendEmailVerificationCodeResponse < Aws::EmptyStructure; end

    # The request was rejected because it would exceed a service quota or
    # limit. This may occur when trying to create more resources than
    # allowed by the service limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The specific reason for the service quota being exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] task_details
    #   The details of the profile updates to be performed.
    #   @return [Types::TaskDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/StartProfileUpdateTaskRequest AWS API Documentation
    #
    class StartProfileUpdateTaskRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token,
      :task_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the started profile update task.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the partner account.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the started profile update task.
    #   @return [String]
    #
    # @!attribute [rw] task_details
    #   The details of the profile update task that was started.
    #   @return [Types::TaskDetails]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the profile update task was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the profile update task (in progress).
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the profile update task ended (null for
    #   in-progress tasks).
    #   @return [Time]
    #
    # @!attribute [rw] error_detail_list
    #   A list of error details if any errors occurred during the profile
    #   update task.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/StartProfileUpdateTaskResponse AWS API Documentation
    #
    class StartProfileUpdateTaskResponse < Struct.new(
      :catalog,
      :arn,
      :id,
      :task_id,
      :task_details,
      :started_at,
      :status,
      :ended_at,
      :error_detail_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. This prevents duplicate verification
    #   processes from being started accidentally.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] verification_details
    #   The specific details required for the verification process,
    #   including business information for business verification or personal
    #   information for registrant verification.
    #   @return [Types::VerificationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/StartVerificationRequest AWS API Documentation
    #
    class StartVerificationRequest < Struct.new(
      :client_token,
      :verification_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verification_type
    #   The type of verification that was started based on the provided
    #   verification details.
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   The initial status of the verification process after it has been
    #   started. Typically this will be pending or in-progress.
    #   @return [String]
    #
    # @!attribute [rw] verification_status_reason
    #   Additional information about the initial verification status,
    #   including any immediate feedback about the submitted verification
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] verification_response_details
    #   Initial response details specific to the type of verification
    #   started, which may include next steps or additional requirements.
    #   @return [Types::VerificationResponseDetails]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the verification process was successfully
    #   initiated.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The timestamp when the verification process was completed. This
    #   field is typically null for newly started verifications unless they
    #   complete immediately.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/StartVerificationResponse AWS API Documentation
    #
    class StartVerificationResponse < Struct.new(
      :verification_type,
      :verification_status,
      :verification_status_reason,
      :verification_response_details,
      :started_at,
      :completed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair used to associate metadata with AWS Partner Central
    # Account resources.
    #
    # @!attribute [rw] key
    #   The key name of the tag. Tag keys are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the tag key. Tag values are
    #   case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to add or update for the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Contains detailed information about a profile update task including
    # the changes to be made.
    #
    # @!attribute [rw] display_name
    #   The updated display name for the partner profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the partner profile.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The updated website URL for the partner profile.
    #   @return [String]
    #
    # @!attribute [rw] logo_url
    #   The updated logo URL for the partner profile.
    #   @return [String]
    #
    # @!attribute [rw] primary_solution_type
    #   The updated primary solution type for the partner profile.
    #   @return [String]
    #
    # @!attribute [rw] industry_segments
    #   The updated industry segments for the partner profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] translation_source_locale
    #   The updated translation source locale for the partner profile.
    #   @return [String]
    #
    # @!attribute [rw] localized_contents
    #   The updated localized content for the partner profile.
    #   @return [Array<Types::LocalizedContent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/TaskDetails AWS API Documentation
    #
    class TaskDetails < Struct.new(
      :display_name,
      :description,
      :website_url,
      :logo_url,
      :primary_solution_type,
      :industry_segments,
      :translation_source_locale,
      :localized_contents)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled due to too many requests being sent in a
    # short period of time. The client should implement exponential backoff
    # and retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code associated with the throttling error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code associated with the throttling error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision number of the connection preferences for optimistic
    #   locking.
    #   @return [Integer]
    #
    # @!attribute [rw] access_type
    #   The access type setting for connections (e.g., open, restricted,
    #   invitation-only).
    #   @return [String]
    #
    # @!attribute [rw] excluded_participant_identifiers
    #   The updated list of participant identifiers to exclude from
    #   connections.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/UpdateConnectionPreferencesRequest AWS API Documentation
    #
    class UpdateConnectionPreferencesRequest < Struct.new(
      :catalog,
      :revision,
      :access_type,
      :excluded_participant_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the partner account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated connection
    #   preferences.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The updated access type setting for connections.
    #   @return [String]
    #
    # @!attribute [rw] excluded_participant_ids
    #   A list of participant IDs that are excluded from connection requests
    #   or interactions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the connection preferences were last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision
    #   The updated revision number of the connection preferences.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/UpdateConnectionPreferencesResponse AWS API Documentation
    #
    class UpdateConnectionPreferencesResponse < Struct.new(
      :catalog,
      :arn,
      :access_type,
      :excluded_participant_ids,
      :updated_at,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a validation error, which can be either a
    # field-level or business rule validation error.
    #
    # @!attribute [rw] field_validation_error
    #   Details about a field-level validation error, if applicable.
    #   @return [Types::FieldValidationError]
    #
    # @!attribute [rw] business_validation_error
    #   Details about a business rule validation error, if applicable.
    #   @return [Types::BusinessValidationError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ValidationError AWS API Documentation
    #
    class ValidationError < Struct.new(
      :field_validation_error,
      :business_validation_error,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FieldValidationError < ValidationError; end
      class BusinessValidationError < ValidationError; end
      class Unknown < ValidationError; end
    end

    # The request failed validation. One or more input parameters are
    # invalid, missing, or do not meet the required format or constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   A list of detailed validation errors that occurred during request
    #   processing.
    #   @return [Array<Types::ValidationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # A union structure containing the specific details required for
    # different types of verification processes supported by AWS Partner
    # Central.
    #
    # @note VerificationDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] business_verification_details
    #   The business verification details to be used when starting a
    #   business verification process.
    #   @return [Types::BusinessVerificationDetails]
    #
    # @!attribute [rw] registrant_verification_details
    #   The registrant verification details to be used when starting an
    #   individual identity verification process.
    #   @return [Types::RegistrantVerificationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/VerificationDetails AWS API Documentation
    #
    class VerificationDetails < Struct.new(
      :business_verification_details,
      :registrant_verification_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BusinessVerificationDetails < VerificationDetails; end
      class RegistrantVerificationDetails < VerificationDetails; end
      class Unknown < VerificationDetails; end
    end

    # A union structure containing the response details specific to
    # different types of verification processes, providing type-specific
    # information and results.
    #
    # @note VerificationResponseDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VerificationResponseDetails corresponding to the set member.
    #
    # @!attribute [rw] business_verification_response
    #   The response details from a business verification process, including
    #   verification results and any additional business information
    #   discovered.
    #   @return [Types::BusinessVerificationResponse]
    #
    # @!attribute [rw] registrant_verification_response
    #   The response details from a registrant verification process,
    #   including verification results and any additional steps required for
    #   identity confirmation.
    #   @return [Types::RegistrantVerificationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/VerificationResponseDetails AWS API Documentation
    #
    class VerificationResponseDetails < Struct.new(
      :business_verification_response,
      :registrant_verification_response,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BusinessVerificationResponse < VerificationResponseDetails; end
      class RegistrantVerificationResponse < VerificationResponseDetails; end
      class Unknown < VerificationResponseDetails; end
    end

  end
end

