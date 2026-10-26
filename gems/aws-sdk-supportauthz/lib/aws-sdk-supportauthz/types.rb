# frozen_string_literal: true

# This is generated code!

module Aws::SupportAuthZ
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permissions to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of actions authorized by a permit. Specify either all actions or a list of specific actions.</p>
    # @!attribute all_actions
    #   <p>Authorizes all available support actions.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute actions
    #   <p>A list of specific support actions to authorize. Maximum of 10 actions.</p>
    #   @return [Array<String>]
    class ActionSet < Struct.new(
      :all_actions,
      :actions,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AllActions < ActionSet; end
      class Actions < ActionSet; end
      class Unknown < ActionSet; end
    end

    # <p>A summary of a support action.</p>
    # @!attribute action
    #   <p>The name of the support action.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The AWS service associated with the support action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what the support action does.</p>
    #   @return [String]
    class ActionSummary < Struct.new(
      nil,
      :action,
      :service,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time-window condition that constrains when a support permit is valid.</p>
    # @!attribute allow_after
    #   <p>The earliest time at which the permit becomes valid.</p>
    #   @return [Time]
    # @!attribute allow_before
    #   <p>The latest time at which the permit remains valid.</p>
    #   @return [Time]
    class Condition < Struct.new(
      :allow_after,
      :allow_before,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AllowAfter < Condition; end
      class AllowBefore < Condition; end
      class Unknown < Condition; end
    end

    # <p>The request conflicts with the current state of the resource.</p>
    # @!attribute message
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

    # @!attribute permit
    #   <p>The permit definition specifying the actions, resources, and time-window conditions that the support operator is authorized to use.</p>
    #   @return [Types::Permit]
    # @!attribute name
    #   <p>A customer-chosen name for the support permit. Must be between 1 and 256 alphanumeric characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of why this permit is being created. Maximum length of 1024 characters.</p>
    #   @return [String]
    # @!attribute signing_key_info
    #   <p>The signing key information used to sign the permit. Must reference an AWS KMS key with key usage SIGN_VERIFY and key spec ECC_NIST_P384.</p>
    #   @return [Types::SigningKeyInfo]
    # @!attribute support_case_display_id
    #   <p>The display identifier of the AWS Support case associated with this permit.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service returns the existing permit without creating a duplicate.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the support permit on creation.</p>
    #   @return [Hash<String, String>]
    class CreateSupportPermitInput < Struct.new(
      nil,
      :permit,
      :name,
      :description,
      :signing_key_info,
      :support_case_display_id,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the support permit.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the support permit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the support permit.</p>
    #   @return [String]
    # @!attribute permit
    #   <p>The permit definition.</p>
    #   @return [Types::Permit]
    # @!attribute status
    #   <p>The current status of the support permit.</p>
    #   @return [String]
    # @!attribute signing_key_info
    #   <p>The signing key information for the permit.</p>
    #   @return [Types::SigningKeyInfo]
    # @!attribute created_at
    #   <p>The timestamp when the permit was created.</p>
    #   @return [Time]
    # @!attribute support_case_display_id
    #   <p>The display identifier of the support case associated with the permit.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the support permit.</p>
    #   @return [Hash<String, String>]
    class CreateSupportPermitOutput < Struct.new(
      nil,
      :name,
      :arn,
      :description,
      :permit,
      :status,
      :signing_key_info,
      :created_at,
      :support_case_display_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute support_permit_identifier
    #   <p>The Amazon Resource Name (ARN) or name of the support permit to delete.</p>
    #   @return [String]
    class DeleteSupportPermitInput < Struct.new(
      nil,
      :support_permit_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the deleted support permit.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the deleted support permit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deleted support permit.</p>
    #   @return [String]
    # @!attribute permit
    #   <p>The permit definition of the deleted permit.</p>
    #   @return [Types::Permit]
    # @!attribute status
    #   <p>The status of the support permit. Returns DELETING.</p>
    #   @return [String]
    # @!attribute signing_key_info
    #   <p>The signing key information for the deleted permit.</p>
    #   @return [Types::SigningKeyInfo]
    # @!attribute created_at
    #   <p>The timestamp when the permit was originally created.</p>
    #   @return [Time]
    # @!attribute support_case_display_id
    #   <p>The display identifier of the support case associated with the deleted permit.</p>
    #   @return [String]
    class DeleteSupportPermitOutput < Struct.new(
      nil,
      :name,
      :arn,
      :description,
      :permit,
      :status,
      :signing_key_info,
      :created_at,
      :support_case_display_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The name of the support action to retrieve.</p>
    #   @return [String]
    class GetActionInput < Struct.new(
      nil,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The name of the support action.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The AWS service associated with the support action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what the support action does.</p>
    #   @return [String]
    class GetActionOutput < Struct.new(
      nil,
      :action,
      :service,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute support_permit_identifier
    #   <p>The ARN or name of the support permit to retrieve.</p>
    #   @return [String]
    class GetSupportPermitInput < Struct.new(
      nil,
      :support_permit_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the support permit.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the support permit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the support permit.</p>
    #   @return [String]
    # @!attribute permit
    #   <p>The permit definition.</p>
    #   @return [Types::Permit]
    # @!attribute status
    #   <p>The current status of the support permit.</p>
    #   @return [String]
    # @!attribute signing_key_info
    #   <p>The signing key information for the permit.</p>
    #   @return [Types::SigningKeyInfo]
    # @!attribute created_at
    #   <p>The timestamp when the permit was created.</p>
    #   @return [Time]
    # @!attribute support_case_display_id
    #   <p>The display identifier of the support case associated with the permit.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the support permit.</p>
    #   @return [Hash<String, String>]
    class GetSupportPermitOutput < Struct.new(
      nil,
      :name,
      :arn,
      :description,
      :permit,
      :status,
      :signing_key_info,
      :created_at,
      :support_case_display_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal service error occurred. Try again later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range is 1 to 100.</p>
    #   @return [Integer]
    # @!attribute service
    #   <p>The name of the AWS service for which to list available support actions.</p>
    #   @return [String]
    class ListActionsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :service,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_summaries
    #   <p>The list of support actions.</p>
    #   @return [Array<Types::ActionSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results, or null if there are no more results.</p>
    #   @return [String]
    class ListActionsOutput < Struct.new(
      nil,
      :action_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range is 1 to 100.</p>
    #   @return [Integer]
    # @!attribute support_case_display_id
    #   <p>Filters the results by support case display identifier.</p>
    #   @return [String]
    class ListSupportPermitRequestsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :support_case_display_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute support_permit_requests
    #   <p>The list of permit requests.</p>
    #   @return [Array<Types::SupportPermitRequest>]
    # @!attribute next_token
    #   <p>The token for the next page of results, or null if there are no more results.</p>
    #   @return [String]
    class ListSupportPermitRequestsOutput < Struct.new(
      nil,
      :support_permit_requests,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range is 1 to 100.</p>
    #   @return [Integer]
    # @!attribute support_permit_statuses
    #   <p>Filters the results by support permit status. Valid values: ACTIVE, INACTIVE, DELETING.</p>
    #   @return [Array<String>]
    class ListSupportPermitsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :support_permit_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute support_permits
    #   <p>The list of support permits.</p>
    #   @return [Array<Types::SupportPermitSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results, or null if there are no more results.</p>
    #   @return [String]
    class ListSupportPermitsOutput < Struct.new(
      nil,
      :support_permits,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The permit definition specifying the authorized actions, resources, and time-window conditions for a support operator.</p>
    # @!attribute actions
    #   <p>The set of actions that the support operator is authorized to perform.</p>
    #   @return [Types::ActionSet]
    # @!attribute resources
    #   <p>The set of resources that the support operator is authorized to act upon.</p>
    #   @return [Types::ResourceSet]
    # @!attribute conditions
    #   <p>The time-window conditions that constrain when the permit is valid. Maximum of 2 conditions.</p>
    #   @return [Array<Types::Condition>]
    class Permit < Struct.new(
      nil,
      :actions,
      :resources,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_arn
    #   <p>The ARN of the permit request to reject.</p>
    #   @return [String]
    class RejectSupportPermitRequestInput < Struct.new(
      nil,
      :request_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_arn
    #   <p>The ARN of the rejected permit request.</p>
    #   @return [String]
    class RejectSupportPermitRequestOutput < Struct.new(
      nil,
      :request_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
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

    # <p>The set of resources authorized by a permit. Specify either all resources in the Region or a list of specific resources.</p>
    # @!attribute all_resources_in_region
    #   <p>Authorizes the support operator to act on all resources in the Region.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute resources
    #   <p>A list of specific resource identifiers that the support operator is authorized to act upon. Maximum of 5 resources.</p>
    #   @return [Array<String>]
    class ResourceSet < Struct.new(
      :all_resources_in_region,
      :resources,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AllResourcesInRegion < ResourceSet; end
      class Resources < ResourceSet; end
      class Unknown < ResourceSet; end
    end

    # <p>The request exceeds a service quota for your account.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code of the exceeded quota.</p>
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

    # <p>The signing key used to cryptographically sign a support permit.</p>
    # @!attribute kms_key
    #   <p>The ARN of the AWS KMS key used to sign the permit. The key must have key spec ECC_NIST_P384 and key usage SIGN_VERIFY.</p>
    #   @return [String]
    class SigningKeyInfo < Struct.new(
      :kms_key,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KmsKey < SigningKeyInfo; end
      class Unknown < SigningKeyInfo; end
    end

    # <p>A permit request from an AWS support operator.</p>
    # @!attribute request_arn
    #   <p>The ARN of the permit request.</p>
    #   @return [String]
    # @!attribute permit
    #   <p>The permit definition requested by the operator.</p>
    #   @return [Types::Permit]
    # @!attribute support_case_display_id
    #   <p>The display identifier of the support case associated with the request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the permit request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the request was last updated.</p>
    #   @return [Time]
    class SupportPermitRequest < Struct.new(
      nil,
      :request_arn,
      :permit,
      :support_case_display_id,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a support permit.</p>
    # @!attribute name
    #   <p>The name of the support permit.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the support permit.</p>
    #   @return [String]
    # @!attribute permit
    #   <p>The permit definition.</p>
    #   @return [Types::Permit]
    # @!attribute status
    #   <p>The current status of the support permit.</p>
    #   @return [String]
    # @!attribute signing_key_info
    #   <p>The signing key information for the permit.</p>
    #   @return [Types::SigningKeyInfo]
    # @!attribute created_at
    #   <p>The timestamp when the permit was created.</p>
    #   @return [Time]
    # @!attribute support_case_display_id
    #   <p>The display identifier of the support case associated with the permit.</p>
    #   @return [String]
    class SupportPermitSummary < Struct.new(
      nil,
      :name,
      :arn,
      :permit,
      :status,
      :signing_key_info,
      :created_at,
      :support_case_display_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource. Maximum of 50 tags.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request rate exceeded the allowed limit. Try again later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that fail validation. Each entry identifies the field and the reason for the constraint violation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes one specific validation failure for an input member.</p>
    # @!attribute path
    #   <p>A JSONPointer expression to the structure member whose value failed to satisfy the modeled constraints.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed description of the validation failure.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :path,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
