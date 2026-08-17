# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AccountAccess
  module Types

    # You do not have sufficient access to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you are trying to create already exists. To retrieve the
    # existing resource, use the corresponding Get operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/AlreadyCreatedException AWS API Documentation
    #
    class AlreadyCreatedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an account access manager
    # application.
    #
    # @!attribute [rw] application_arn
    #   The ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The tenant identifier associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the application was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the application was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :application_arn,
      :tenant_id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_source
    #   Specifies the identity source for the application. The identity
    #   source defines the IAM Identity Center instance that provides
    #   principals for entitlements.
    #   @return [Types::IdentitySource]
    #
    # @!attribute [rw] tags
    #   Specifies the tags to assign to the application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :identity_source,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the created application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application to create the entitlement for.
    #   @return [String]
    #
    # @!attribute [rw] entitlement
    #   Specifies the entitlement configuration, including the principal and
    #   the IAM role to grant access to.
    #   @return [Types::Entitlement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/CreateEntitlementRequest AWS API Documentation
    #
    class CreateEntitlementRequest < Struct.new(
      :application_arn,
      :entitlement)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entitlement_id
    #   The unique identifier of the created entitlement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/CreateEntitlementResponse AWS API Documentation
    #
    class CreateEntitlementResponse < Struct.new(
      :entitlement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application that the entitlement belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_id
    #   Specifies the unique identifier of the entitlement to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/DeleteEntitlementRequest AWS API Documentation
    #
    class DeleteEntitlementRequest < Struct.new(
      :application_arn,
      :entitlement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/DeleteEntitlementResponse AWS API Documentation
    #
    class DeleteEntitlementResponse < Aws::EmptyStructure; end

    # Specifies the entitlement configuration for an account access manager
    # application, defining which principal can assume which IAM role.
    #
    # @note Entitlement is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] principal_role
    #   The principal-to-role mapping for the entitlement.
    #   @return [Types::PrincipalRoleEntitlement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/Entitlement AWS API Documentation
    #
    class Entitlement < Struct.new(
      :principal_role,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PrincipalRole < Entitlement; end
      class Unknown < Entitlement; end
    end

    # Contains detailed information about an entitlement, including the
    # principal, IAM role, and target account.
    #
    # @note EntitlementDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EntitlementDetails corresponding to the set member.
    #
    # @!attribute [rw] principal_role
    #   The principal-to-role mapping details for the entitlement, including
    #   the target account.
    #   @return [Types::PrincipalRoleEntitlementDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/EntitlementDetails AWS API Documentation
    #
    class EntitlementDetails < Struct.new(
      :principal_role,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PrincipalRole < EntitlementDetails; end
      class Unknown < EntitlementDetails; end
    end

    # Specifies filter criteria for listing entitlements.
    #
    # @!attribute [rw] principal_role
    #   The principal-to-role filter criteria for narrowing entitlement
    #   results.
    #   @return [Types::PrincipalRoleEntitlementFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/EntitlementFilter AWS API Documentation
    #
    class EntitlementFilter < Struct.new(
      :principal_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an entitlement.
    #
    # @note EntitlementSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EntitlementSummary corresponding to the set member.
    #
    # @!attribute [rw] principal_role
    #   The principal-to-role mapping summary for the entitlement.
    #   @return [Types::PrincipalRoleEntitlementSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/EntitlementSummary AWS API Documentation
    #
    class EntitlementSummary < Struct.new(
      :principal_role,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PrincipalRole < EntitlementSummary; end
      class Unknown < EntitlementSummary; end
    end

    # Contains information about an entitlement in a list result.
    #
    # @!attribute [rw] entitlement_id
    #   The unique identifier of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] entitlement
    #   The summary information for the entitlement.
    #   @return [Types::EntitlementSummary]
    #
    # @!attribute [rw] created_at
    #   The date and time when the entitlement was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/EntitlementsListMember AWS API Documentation
    #
    class EntitlementsListMember < Struct.new(
      :entitlement_id,
      :entitlement,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an error that occurred during application
    # processing.
    #
    # @!attribute [rw] code
    #   The error code that identifies the type of error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_source
    #   The identity source details for the application, including the IAM
    #   Identity Center instance configuration.
    #   @return [Types::IdentitySourceDetails]
    #
    # @!attribute [rw] status
    #   The current status of the application.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The tenant identifier associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the application was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   The error details if the application is in a failed state.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
      :identity_source,
      :status,
      :tenant_id,
      :created_at,
      :updated_at,
      :tags,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application that the entitlement belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_id
    #   Specifies the unique identifier of the entitlement to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/GetEntitlementRequest AWS API Documentation
    #
    class GetEntitlementRequest < Struct.new(
      :application_arn,
      :entitlement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The ARN of the application that the entitlement belongs to.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_id
    #   The unique identifier of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] entitlement
    #   The entitlement details, including the principal, IAM role, and
    #   target account.
    #   @return [Types::EntitlementDetails]
    #
    # @!attribute [rw] created_at
    #   The date and time when the entitlement was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/GetEntitlementResponse AWS API Documentation
    #
    class GetEntitlementResponse < Struct.new(
      :application_arn,
      :entitlement_id,
      :entitlement,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the IAM Identity Center instance to use as the identity
    # source for an application.
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/IdentityCenter AWS API Documentation
    #
    class IdentityCenter < Struct.new(
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about the IAM Identity Center
    # configuration for an application.
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The ARN of the IAM Identity Center application created for this
    #   account access manager application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/IdentityCenterDetails AWS API Documentation
    #
    class IdentityCenterDetails < Struct.new(
      :instance_arn,
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a user or group from IAM Identity Center.
    #
    # @note IdentityCenterPrincipal is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IdentityCenterPrincipal is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdentityCenterPrincipal corresponding to the set member.
    #
    # @!attribute [rw] user_id
    #   The unique identifier of a user in IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The unique identifier of a group in IAM Identity Center.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/IdentityCenterPrincipal AWS API Documentation
    #
    class IdentityCenterPrincipal < Struct.new(
      :user_id,
      :group_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class UserId < IdentityCenterPrincipal; end
      class GroupId < IdentityCenterPrincipal; end
      class Unknown < IdentityCenterPrincipal; end
    end

    # Specifies filter criteria for an IAM Identity Center principal.
    #
    # @note IdentityCenterPrincipalFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] user_id
    #   The unique identifier of a user in IAM Identity Center to filter by.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The unique identifier of a group in IAM Identity Center to filter
    #   by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/IdentityCenterPrincipalFilter AWS API Documentation
    #
    class IdentityCenterPrincipalFilter < Struct.new(
      :user_id,
      :group_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class UserId < IdentityCenterPrincipalFilter; end
      class GroupId < IdentityCenterPrincipalFilter; end
      class Unknown < IdentityCenterPrincipalFilter; end
    end

    # Specifies the identity source for an account access manager
    # application.
    #
    # @note IdentitySource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] identity_center
    #   The IAM Identity Center instance to use as the identity source.
    #   @return [Types::IdentityCenter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/IdentitySource AWS API Documentation
    #
    class IdentitySource < Struct.new(
      :identity_center,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IdentityCenter < IdentitySource; end
      class Unknown < IdentitySource; end
    end

    # Contains detailed information about the identity source for an
    # application.
    #
    # @note IdentitySourceDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdentitySourceDetails corresponding to the set member.
    #
    # @!attribute [rw] identity_center
    #   The IAM Identity Center configuration details for the identity
    #   source.
    #   @return [Types::IdentityCenterDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/IdentitySourceDetails AWS API Documentation
    #
    class IdentitySourceDetails < Struct.new(
      :identity_center,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IdentityCenter < IdentitySourceDetails; end
      class Unknown < IdentitySourceDetails; end
    end

    # An internal service error occurred. Try your request again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies the pagination token from a previous call to retrieve the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   The list of applications.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next set of results. This value is null when there are no more
    #   results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application to list entitlements for.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Specifies filter criteria to narrow the entitlements returned. You
    #   can filter by principal, IAM role, or account.
    #   @return [Types::EntitlementFilter]
    #
    # @!attribute [rw] next_token
    #   Specifies the pagination token from a previous call to retrieve the
    #   next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ListEntitlementsRequest AWS API Documentation
    #
    class ListEntitlementsRequest < Struct.new(
      :application_arn,
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entitlements
    #   The list of entitlements for the specified application.
    #   @return [Array<Types::EntitlementsListMember>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next set of results. This value is null when there are no more
    #   results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ListEntitlementsResponse AWS API Documentation
    #
    class ListEntitlementsResponse < Struct.new(
      :entitlements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specifies the ARN of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a principal (user or group) that can be granted
    # entitlements.
    #
    # @note Principal is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Principal is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Principal corresponding to the set member.
    #
    # @!attribute [rw] identity_center
    #   The IAM Identity Center principal (user or group).
    #   @return [Types::IdentityCenterPrincipal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :identity_center,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IdentityCenter < Principal; end
      class Unknown < Principal; end
    end

    # Specifies filter criteria for a principal.
    #
    # @note PrincipalFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] identity_center
    #   The IAM Identity Center principal filter criteria.
    #   @return [Types::IdentityCenterPrincipalFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/PrincipalFilter AWS API Documentation
    #
    class PrincipalFilter < Struct.new(
      :identity_center,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IdentityCenter < PrincipalFilter; end
      class Unknown < PrincipalFilter; end
    end

    # Specifies a principal-to-role entitlement that grants an IAM Identity
    # Center principal permission to assume an IAM role.
    #
    # @!attribute [rw] principal
    #   The principal (user or group) that is granted access to assume the
    #   IAM role.
    #   @return [Types::Principal]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that the principal can assume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/PrincipalRoleEntitlement AWS API Documentation
    #
    class PrincipalRoleEntitlement < Struct.new(
      :principal,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about a principal-to-role entitlement,
    # including the target account.
    #
    # @!attribute [rw] principal
    #   The principal (user or group) that is granted access to assume the
    #   IAM role.
    #   @return [Types::Principal]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that the principal can assume.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The 12-digit Amazon Web Services account ID where the IAM role
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The friendly name of the Amazon Web Services account where the IAM
    #   role resides.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/PrincipalRoleEntitlementDetails AWS API Documentation
    #
    class PrincipalRoleEntitlementDetails < Struct.new(
      :principal,
      :role_arn,
      :account,
      :account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies filter criteria for principal-to-role entitlements. All
    # specified criteria must match for an entitlement to be returned.
    #
    # @!attribute [rw] principal
    #   The principal to filter entitlements by.
    #   @return [Types::PrincipalFilter]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN to filter entitlements by.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The 12-digit Amazon Web Services account ID to filter entitlements
    #   by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/PrincipalRoleEntitlementFilter AWS API Documentation
    #
    class PrincipalRoleEntitlementFilter < Struct.new(
      :principal,
      :role_arn,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a principal-to-role entitlement.
    #
    # @!attribute [rw] principal
    #   The principal (user or group) that is granted access to assume the
    #   IAM role.
    #   @return [Types::Principal]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that the principal can assume.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The 12-digit Amazon Web Services account ID where the IAM role
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The friendly name of the Amazon Web Services account where the IAM
    #   role resides.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/PrincipalRoleEntitlementSummary AWS API Documentation
    #
    class PrincipalRoleEntitlementSummary < Struct.new(
      :principal,
      :role_arn,
      :account,
      :account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist. Verify that the resource
    # identifier is correct and that the resource exists in the current
    # Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a service quota for your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specifies the ARN of the resource to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling. Try your request
    # again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specifies the ARN of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies the tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The input does not satisfy the constraints specified by the service.
    # Check your request parameters and retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/account-access-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

