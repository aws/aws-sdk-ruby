# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PartnerCentralChannel
  module Types

    # Contains details about an accepted channel handshake.
    #
    # @!attribute [rw] id
    #   The unique identifier of the accepted handshake.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the accepted handshake.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the accepted handshake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/AcceptChannelHandshakeDetail AWS API Documentation
    #
    class AcceptChannelHandshakeDetail < Struct.new(
      :id,
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the handshake request.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the channel handshake to accept.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/AcceptChannelHandshakeRequest AWS API Documentation
    #
    class AcceptChannelHandshakeRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_handshake_detail
    #   Details of the accepted channel handshake.
    #   @return [Types::AcceptChannelHandshakeDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/AcceptChannelHandshakeResponse AWS API Documentation
    #
    class AcceptChannelHandshakeResponse < Struct.new(
      :channel_handshake_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to insufficient permissions.
    #
    # @!attribute [rw] message
    #   A message describing the access denial.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the access denial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a canceled channel handshake.
    #
    # @!attribute [rw] id
    #   The unique identifier of the canceled handshake.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the canceled handshake.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the canceled handshake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CancelChannelHandshakeDetail AWS API Documentation
    #
    class CancelChannelHandshakeDetail < Struct.new(
      :id,
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the handshake request.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the channel handshake to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CancelChannelHandshakeRequest AWS API Documentation
    #
    class CancelChannelHandshakeRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_handshake_detail
    #   Details of the canceled channel handshake.
    #   @return [Types::CancelChannelHandshakeDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CancelChannelHandshakeResponse AWS API Documentation
    #
    class CancelChannelHandshakeResponse < Struct.new(
      :channel_handshake_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the payload data for different types of channel handshakes.
    #
    # @note ChannelHandshakePayload is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] start_service_period_payload
    #   Payload for starting a service period handshake.
    #   @return [Types::StartServicePeriodPayload]
    #
    # @!attribute [rw] revoke_service_period_payload
    #   Payload for revoking a service period handshake.
    #   @return [Types::RevokeServicePeriodPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ChannelHandshakePayload AWS API Documentation
    #
    class ChannelHandshakePayload < Struct.new(
      :start_service_period_payload,
      :revoke_service_period_payload,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StartServicePeriodPayload < ChannelHandshakePayload; end
      class RevokeServicePeriodPayload < ChannelHandshakePayload; end
      class Unknown < ChannelHandshakePayload; end
    end

    # Summary information about a channel handshake.
    #
    # @!attribute [rw] id
    #   The unique identifier of the handshake.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the handshake.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier associated with the handshake.
    #   @return [String]
    #
    # @!attribute [rw] handshake_type
    #   The type of the handshake.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The AWS account ID of the handshake owner.
    #   @return [String]
    #
    # @!attribute [rw] sender_account_id
    #   The AWS account ID of the handshake sender.
    #   @return [String]
    #
    # @!attribute [rw] sender_display_name
    #   The display name of the handshake sender.
    #   @return [String]
    #
    # @!attribute [rw] receiver_account_id
    #   The AWS account ID of the handshake receiver.
    #   @return [String]
    #
    # @!attribute [rw] associated_resource_id
    #   The identifier of the resource associated with the handshake.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   Detailed information about the handshake.
    #   @return [Types::HandshakeDetail]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the handshake was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the handshake was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the handshake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ChannelHandshakeSummary AWS API Documentation
    #
    class ChannelHandshakeSummary < Struct.new(
      :id,
      :arn,
      :catalog,
      :handshake_type,
      :owner_account_id,
      :sender_account_id,
      :sender_display_name,
      :receiver_account_id,
      :associated_resource_id,
      :detail,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   A message describing the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that caused the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that caused the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a newly created channel handshake.
    #
    # @!attribute [rw] id
    #   The unique identifier of the created handshake.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created handshake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateChannelHandshakeDetail AWS API Documentation
    #
    class CreateChannelHandshakeDetail < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] handshake_type
    #   The type of handshake to create (e.g., start service period, revoke
    #   service period).
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier for the handshake request.
    #   @return [String]
    #
    # @!attribute [rw] associated_resource_identifier
    #   The identifier of the resource associated with this handshake.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The payload containing specific details for the handshake type.
    #   @return [Types::ChannelHandshakePayload]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with the channel handshake.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateChannelHandshakeRequest AWS API Documentation
    #
    class CreateChannelHandshakeRequest < Struct.new(
      :handshake_type,
      :catalog,
      :associated_resource_identifier,
      :payload,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_handshake_detail
    #   Details of the created channel handshake.
    #   @return [Types::CreateChannelHandshakeDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateChannelHandshakeResponse AWS API Documentation
    #
    class CreateChannelHandshakeResponse < Struct.new(
      :channel_handshake_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a newly created program management account.
    #
    # @!attribute [rw] id
    #   The unique identifier of the created program management account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created program management
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateProgramManagementAccountDetail AWS API Documentation
    #
    class CreateProgramManagementAccountDetail < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the program management account.
    #   @return [String]
    #
    # @!attribute [rw] program
    #   The program type for the management account.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A human-readable name for the program management account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID to associate with the program management account.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with the program management account.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateProgramManagementAccountRequest AWS API Documentation
    #
    class CreateProgramManagementAccountRequest < Struct.new(
      :catalog,
      :program,
      :display_name,
      :account_id,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] program_management_account_detail
    #   Details of the created program management account.
    #   @return [Types::CreateProgramManagementAccountDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateProgramManagementAccountResponse AWS API Documentation
    #
    class CreateProgramManagementAccountResponse < Struct.new(
      :program_management_account_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a newly created relationship.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created relationship.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the created relationship.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateRelationshipDetail AWS API Documentation
    #
    class CreateRelationshipDetail < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association for the relationship (e.g., reseller,
    #   distributor).
    #   @return [String]
    #
    # @!attribute [rw] program_management_account_identifier
    #   The identifier of the program management account for this
    #   relationship.
    #   @return [String]
    #
    # @!attribute [rw] associated_account_id
    #   The AWS account ID to associate in this relationship.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A human-readable name for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] resale_account_model
    #   The resale account model for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] sector
    #   The business sector for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with the relationship.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] requested_support_plan
    #   The support plan requested for this relationship.
    #   @return [Types::SupportPlan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateRelationshipRequest AWS API Documentation
    #
    class CreateRelationshipRequest < Struct.new(
      :catalog,
      :association_type,
      :program_management_account_identifier,
      :associated_account_id,
      :display_name,
      :resale_account_model,
      :sector,
      :client_token,
      :tags,
      :requested_support_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relationship_detail
    #   Details of the created relationship.
    #   @return [Types::CreateRelationshipDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateRelationshipResponse AWS API Documentation
    #
    class CreateRelationshipResponse < Struct.new(
      :relationship_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the program management account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the program management account to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/DeleteProgramManagementAccountRequest AWS API Documentation
    #
    class DeleteProgramManagementAccountRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/DeleteProgramManagementAccountResponse AWS API Documentation
    #
    class DeleteProgramManagementAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog
    #   The catalog identifier for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the relationship to delete.
    #   @return [String]
    #
    # @!attribute [rw] program_management_account_identifier
    #   The identifier of the program management account associated with the
    #   relationship.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/DeleteRelationshipRequest AWS API Documentation
    #
    class DeleteRelationshipRequest < Struct.new(
      :catalog,
      :identifier,
      :program_management_account_identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/DeleteRelationshipResponse AWS API Documentation
    #
    class DeleteRelationshipResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog
    #   The catalog identifier for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] program_management_account_identifier
    #   The identifier of the program management account associated with the
    #   relationship.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the relationship to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/GetRelationshipRequest AWS API Documentation
    #
    class GetRelationshipRequest < Struct.new(
      :catalog,
      :program_management_account_identifier,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relationship_detail
    #   Details of the requested relationship.
    #   @return [Types::RelationshipDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/GetRelationshipResponse AWS API Documentation
    #
    class GetRelationshipResponse < Struct.new(
      :relationship_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about different types of handshakes.
    #
    # @note HandshakeDetail is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HandshakeDetail corresponding to the set member.
    #
    # @!attribute [rw] start_service_period_handshake_detail
    #   Details for a start service period handshake.
    #   @return [Types::StartServicePeriodHandshakeDetail]
    #
    # @!attribute [rw] revoke_service_period_handshake_detail
    #   Details for a revoke service period handshake.
    #   @return [Types::RevokeServicePeriodHandshakeDetail]
    #
    # @!attribute [rw] program_management_account_handshake_detail
    #   Details for a program management account handshake.
    #   @return [Types::ProgramManagementAccountHandshakeDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/HandshakeDetail AWS API Documentation
    #
    class HandshakeDetail < Struct.new(
      :start_service_period_handshake_detail,
      :revoke_service_period_handshake_detail,
      :program_management_account_handshake_detail,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StartServicePeriodHandshakeDetail < HandshakeDetail; end
      class RevokeServicePeriodHandshakeDetail < HandshakeDetail; end
      class ProgramManagementAccountHandshakeDetail < HandshakeDetail; end
      class Unknown < HandshakeDetail; end
    end

    # An internal server error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   A message describing the internal server error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] handshake_type
    #   Filter results by handshake type.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier to filter handshakes.
    #   @return [String]
    #
    # @!attribute [rw] participant_type
    #   Filter by participant type (sender or receiver).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] statuses
    #   Filter results by handshake status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] associated_resource_identifiers
    #   Filter by associated resource identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] handshake_type_filters
    #   Type-specific filters for handshakes.
    #   @return [Types::ListChannelHandshakesTypeFilters]
    #
    # @!attribute [rw] handshake_type_sort
    #   Type-specific sorting options for handshakes.
    #   @return [Types::ListChannelHandshakesTypeSort]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListChannelHandshakesRequest AWS API Documentation
    #
    class ListChannelHandshakesRequest < Struct.new(
      :handshake_type,
      :catalog,
      :participant_type,
      :max_results,
      :statuses,
      :associated_resource_identifiers,
      :handshake_type_filters,
      :handshake_type_sort,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of channel handshakes matching the criteria.
    #   @return [Array<Types::ChannelHandshakeSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListChannelHandshakesResponse AWS API Documentation
    #
    class ListChannelHandshakesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type-specific filters for listing channel handshakes.
    #
    # @note ListChannelHandshakesTypeFilters is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] start_service_period_type_filters
    #   Filters specific to start service period handshakes.
    #   @return [Types::StartServicePeriodTypeFilters]
    #
    # @!attribute [rw] revoke_service_period_type_filters
    #   Filters specific to revoke service period handshakes.
    #   @return [Types::RevokeServicePeriodTypeFilters]
    #
    # @!attribute [rw] program_management_account_type_filters
    #   Filters specific to program management account handshakes.
    #   @return [Types::ProgramManagementAccountTypeFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListChannelHandshakesTypeFilters AWS API Documentation
    #
    class ListChannelHandshakesTypeFilters < Struct.new(
      :start_service_period_type_filters,
      :revoke_service_period_type_filters,
      :program_management_account_type_filters,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StartServicePeriodTypeFilters < ListChannelHandshakesTypeFilters; end
      class RevokeServicePeriodTypeFilters < ListChannelHandshakesTypeFilters; end
      class ProgramManagementAccountTypeFilters < ListChannelHandshakesTypeFilters; end
      class Unknown < ListChannelHandshakesTypeFilters; end
    end

    # Type-specific sorting options for listing channel handshakes.
    #
    # @note ListChannelHandshakesTypeSort is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] start_service_period_type_sort
    #   Sorting options specific to start service period handshakes.
    #   @return [Types::StartServicePeriodTypeSort]
    #
    # @!attribute [rw] revoke_service_period_type_sort
    #   Sorting options specific to revoke service period handshakes.
    #   @return [Types::RevokeServicePeriodTypeSort]
    #
    # @!attribute [rw] program_management_account_type_sort
    #   Sorting options specific to program management account handshakes.
    #   @return [Types::ProgramManagementAccountTypeSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListChannelHandshakesTypeSort AWS API Documentation
    #
    class ListChannelHandshakesTypeSort < Struct.new(
      :start_service_period_type_sort,
      :revoke_service_period_type_sort,
      :program_management_account_type_sort,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StartServicePeriodTypeSort < ListChannelHandshakesTypeSort; end
      class RevokeServicePeriodTypeSort < ListChannelHandshakesTypeSort; end
      class ProgramManagementAccountTypeSort < ListChannelHandshakesTypeSort; end
      class Unknown < ListChannelHandshakesTypeSort; end
    end

    # @!attribute [rw] catalog
    #   The catalog identifier to filter accounts.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] display_names
    #   Filter by display names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] programs
    #   Filter by program types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_ids
    #   Filter by AWS account IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statuses
    #   Filter by program management account statuses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort
    #   Sorting options for the results.
    #   @return [Types::ListProgramManagementAccountsSortBase]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListProgramManagementAccountsRequest AWS API Documentation
    #
    class ListProgramManagementAccountsRequest < Struct.new(
      :catalog,
      :max_results,
      :display_names,
      :programs,
      :account_ids,
      :statuses,
      :sort,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of program management accounts matching the criteria.
    #   @return [Array<Types::ProgramManagementAccountSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListProgramManagementAccountsResponse AWS API Documentation
    #
    class ListProgramManagementAccountsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Base sorting configuration for program management accounts.
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListProgramManagementAccountsSortBase AWS API Documentation
    #
    class ListProgramManagementAccountsSortBase < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier to filter relationships.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_account_ids
    #   Filter by associated AWS account IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] association_types
    #   Filter by association types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] display_names
    #   Filter by display names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] program_management_account_identifiers
    #   Filter by program management account identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort
    #   Sorting options for the results.
    #   @return [Types::ListRelationshipsSortBase]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListRelationshipsRequest AWS API Documentation
    #
    class ListRelationshipsRequest < Struct.new(
      :catalog,
      :max_results,
      :associated_account_ids,
      :association_types,
      :display_names,
      :program_management_account_identifiers,
      :sort,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of relationships matching the criteria.
    #   @return [Array<Types::RelationshipSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListRelationshipsResponse AWS API Documentation
    #
    class ListRelationshipsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Base sorting configuration for relationships.
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListRelationshipsSortBase AWS API Documentation
    #
    class ListRelationshipsSortBase < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Key-value pairs associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for partner-led support plans.
    #
    # @!attribute [rw] coverage
    #   The coverage level for partner-led support.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the partner-led support.
    #   @return [String]
    #
    # @!attribute [rw] tam_location
    #   The location of the Technical Account Manager (TAM).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/PartnerLedSupport AWS API Documentation
    #
    class PartnerLedSupport < Struct.new(
      :coverage,
      :provider,
      :tam_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to program management account handshakes.
    #
    # @!attribute [rw] program
    #   The program associated with the handshake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ProgramManagementAccountHandshakeDetail AWS API Documentation
    #
    class ProgramManagementAccountHandshakeDetail < Struct.new(
      :program)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a program management account.
    #
    # @!attribute [rw] id
    #   The unique identifier of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision number of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier associated with the account.
    #   @return [String]
    #
    # @!attribute [rw] program
    #   The program type for the management account.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID associated with the program management account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the account was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the account was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] start_date
    #   The start date of the program management account.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the program management account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ProgramManagementAccountSummary AWS API Documentation
    #
    class ProgramManagementAccountSummary < Struct.new(
      :id,
      :revision,
      :catalog,
      :program,
      :display_name,
      :account_id,
      :arn,
      :created_at,
      :updated_at,
      :start_date,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type-specific filters for program management accounts.
    #
    # @!attribute [rw] programs
    #   Filter by program types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ProgramManagementAccountTypeFilters AWS API Documentation
    #
    class ProgramManagementAccountTypeFilters < Struct.new(
      :programs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type-specific sorting options for program management accounts.
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ProgramManagementAccountTypeSort AWS API Documentation
    #
    class ProgramManagementAccountTypeSort < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a rejected channel handshake.
    #
    # @!attribute [rw] id
    #   The unique identifier of the rejected handshake.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rejected handshake.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the rejected handshake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RejectChannelHandshakeDetail AWS API Documentation
    #
    class RejectChannelHandshakeDetail < Struct.new(
      :id,
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the handshake request.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the channel handshake to reject.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RejectChannelHandshakeRequest AWS API Documentation
    #
    class RejectChannelHandshakeRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_handshake_detail
    #   Details of the rejected channel handshake.
    #   @return [Types::RejectChannelHandshakeDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RejectChannelHandshakeResponse AWS API Documentation
    #
    class RejectChannelHandshakeResponse < Struct.new(
      :channel_handshake_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a partner relationship.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision number of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier associated with the relationship.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] program_management_account_id
    #   The identifier of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] associated_account_id
    #   The AWS account ID associated in this relationship.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] resale_account_model
    #   The resale account model for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] sector
    #   The business sector for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the relationship was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the relationship was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] start_date
    #   The start date of the relationship.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RelationshipDetail AWS API Documentation
    #
    class RelationshipDetail < Struct.new(
      :arn,
      :id,
      :revision,
      :catalog,
      :association_type,
      :program_management_account_id,
      :associated_account_id,
      :display_name,
      :resale_account_model,
      :sector,
      :created_at,
      :updated_at,
      :start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a partner relationship.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision number of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier associated with the relationship.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] program_management_account_id
    #   The identifier of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] associated_account_id
    #   The AWS account ID associated in this relationship.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] sector
    #   The business sector for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the relationship was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the relationship was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] start_date
    #   The start date of the relationship.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RelationshipSummary AWS API Documentation
    #
    class RelationshipSummary < Struct.new(
      :arn,
      :id,
      :revision,
      :catalog,
      :association_type,
      :program_management_account_id,
      :associated_account_id,
      :display_name,
      :sector,
      :created_at,
      :updated_at,
      :start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for resold business support plans.
    #
    # @!attribute [rw] coverage
    #   The coverage level for resold business support.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ResoldBusiness AWS API Documentation
    #
    class ResoldBusiness < Struct.new(
      :coverage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for resold enterprise support plans.
    #
    # @!attribute [rw] coverage
    #   The coverage level for resold enterprise support.
    #   @return [String]
    #
    # @!attribute [rw] tam_location
    #   The location of the Technical Account Manager (TAM).
    #   @return [String]
    #
    # @!attribute [rw] charge_account_id
    #   The AWS account ID to charge for the support plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ResoldEnterprise AWS API Documentation
    #
    class ResoldEnterprise < Struct.new(
      :coverage,
      :tam_location,
      :charge_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   A message describing the resource not found error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to revoke service period handshakes.
    #
    # @!attribute [rw] note
    #   A note explaining the reason for revoking the service period.
    #   @return [String]
    #
    # @!attribute [rw] service_period_type
    #   The type of service period being revoked.
    #   @return [String]
    #
    # @!attribute [rw] minimum_notice_days
    #   The minimum number of days notice required for revocation.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start date of the service period being revoked.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end date of the service period being revoked.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RevokeServicePeriodHandshakeDetail AWS API Documentation
    #
    class RevokeServicePeriodHandshakeDetail < Struct.new(
      :note,
      :service_period_type,
      :minimum_notice_days,
      :start_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Payload for revoke service period handshake requests.
    #
    # @!attribute [rw] program_management_account_identifier
    #   The identifier of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] note
    #   A note explaining the reason for revoking the service period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RevokeServicePeriodPayload AWS API Documentation
    #
    class RevokeServicePeriodPayload < Struct.new(
      :program_management_account_identifier,
      :note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters specific to revoke service period handshakes.
    #
    # @!attribute [rw] service_period_types
    #   Filter by service period types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RevokeServicePeriodTypeFilters AWS API Documentation
    #
    class RevokeServicePeriodTypeFilters < Struct.new(
      :service_period_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sorting options specific to revoke service period handshakes.
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RevokeServicePeriodTypeSort AWS API Documentation
    #
    class RevokeServicePeriodTypeSort < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service quota limit.
    #
    # @!attribute [rw] message
    #   A message describing the service quota exceeded error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that would exceed the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that would exceed the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code identifying the specific quota that would be exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to start service period handshakes.
    #
    # @!attribute [rw] note
    #   A note providing additional information about the service period.
    #   @return [String]
    #
    # @!attribute [rw] service_period_type
    #   The type of service period being started.
    #   @return [String]
    #
    # @!attribute [rw] minimum_notice_days
    #   The minimum number of days notice required for changes.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start date of the service period.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end date of the service period.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/StartServicePeriodHandshakeDetail AWS API Documentation
    #
    class StartServicePeriodHandshakeDetail < Struct.new(
      :note,
      :service_period_type,
      :minimum_notice_days,
      :start_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Payload for start service period handshake requests.
    #
    # @!attribute [rw] program_management_account_identifier
    #   The identifier of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] note
    #   A note providing additional information about the service period.
    #   @return [String]
    #
    # @!attribute [rw] service_period_type
    #   The type of service period being started.
    #   @return [String]
    #
    # @!attribute [rw] minimum_notice_days
    #   The minimum number of days notice required for changes.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The end date of the service period.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/StartServicePeriodPayload AWS API Documentation
    #
    class StartServicePeriodPayload < Struct.new(
      :program_management_account_identifier,
      :note,
      :service_period_type,
      :minimum_notice_days,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters specific to start service period handshakes.
    #
    # @!attribute [rw] service_period_types
    #   Filter by service period types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/StartServicePeriodTypeFilters AWS API Documentation
    #
    class StartServicePeriodTypeFilters < Struct.new(
      :service_period_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sorting options specific to start service period handshakes.
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/StartServicePeriodTypeSort AWS API Documentation
    #
    class StartServicePeriodTypeSort < Struct.new(
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for different types of support plans.
    #
    # @note SupportPlan is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] resold_business
    #   Configuration for resold business support plans.
    #   @return [Types::ResoldBusiness]
    #
    # @!attribute [rw] resold_enterprise
    #   Configuration for resold enterprise support plans.
    #   @return [Types::ResoldEnterprise]
    #
    # @!attribute [rw] partner_led_support
    #   Configuration for partner-led support plans.
    #   @return [Types::PartnerLedSupport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/SupportPlan AWS API Documentation
    #
    class SupportPlan < Struct.new(
      :resold_business,
      :resold_enterprise,
      :partner_led_support,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ResoldBusiness < SupportPlan; end
      class ResoldEnterprise < SupportPlan; end
      class PartnerLedSupport < SupportPlan; end
      class Unknown < SupportPlan; end
    end

    # A key-value pair that can be associated with a resource.
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/Tag AWS API Documentation
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
    #   Key-value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was throttled due to too many requests being sent in a
    # short period.
    #
    # @!attribute [rw] message
    #   A message describing the throttling error.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ThrottlingException AWS API Documentation
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
    #   The keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Contains details about an updated program management account.
    #
    # @!attribute [rw] id
    #   The unique identifier of the updated program management account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated program management
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The new revision number of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The updated display name of the program management account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UpdateProgramManagementAccountDetail AWS API Documentation
    #
    class UpdateProgramManagementAccountDetail < Struct.new(
      :id,
      :arn,
      :revision,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the program management account.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the program management account to update.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision number of the program management account.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The new display name for the program management account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UpdateProgramManagementAccountRequest AWS API Documentation
    #
    class UpdateProgramManagementAccountRequest < Struct.new(
      :catalog,
      :identifier,
      :revision,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] program_management_account_detail
    #   Details of the updated program management account.
    #   @return [Types::UpdateProgramManagementAccountDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UpdateProgramManagementAccountResponse AWS API Documentation
    #
    class UpdateProgramManagementAccountResponse < Struct.new(
      :program_management_account_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an updated relationship.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated relationship.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the updated relationship.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The new revision number of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The updated display name of the relationship.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UpdateRelationshipDetail AWS API Documentation
    #
    class UpdateRelationshipDetail < Struct.new(
      :arn,
      :id,
      :revision,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the relationship to update.
    #   @return [String]
    #
    # @!attribute [rw] program_management_account_identifier
    #   The identifier of the program management account associated with the
    #   relationship.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision number of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The new display name for the relationship.
    #   @return [String]
    #
    # @!attribute [rw] requested_support_plan
    #   The updated support plan for the relationship.
    #   @return [Types::SupportPlan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UpdateRelationshipRequest AWS API Documentation
    #
    class UpdateRelationshipRequest < Struct.new(
      :catalog,
      :identifier,
      :program_management_account_identifier,
      :revision,
      :display_name,
      :requested_support_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relationship_detail
    #   Details of the updated relationship.
    #   @return [Types::UpdateRelationshipDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UpdateRelationshipResponse AWS API Documentation
    #
    class UpdateRelationshipResponse < Struct.new(
      :relationship_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed validation due to invalid input parameters.
    #
    # @!attribute [rw] message
    #   A message describing the validation error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a field that failed validation.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The validation error code for the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A descriptive message about the validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

