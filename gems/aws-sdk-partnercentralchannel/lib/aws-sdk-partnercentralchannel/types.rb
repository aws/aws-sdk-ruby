# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralChannel
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains details about an accepted channel handshake.</p>
    # @!attribute id
    #   <p>The unique identifier of the accepted handshake.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the accepted handshake.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the accepted handshake.</p>
    #   @return [String]
    class AcceptChannelHandshakeDetail < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the handshake request.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the channel handshake to accept.</p>
    #   @return [String]
    class AcceptChannelHandshakeRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_handshake_detail
    #   <p>Details of the accepted channel handshake.</p>
    #   @return [Types::AcceptChannelHandshakeDetail]
    class AcceptChannelHandshakeResponse < Struct.new(
      nil,
      :channel_handshake_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to insufficient permissions.</p>
    # @!attribute message
    #   <p>A message describing the access denial.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the access denial.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a canceled channel handshake.</p>
    # @!attribute id
    #   <p>The unique identifier of the canceled handshake.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the canceled handshake.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the canceled handshake.</p>
    #   @return [String]
    class CancelChannelHandshakeDetail < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the handshake request.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the channel handshake to cancel.</p>
    #   @return [String]
    class CancelChannelHandshakeRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_handshake_detail
    #   <p>Details of the canceled channel handshake.</p>
    #   @return [Types::CancelChannelHandshakeDetail]
    class CancelChannelHandshakeResponse < Struct.new(
      nil,
      :channel_handshake_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the payload data for different types of channel handshakes.</p>
    # @!attribute start_service_period_payload
    #   <p>Payload for starting a service period handshake.</p>
    #   @return [Types::StartServicePeriodPayload]
    # @!attribute revoke_service_period_payload
    #   <p>Payload for revoking a service period handshake.</p>
    #   @return [Types::RevokeServicePeriodPayload]
    class ChannelHandshakePayload < Struct.new(
      :start_service_period_payload,
      :revoke_service_period_payload,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StartServicePeriodPayload < ChannelHandshakePayload; end
      class RevokeServicePeriodPayload < ChannelHandshakePayload; end
      class Unknown < ChannelHandshakePayload; end
    end

    # <p>Summary information about a channel handshake.</p>
    # @!attribute id
    #   <p>The unique identifier of the handshake.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the handshake.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier associated with the handshake.</p>
    #   @return [String]
    # @!attribute handshake_type
    #   <p>The type of the handshake.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The AWS account ID of the handshake owner.</p>
    #   @return [String]
    # @!attribute sender_account_id
    #   <p>The AWS account ID of the handshake sender.</p>
    #   @return [String]
    # @!attribute sender_display_name
    #   <p>The display name of the handshake sender.</p>
    #   @return [String]
    # @!attribute receiver_account_id
    #   <p>The AWS account ID of the handshake receiver.</p>
    #   @return [String]
    # @!attribute associated_resource_id
    #   <p>The identifier of the resource associated with the handshake.</p>
    #   @return [String]
    # @!attribute detail
    #   <p>Detailed information about the handshake.</p>
    #   @return [Types::HandshakeDetail]
    # @!attribute created_at
    #   <p>The timestamp when the handshake was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the handshake was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the handshake.</p>
    #   @return [String]
    class ChannelHandshakeSummary < Struct.new(
      nil,
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
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource.</p>
    # @!attribute message
    #   <p>A message describing the conflict.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that caused the conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that caused the conflict.</p>
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

    # <p>Contains details about a newly created channel handshake.</p>
    # @!attribute id
    #   <p>The unique identifier of the created handshake.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created handshake.</p>
    #   @return [String]
    class CreateChannelHandshakeDetail < Struct.new(
      nil,
      :id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute handshake_type
    #   <p>The type of handshake to create (e.g., start service period, revoke service period).</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier for the handshake request.</p>
    #   @return [String]
    # @!attribute associated_resource_identifier
    #   <p>The identifier of the resource associated with this handshake.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The payload containing specific details for the handshake type.</p>
    #   @return [Types::ChannelHandshakePayload]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs to associate with the channel handshake.</p>
    #   @return [Array<Types::Tag>]
    class CreateChannelHandshakeRequest < Struct.new(
      nil,
      :handshake_type,
      :catalog,
      :associated_resource_identifier,
      :payload,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_handshake_detail
    #   <p>Details of the created channel handshake.</p>
    #   @return [Types::CreateChannelHandshakeDetail]
    class CreateChannelHandshakeResponse < Struct.new(
      nil,
      :channel_handshake_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a newly created program management account.</p>
    # @!attribute id
    #   <p>The unique identifier of the created program management account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created program management account.</p>
    #   @return [String]
    class CreateProgramManagementAccountDetail < Struct.new(
      nil,
      :id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the program management account.</p>
    #   @return [String]
    # @!attribute program
    #   <p>The program type for the management account.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A human-readable name for the program management account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The AWS account ID to associate with the program management account.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs to associate with the program management account.</p>
    #   @return [Array<Types::Tag>]
    class CreateProgramManagementAccountRequest < Struct.new(
      nil,
      :catalog,
      :program,
      :display_name,
      :account_id,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute program_management_account_detail
    #   <p>Details of the created program management account.</p>
    #   @return [Types::CreateProgramManagementAccountDetail]
    class CreateProgramManagementAccountResponse < Struct.new(
      nil,
      :program_management_account_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a newly created relationship.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created relationship.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the created relationship.</p>
    #   @return [String]
    class CreateRelationshipDetail < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the relationship.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association for the relationship (e.g., reseller, distributor).</p>
    #   @return [String]
    # @!attribute program_management_account_identifier
    #   <p>The identifier of the program management account for this relationship.</p>
    #   @return [String]
    # @!attribute associated_account_id
    #   <p>The AWS account ID to associate in this relationship.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A human-readable name for the relationship.</p>
    #   @return [String]
    # @!attribute resale_account_model
    #   <p>The resale account model for the relationship.</p>
    #   @return [String]
    # @!attribute sector
    #   <p>The business sector for the relationship.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs to associate with the relationship.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute requested_support_plan
    #   <p>The support plan requested for this relationship.</p>
    #   @return [Types::SupportPlan]
    class CreateRelationshipRequest < Struct.new(
      nil,
      :catalog,
      :association_type,
      :program_management_account_identifier,
      :associated_account_id,
      :display_name,
      :resale_account_model,
      :sector,
      :client_token,
      :tags,
      :requested_support_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute relationship_detail
    #   <p>Details of the created relationship.</p>
    #   @return [Types::CreateRelationshipDetail]
    class CreateRelationshipResponse < Struct.new(
      nil,
      :relationship_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the program management account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the program management account to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteProgramManagementAccountRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteProgramManagementAccountResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the relationship.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the relationship to delete.</p>
    #   @return [String]
    # @!attribute program_management_account_identifier
    #   <p>The identifier of the program management account associated with the relationship.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteRelationshipRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :program_management_account_identifier,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRelationshipResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the relationship.</p>
    #   @return [String]
    # @!attribute program_management_account_identifier
    #   <p>The identifier of the program management account associated with the relationship.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the relationship to retrieve.</p>
    #   @return [String]
    class GetRelationshipRequest < Struct.new(
      nil,
      :catalog,
      :program_management_account_identifier,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute relationship_detail
    #   <p>Details of the requested relationship.</p>
    #   @return [Types::RelationshipDetail]
    class GetRelationshipResponse < Struct.new(
      nil,
      :relationship_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about different types of handshakes.</p>
    # @!attribute start_service_period_handshake_detail
    #   <p>Details for a start service period handshake.</p>
    #   @return [Types::StartServicePeriodHandshakeDetail]
    # @!attribute revoke_service_period_handshake_detail
    #   <p>Details for a revoke service period handshake.</p>
    #   @return [Types::RevokeServicePeriodHandshakeDetail]
    # @!attribute program_management_account_handshake_detail
    #   <p>Details for a program management account handshake.</p>
    #   @return [Types::ProgramManagementAccountHandshakeDetail]
    class HandshakeDetail < Struct.new(
      :start_service_period_handshake_detail,
      :revoke_service_period_handshake_detail,
      :program_management_account_handshake_detail,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StartServicePeriodHandshakeDetail < HandshakeDetail; end
      class RevokeServicePeriodHandshakeDetail < HandshakeDetail; end
      class ProgramManagementAccountHandshakeDetail < HandshakeDetail; end
      class Unknown < HandshakeDetail; end
    end

    # <p>An internal server error occurred while processing the request.</p>
    # @!attribute message
    #   <p>A message describing the internal server error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute handshake_type
    #   <p>Filter results by handshake type.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier to filter handshakes.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>Filter by participant type (sender or receiver).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute statuses
    #   <p>Filter results by handshake status.</p>
    #   @return [Array<String>]
    # @!attribute associated_resource_identifiers
    #   <p>Filter by associated resource identifiers.</p>
    #   @return [Array<String>]
    # @!attribute handshake_type_filters
    #   <p>Type-specific filters for handshakes.</p>
    #   @return [Types::ListChannelHandshakesTypeFilters]
    # @!attribute handshake_type_sort
    #   <p>Type-specific sorting options for handshakes.</p>
    #   @return [Types::ListChannelHandshakesTypeSort]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results.</p>
    #   @return [String]
    class ListChannelHandshakesRequest < Struct.new(
      nil,
      :handshake_type,
      :catalog,
      :participant_type,
      :max_results,
      :statuses,
      :associated_resource_identifiers,
      :handshake_type_filters,
      :handshake_type_sort,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of channel handshakes matching the criteria.</p>
    #   @return [Array<Types::ChannelHandshakeSummary>]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results, if available.</p>
    #   @return [String]
    class ListChannelHandshakesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Type-specific filters for listing channel handshakes.</p>
    # @!attribute start_service_period_type_filters
    #   <p>Filters specific to start service period handshakes.</p>
    #   @return [Types::StartServicePeriodTypeFilters]
    # @!attribute revoke_service_period_type_filters
    #   <p>Filters specific to revoke service period handshakes.</p>
    #   @return [Types::RevokeServicePeriodTypeFilters]
    # @!attribute program_management_account_type_filters
    #   <p>Filters specific to program management account handshakes.</p>
    #   @return [Types::ProgramManagementAccountTypeFilters]
    class ListChannelHandshakesTypeFilters < Struct.new(
      :start_service_period_type_filters,
      :revoke_service_period_type_filters,
      :program_management_account_type_filters,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StartServicePeriodTypeFilters < ListChannelHandshakesTypeFilters; end
      class RevokeServicePeriodTypeFilters < ListChannelHandshakesTypeFilters; end
      class ProgramManagementAccountTypeFilters < ListChannelHandshakesTypeFilters; end
      class Unknown < ListChannelHandshakesTypeFilters; end
    end

    # <p>Type-specific sorting options for listing channel handshakes.</p>
    # @!attribute start_service_period_type_sort
    #   <p>Sorting options specific to start service period handshakes.</p>
    #   @return [Types::StartServicePeriodTypeSort]
    # @!attribute revoke_service_period_type_sort
    #   <p>Sorting options specific to revoke service period handshakes.</p>
    #   @return [Types::RevokeServicePeriodTypeSort]
    # @!attribute program_management_account_type_sort
    #   <p>Sorting options specific to program management account handshakes.</p>
    #   @return [Types::ProgramManagementAccountTypeSort]
    class ListChannelHandshakesTypeSort < Struct.new(
      :start_service_period_type_sort,
      :revoke_service_period_type_sort,
      :program_management_account_type_sort,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StartServicePeriodTypeSort < ListChannelHandshakesTypeSort; end
      class RevokeServicePeriodTypeSort < ListChannelHandshakesTypeSort; end
      class ProgramManagementAccountTypeSort < ListChannelHandshakesTypeSort; end
      class Unknown < ListChannelHandshakesTypeSort; end
    end

    # @!attribute catalog
    #   <p>The catalog identifier to filter accounts.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute display_names
    #   <p>Filter by display names.</p>
    #   @return [Array<String>]
    # @!attribute programs
    #   <p>Filter by program types.</p>
    #   @return [Array<String>]
    # @!attribute account_ids
    #   <p>Filter by AWS account IDs.</p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p>Filter by program management account statuses.</p>
    #   @return [Array<String>]
    # @!attribute sort
    #   <p>Sorting options for the results.</p>
    #   @return [Types::ListProgramManagementAccountsSortBase]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results.</p>
    #   @return [String]
    class ListProgramManagementAccountsRequest < Struct.new(
      nil,
      :catalog,
      :max_results,
      :display_names,
      :programs,
      :account_ids,
      :statuses,
      :sort,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of program management accounts matching the criteria.</p>
    #   @return [Array<Types::ProgramManagementAccountSummary>]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results, if available.</p>
    #   @return [String]
    class ListProgramManagementAccountsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Base sorting configuration for program management accounts.</p>
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by.</p>
    #   @return [String]
    class ListProgramManagementAccountsSortBase < Struct.new(
      nil,
      :sort_order,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier to filter relationships.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute associated_account_ids
    #   <p>Filter by associated AWS account IDs.</p>
    #   @return [Array<String>]
    # @!attribute association_types
    #   <p>Filter by association types.</p>
    #   @return [Array<String>]
    # @!attribute display_names
    #   <p>Filter by display names.</p>
    #   @return [Array<String>]
    # @!attribute program_management_account_identifiers
    #   <p>Filter by program management account identifiers.</p>
    #   @return [Array<String>]
    # @!attribute sort
    #   <p>Sorting options for the results.</p>
    #   @return [Types::ListRelationshipsSortBase]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results.</p>
    #   @return [String]
    class ListRelationshipsRequest < Struct.new(
      nil,
      :catalog,
      :max_results,
      :associated_account_ids,
      :association_types,
      :display_names,
      :program_management_account_identifiers,
      :sort,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of relationships matching the criteria.</p>
    #   @return [Array<Types::RelationshipSummary>]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results, if available.</p>
    #   @return [String]
    class ListRelationshipsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Base sorting configuration for relationships.</p>
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by.</p>
    #   @return [String]
    class ListRelationshipsSortBase < Struct.new(
      nil,
      :sort_order,
      :sort_by,
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

    # @!attribute tags
    #   <p>Key-value pairs associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for partner-led support plans.</p>
    # @!attribute coverage
    #   <p>The coverage level for partner-led support.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the partner-led support.</p>
    #   @return [String]
    # @!attribute tam_location
    #   <p>The location of the Technical Account Manager (TAM).</p>
    #   @return [String]
    class PartnerLedSupport < Struct.new(
      nil,
      :coverage,
      :provider,
      :tam_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to program management account handshakes.</p>
    # @!attribute program
    #   <p>The program associated with the handshake.</p>
    #   @return [String]
    class ProgramManagementAccountHandshakeDetail < Struct.new(
      nil,
      :program,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a program management account.</p>
    # @!attribute id
    #   <p>The unique identifier of the program management account.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The current revision number of the program management account.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier associated with the account.</p>
    #   @return [String]
    # @!attribute program
    #   <p>The program type for the management account.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the program management account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The AWS account ID associated with the program management account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the program management account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the account was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the account was last updated.</p>
    #   @return [Time]
    # @!attribute start_date
    #   <p>The start date of the program management account.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the program management account.</p>
    #   @return [String]
    class ProgramManagementAccountSummary < Struct.new(
      nil,
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
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Type-specific filters for program management accounts.</p>
    # @!attribute programs
    #   <p>Filter by program types.</p>
    #   @return [Array<String>]
    class ProgramManagementAccountTypeFilters < Struct.new(
      nil,
      :programs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Type-specific sorting options for program management accounts.</p>
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by.</p>
    #   @return [String]
    class ProgramManagementAccountTypeSort < Struct.new(
      nil,
      :sort_order,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a rejected channel handshake.</p>
    # @!attribute id
    #   <p>The unique identifier of the rejected handshake.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rejected handshake.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the rejected handshake.</p>
    #   @return [String]
    class RejectChannelHandshakeDetail < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the handshake request.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the channel handshake to reject.</p>
    #   @return [String]
    class RejectChannelHandshakeRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_handshake_detail
    #   <p>Details of the rejected channel handshake.</p>
    #   @return [Types::RejectChannelHandshakeDetail]
    class RejectChannelHandshakeResponse < Struct.new(
      nil,
      :channel_handshake_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about a partner relationship.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the relationship.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the relationship.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The current revision number of the relationship.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier associated with the relationship.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association for the relationship.</p>
    #   @return [String]
    # @!attribute program_management_account_id
    #   <p>The identifier of the program management account.</p>
    #   @return [String]
    # @!attribute associated_account_id
    #   <p>The AWS account ID associated in this relationship.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the relationship.</p>
    #   @return [String]
    # @!attribute resale_account_model
    #   <p>The resale account model for the relationship.</p>
    #   @return [String]
    # @!attribute sector
    #   <p>The business sector for the relationship.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the relationship was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the relationship was last updated.</p>
    #   @return [Time]
    # @!attribute start_date
    #   <p>The start date of the relationship.</p>
    #   @return [Time]
    class RelationshipDetail < Struct.new(
      nil,
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
      :start_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a partner relationship.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the relationship.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the relationship.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The current revision number of the relationship.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier associated with the relationship.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association for the relationship.</p>
    #   @return [String]
    # @!attribute program_management_account_id
    #   <p>The identifier of the program management account.</p>
    #   @return [String]
    # @!attribute associated_account_id
    #   <p>The AWS account ID associated in this relationship.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the relationship.</p>
    #   @return [String]
    # @!attribute sector
    #   <p>The business sector for the relationship.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the relationship was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the relationship was last updated.</p>
    #   @return [Time]
    # @!attribute start_date
    #   <p>The start date of the relationship.</p>
    #   @return [Time]
    class RelationshipSummary < Struct.new(
      nil,
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
      :start_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for resold enterprise support plans.</p>
    # @!attribute coverage
    #   <p>The coverage level for resold enterprise support.</p>
    #   @return [String]
    # @!attribute tam_location
    #   <p>The location of the Technical Account Manager (TAM).</p>
    #   @return [String]
    # @!attribute charge_account_id
    #   <p>The AWS account ID to charge for the support plan.</p>
    #   @return [String]
    class ResoldEnterprise < Struct.new(
      nil,
      :coverage,
      :tam_location,
      :charge_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for resold unified operations support plans.</p>
    # @!attribute coverage
    #   <p>The coverage level for resold unified operations support.</p>
    #   @return [String]
    # @!attribute tam_location
    #   <p>The location of the Technical Account Manager (TAM).</p>
    #   @return [String]
    # @!attribute charge_account_id
    #   <p>The AWS account ID to charge for the support plan.</p>
    #   @return [String]
    class ResoldUnifiedOperations < Struct.new(
      nil,
      :coverage,
      :tam_location,
      :charge_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   <p>A message describing the resource not found error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that was not found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to revoke service period handshakes.</p>
    # @!attribute note
    #   <p>A note explaining the reason for revoking the service period.</p>
    #   @return [String]
    # @!attribute service_period_type
    #   <p>The type of service period being revoked.</p>
    #   @return [String]
    # @!attribute minimum_notice_days
    #   <p>The minimum number of days notice required for revocation.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start date of the service period being revoked.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The end date of the service period being revoked.</p>
    #   @return [Time]
    class RevokeServicePeriodHandshakeDetail < Struct.new(
      nil,
      :note,
      :service_period_type,
      :minimum_notice_days,
      :start_date,
      :end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Payload for revoke service period handshake requests.</p>
    # @!attribute program_management_account_identifier
    #   <p>The identifier of the program management account.</p>
    #   @return [String]
    # @!attribute note
    #   <p>A note explaining the reason for revoking the service period.</p>
    #   @return [String]
    class RevokeServicePeriodPayload < Struct.new(
      nil,
      :program_management_account_identifier,
      :note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters specific to revoke service period handshakes.</p>
    # @!attribute service_period_types
    #   <p>Filter by service period types.</p>
    #   @return [Array<String>]
    class RevokeServicePeriodTypeFilters < Struct.new(
      nil,
      :service_period_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sorting options specific to revoke service period handshakes.</p>
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by.</p>
    #   @return [String]
    class RevokeServicePeriodTypeSort < Struct.new(
      nil,
      :sort_order,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed a service quota limit.</p>
    # @!attribute message
    #   <p>A message describing the service quota exceeded error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that would exceed the quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that would exceed the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code identifying the specific quota that would be exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to start service period handshakes.</p>
    # @!attribute note
    #   <p>A note providing additional information about the service period.</p>
    #   @return [String]
    # @!attribute service_period_type
    #   <p>The type of service period being started.</p>
    #   @return [String]
    # @!attribute minimum_notice_days
    #   <p>The minimum number of days notice required for changes.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start date of the service period.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The end date of the service period.</p>
    #   @return [Time]
    class StartServicePeriodHandshakeDetail < Struct.new(
      nil,
      :note,
      :service_period_type,
      :minimum_notice_days,
      :start_date,
      :end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Payload for start service period handshake requests.</p>
    # @!attribute program_management_account_identifier
    #   <p>The identifier of the program management account.</p>
    #   @return [String]
    # @!attribute note
    #   <p>A note providing additional information about the service period.</p>
    #   @return [String]
    # @!attribute service_period_type
    #   <p>The type of service period being started.</p>
    #   @return [String]
    # @!attribute minimum_notice_days
    #   <p>The minimum number of days notice required for changes.</p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The end date of the service period.</p>
    #   @return [Time]
    class StartServicePeriodPayload < Struct.new(
      nil,
      :program_management_account_identifier,
      :note,
      :service_period_type,
      :minimum_notice_days,
      :end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters specific to start service period handshakes.</p>
    # @!attribute service_period_types
    #   <p>Filter by service period types.</p>
    #   @return [Array<String>]
    class StartServicePeriodTypeFilters < Struct.new(
      nil,
      :service_period_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sorting options specific to start service period handshakes.</p>
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by.</p>
    #   @return [String]
    class StartServicePeriodTypeSort < Struct.new(
      nil,
      :sort_order,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for different types of support plans.</p>
    # @!attribute resold_enterprise
    #   <p>Configuration for resold enterprise support plans.</p>
    #   @return [Types::ResoldEnterprise]
    # @!attribute partner_led_support
    #   <p>Configuration for partner-led support plans.</p>
    #   @return [Types::PartnerLedSupport]
    # @!attribute resold_unified_operations
    #   <p>Configuration for resold unified operations support plans.</p>
    #   @return [Types::ResoldUnifiedOperations]
    class SupportPlan < Struct.new(
      :resold_enterprise,
      :partner_led_support,
      :resold_unified_operations,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ResoldEnterprise < SupportPlan; end
      class PartnerLedSupport < SupportPlan; end
      class ResoldUnifiedOperations < SupportPlan; end
      class Unknown < SupportPlan; end
    end

    # <p>A key-value pair that can be associated with a resource.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
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
    #   <p>Key-value pairs to associate with the resource.</p>
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

    # <p>The request was throttled due to too many requests being sent in a short period.</p>
    # @!attribute message
    #   <p>A message describing the throttling error.</p>
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
    #   <p>The keys of the tags to remove from the resource.</p>
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

    # <p>Contains details about an updated program management account.</p>
    # @!attribute id
    #   <p>The unique identifier of the updated program management account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated program management account.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The new revision number of the program management account.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The updated display name of the program management account.</p>
    #   @return [String]
    class UpdateProgramManagementAccountDetail < Struct.new(
      nil,
      :id,
      :arn,
      :revision,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the program management account.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the program management account to update.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The current revision number of the program management account.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The new display name for the program management account.</p>
    #   @return [String]
    class UpdateProgramManagementAccountRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :revision,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute program_management_account_detail
    #   <p>Details of the updated program management account.</p>
    #   @return [Types::UpdateProgramManagementAccountDetail]
    class UpdateProgramManagementAccountResponse < Struct.new(
      nil,
      :program_management_account_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an updated relationship.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated relationship.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the updated relationship.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The new revision number of the relationship.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The updated display name of the relationship.</p>
    #   @return [String]
    class UpdateRelationshipDetail < Struct.new(
      nil,
      :arn,
      :id,
      :revision,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier for the relationship.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the relationship to update.</p>
    #   @return [String]
    # @!attribute program_management_account_identifier
    #   <p>The identifier of the program management account associated with the relationship.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The current revision number of the relationship.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The new display name for the relationship.</p>
    #   @return [String]
    # @!attribute requested_support_plan
    #   <p>The updated support plan for the relationship.</p>
    #   @return [Types::SupportPlan]
    class UpdateRelationshipRequest < Struct.new(
      nil,
      :catalog,
      :identifier,
      :program_management_account_identifier,
      :revision,
      :display_name,
      :requested_support_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute relationship_detail
    #   <p>Details of the updated relationship.</p>
    #   @return [Types::UpdateRelationshipDetail]
    class UpdateRelationshipResponse < Struct.new(
      nil,
      :relationship_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed validation due to invalid input parameters.</p>
    # @!attribute message
    #   <p>A message describing the validation error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that failed validation.</p>
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

    # <p>Information about a field that failed validation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The validation error code for the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A descriptive message about the validation error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
