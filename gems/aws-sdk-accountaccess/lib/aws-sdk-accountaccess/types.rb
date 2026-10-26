# frozen_string_literal: true

# This is generated code!

module Aws::AccountAccess
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource you are trying to create already exists. To retrieve the existing resource, use the corresponding Get operation.</p>
    # @!attribute message
    #   @return [String]
    class AlreadyCreatedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an account access manager application.</p>
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The tenant identifier associated with the application.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the application was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the application was last updated.</p>
    #   @return [Time]
    class ApplicationSummary < Struct.new(
      nil,
      :application_arn,
      :tenant_id,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_source
    #   <p>Specifies the identity source for the application. The identity source defines the IAM Identity Center instance that provides principals for entitlements.</p>
    #   @return [Types::IdentitySource]
    # @!attribute tags
    #   <p>Specifies the tags to assign to the application.</p>
    #   @return [Hash<String, String>]
    class CreateApplicationRequest < Struct.new(
      nil,
      :identity_source,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the created application.</p>
    #   @return [String]
    class CreateApplicationResponse < Struct.new(
      nil,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>Specifies the ARN of the application to create the entitlement for.</p>
    #   @return [String]
    # @!attribute entitlement
    #   <p>Specifies the entitlement configuration, including the principal and the IAM role to grant access to.</p>
    #   @return [Types::Entitlement]
    class CreateEntitlementRequest < Struct.new(
      nil,
      :application_arn,
      :entitlement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlement_id
    #   <p>The unique identifier of the created entitlement.</p>
    #   @return [String]
    class CreateEntitlementResponse < Struct.new(
      nil,
      :entitlement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>Specifies the ARN of the application to delete.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>Specifies the ARN of the application that the entitlement belongs to.</p>
    #   @return [String]
    # @!attribute entitlement_id
    #   <p>Specifies the unique identifier of the entitlement to delete.</p>
    #   @return [String]
    class DeleteEntitlementRequest < Struct.new(
      nil,
      :application_arn,
      :entitlement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEntitlementResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the entitlement configuration for an account access manager application, defining which principal can assume which IAM role.</p>
    # @!attribute principal_role
    #   <p>The principal-to-role mapping for the entitlement.</p>
    #   @return [Types::PrincipalRoleEntitlement]
    class Entitlement < Struct.new(
      :principal_role,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PrincipalRole < Entitlement; end
      class Unknown < Entitlement; end
    end

    # <p>Contains detailed information about an entitlement, including the principal, IAM role, and target account.</p>
    # @!attribute principal_role
    #   <p>The principal-to-role mapping details for the entitlement, including the target account.</p>
    #   @return [Types::PrincipalRoleEntitlementDetails]
    class EntitlementDetails < Struct.new(
      :principal_role,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PrincipalRole < EntitlementDetails; end
      class Unknown < EntitlementDetails; end
    end

    # <p>Specifies filter criteria for listing entitlements.</p>
    # @!attribute principal_role
    #   <p>The principal-to-role filter criteria for narrowing entitlement results.</p>
    #   @return [Types::PrincipalRoleEntitlementFilter]
    class EntitlementFilter < Struct.new(
      nil,
      :principal_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an entitlement.</p>
    # @!attribute principal_role
    #   <p>The principal-to-role mapping summary for the entitlement.</p>
    #   @return [Types::PrincipalRoleEntitlementSummary]
    class EntitlementSummary < Struct.new(
      :principal_role,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PrincipalRole < EntitlementSummary; end
      class Unknown < EntitlementSummary; end
    end

    # <p>Contains information about an entitlement in a list result.</p>
    # @!attribute entitlement_id
    #   <p>The unique identifier of the entitlement.</p>
    #   @return [String]
    # @!attribute entitlement
    #   <p>The summary information for the entitlement.</p>
    #   @return [Types::EntitlementSummary]
    # @!attribute created_at
    #   <p>The date and time when the entitlement was created.</p>
    #   @return [Time]
    class EntitlementsListMember < Struct.new(
      nil,
      :entitlement_id,
      :entitlement,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an error that occurred during application processing.</p>
    # @!attribute code
    #   <p>The error code that identifies the type of error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable message that describes the error.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>Specifies the ARN of the application to retrieve.</p>
    #   @return [String]
    class GetApplicationRequest < Struct.new(
      nil,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_source
    #   <p>The identity source details for the application, including the IAM Identity Center instance configuration.</p>
    #   @return [Types::IdentitySourceDetails]
    # @!attribute status
    #   <p>The current status of the application.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The tenant identifier associated with the application.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the application was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the application was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags associated with the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>The error details if the application is in a failed state.</p>
    #   @return [Types::ErrorDetails]
    class GetApplicationResponse < Struct.new(
      nil,
      :identity_source,
      :status,
      :tenant_id,
      :created_at,
      :updated_at,
      :tags,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>Specifies the ARN of the application that the entitlement belongs to.</p>
    #   @return [String]
    # @!attribute entitlement_id
    #   <p>Specifies the unique identifier of the entitlement to retrieve.</p>
    #   @return [String]
    class GetEntitlementRequest < Struct.new(
      nil,
      :application_arn,
      :entitlement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The ARN of the application that the entitlement belongs to.</p>
    #   @return [String]
    # @!attribute entitlement_id
    #   <p>The unique identifier of the entitlement.</p>
    #   @return [String]
    # @!attribute entitlement
    #   <p>The entitlement details, including the principal, IAM role, and target account.</p>
    #   @return [Types::EntitlementDetails]
    # @!attribute created_at
    #   <p>The date and time when the entitlement was created.</p>
    #   @return [Time]
    class GetEntitlementResponse < Struct.new(
      nil,
      :application_arn,
      :entitlement_id,
      :entitlement,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the IAM Identity Center instance to use as the identity source for an application.</p>
    # @!attribute instance_arn
    #   <p>The ARN of the IAM Identity Center instance.</p>
    #   @return [String]
    class IdentityCenter < Struct.new(
      nil,
      :instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about the IAM Identity Center configuration for an application.</p>
    # @!attribute instance_arn
    #   <p>The ARN of the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The ARN of the IAM Identity Center application created for this account access manager application.</p>
    #   @return [String]
    class IdentityCenterDetails < Struct.new(
      nil,
      :instance_arn,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a user or group from IAM Identity Center.</p>
    # @!attribute user_id
    #   <p>The unique identifier of a user in IAM Identity Center.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The unique identifier of a group in IAM Identity Center.</p>
    #   @return [String]
    class IdentityCenterPrincipal < Struct.new(
      :user_id,
      :group_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UserId < IdentityCenterPrincipal; end
      class GroupId < IdentityCenterPrincipal; end
      class Unknown < IdentityCenterPrincipal; end
    end

    # <p>Specifies filter criteria for an IAM Identity Center principal.</p>
    # @!attribute user_id
    #   <p>The unique identifier of a user in IAM Identity Center to filter by.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The unique identifier of a group in IAM Identity Center to filter by.</p>
    #   @return [String]
    class IdentityCenterPrincipalFilter < Struct.new(
      :user_id,
      :group_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UserId < IdentityCenterPrincipalFilter; end
      class GroupId < IdentityCenterPrincipalFilter; end
      class Unknown < IdentityCenterPrincipalFilter; end
    end

    # <p>Specifies the identity source for an account access manager application.</p>
    # @!attribute identity_center
    #   <p>The IAM Identity Center instance to use as the identity source.</p>
    #   @return [Types::IdentityCenter]
    class IdentitySource < Struct.new(
      :identity_center,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IdentityCenter < IdentitySource; end
      class Unknown < IdentitySource; end
    end

    # <p>Contains detailed information about the identity source for an application.</p>
    # @!attribute identity_center
    #   <p>The IAM Identity Center configuration details for the identity source.</p>
    #   @return [Types::IdentityCenterDetails]
    class IdentitySourceDetails < Struct.new(
      :identity_center,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IdentityCenter < IdentitySourceDetails; end
      class Unknown < IdentitySourceDetails; end
    end

    # <p>An internal service error occurred. Try your request again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies the pagination token from a previous call to retrieve the next set of results.</p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>The list of applications.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>Specifies the ARN of the application to list entitlements for.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Specifies filter criteria to narrow the entitlements returned. You can filter by principal, IAM role, or account.</p>
    #   @return [Types::EntitlementFilter]
    # @!attribute next_token
    #   <p>Specifies the pagination token from a previous call to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListEntitlementsRequest < Struct.new(
      nil,
      :application_arn,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlements
    #   <p>The list of entitlements for the specified application.</p>
    #   @return [Array<Types::EntitlementsListMember>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListEntitlementsResponse < Struct.new(
      nil,
      :entitlements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specifies the ARN of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a principal (user or group) that can be granted entitlements.</p>
    # @!attribute identity_center
    #   <p>The IAM Identity Center principal (user or group).</p>
    #   @return [Types::IdentityCenterPrincipal]
    class Principal < Struct.new(
      :identity_center,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IdentityCenter < Principal; end
      class Unknown < Principal; end
    end

    # <p>Specifies filter criteria for a principal.</p>
    # @!attribute identity_center
    #   <p>The IAM Identity Center principal filter criteria.</p>
    #   @return [Types::IdentityCenterPrincipalFilter]
    class PrincipalFilter < Struct.new(
      :identity_center,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IdentityCenter < PrincipalFilter; end
      class Unknown < PrincipalFilter; end
    end

    # <p>Specifies a principal-to-role entitlement that grants an IAM Identity Center principal permission to assume an IAM role.</p>
    # @!attribute principal
    #   <p>The principal (user or group) that is granted access to assume the IAM role.</p>
    #   @return [Types::Principal]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that the principal can assume.</p>
    #   @return [String]
    class PrincipalRoleEntitlement < Struct.new(
      nil,
      :principal,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a principal-to-role entitlement, including the target account.</p>
    # @!attribute principal
    #   <p>The principal (user or group) that is granted access to assume the IAM role.</p>
    #   @return [Types::Principal]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that the principal can assume.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The 12-digit Amazon Web Services account ID where the IAM role resides.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The friendly name of the Amazon Web Services account where the IAM role resides.</p>
    #   @return [String]
    class PrincipalRoleEntitlementDetails < Struct.new(
      nil,
      :principal,
      :role_arn,
      :account,
      :account_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies filter criteria for principal-to-role entitlements. All specified criteria must match for an entitlement to be returned.</p>
    # @!attribute principal
    #   <p>The principal to filter entitlements by.</p>
    #   @return [Types::PrincipalFilter]
    # @!attribute role_arn
    #   <p>The IAM role ARN to filter entitlements by.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The 12-digit Amazon Web Services account ID to filter entitlements by.</p>
    #   @return [String]
    class PrincipalRoleEntitlementFilter < Struct.new(
      nil,
      :principal,
      :role_arn,
      :account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a principal-to-role entitlement.</p>
    # @!attribute principal
    #   <p>The principal (user or group) that is granted access to assume the IAM role.</p>
    #   @return [Types::Principal]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that the principal can assume.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The 12-digit Amazon Web Services account ID where the IAM role resides.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The friendly name of the Amazon Web Services account where the IAM role resides.</p>
    #   @return [String]
    class PrincipalRoleEntitlementSummary < Struct.new(
      nil,
      :principal,
      :role_arn,
      :account,
      :account_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist. Verify that the resource identifier is correct and that the resource exists in the current Region.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds a service quota for your account.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specifies the ARN of the resource to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the tags to add to the resource.</p>
    #   @return [Hash<String, String>]
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

    # <p>The request was denied due to request throttling. Try your request again later.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specifies the ARN of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specifies the tag keys to remove from the resource.</p>
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

    # <p>The input does not satisfy the constraints specified by the service. Check your request parameters and retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
