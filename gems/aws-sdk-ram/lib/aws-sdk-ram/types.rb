# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RAM
  module Types

    # @note When making an API call, you may pass AcceptResourceShareInvitationRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_invitation_arn: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_invitation_arn
    #   The Amazon Resource Name (ARN) of the invitation.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AcceptResourceShareInvitationRequest AWS API Documentation
    #
    class AcceptResourceShareInvitationRequest < Struct.new(
      :resource_share_invitation_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitation
    #   Information about the invitation.
    #   @return [Types::ResourceShareInvitation]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AcceptResourceShareInvitationResponse AWS API Documentation
    #
    class AcceptResourceShareInvitationResponse < Struct.new(
      :resource_share_invitation,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateResourceSharePermissionRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         permission_arn: "String", # required
    #         replace: false,
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] permission_arn
    #   The ARN of the AWS RAM permission to associate with the resource
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] replace
    #   Indicates whether the permission should replace the permissions that
    #   are currently associated with the resource share. Use `true` to
    #   replace the current permissions. Use `false` to add the permission
    #   to the current permission.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceSharePermissionRequest AWS API Documentation
    #
    class AssociateResourceSharePermissionRequest < Struct.new(
      :resource_share_arn,
      :permission_arn,
      :replace,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   Indicates whether the request succeeded.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceSharePermissionResponse AWS API Documentation
    #
    class AssociateResourceSharePermissionResponse < Struct.new(
      :return_value,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         resource_arns: ["String"],
    #         principals: ["String"],
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARN) of the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   The principals.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceShareRequest AWS API Documentation
    #
    class AssociateResourceShareRequest < Struct.new(
      :resource_share_arn,
      :resource_arns,
      :principals,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_associations
    #   Information about the associations.
    #   @return [Array<Types::ResourceShareAssociation>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceShareResponse AWS API Documentation
    #
    class AssociateResourceShareResponse < Struct.new(
      :resource_share_associations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         resource_arns: ["String"],
    #         principals: ["String"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         allow_external_principals: false,
    #         client_token: "String",
    #         permission_arns: ["String"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARN) of the resources to associate with
    #   the resource share.
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   The principals to associate with the resource share. The possible
    #   values are IDs of AWS accounts, the ARN of an OU or organization
    #   from AWS Organizations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] allow_external_principals
    #   Indicates whether principals outside your AWS organization can be
    #   associated with a resource share.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] permission_arns
    #   The ARNs of the permissions to associate with the resource share. If
    #   you do not specify an ARN for the permission, AWS RAM automatically
    #   attaches the default version of the permission for each resource
    #   type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreateResourceShareRequest AWS API Documentation
    #
    class CreateResourceShareRequest < Struct.new(
      :name,
      :resource_arns,
      :principals,
      :tags,
      :allow_external_principals,
      :client_token,
      :permission_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share
    #   Information about the resource share.
    #   @return [Types::ResourceShare]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreateResourceShareResponse AWS API Documentation
    #
    class CreateResourceShareResponse < Struct.new(
      :resource_share,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeleteResourceShareRequest AWS API Documentation
    #
    class DeleteResourceShareRequest < Struct.new(
      :resource_share_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   Indicates whether the request succeeded.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeleteResourceShareResponse AWS API Documentation
    #
    class DeleteResourceShareResponse < Struct.new(
      :return_value,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateResourceSharePermissionRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         permission_arn: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] permission_arn
    #   The ARN of the permission to disassociate from the resource share.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceSharePermissionRequest AWS API Documentation
    #
    class DisassociateResourceSharePermissionRequest < Struct.new(
      :resource_share_arn,
      :permission_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   Indicates whether the request succeeded.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceSharePermissionResponse AWS API Documentation
    #
    class DisassociateResourceSharePermissionResponse < Struct.new(
      :return_value,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         resource_arns: ["String"],
    #         principals: ["String"],
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   The principals.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceShareRequest AWS API Documentation
    #
    class DisassociateResourceShareRequest < Struct.new(
      :resource_share_arn,
      :resource_arns,
      :principals,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_associations
    #   Information about the associations.
    #   @return [Array<Types::ResourceShareAssociation>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceShareResponse AWS API Documentation
    #
    class DisassociateResourceShareResponse < Struct.new(
      :resource_share_associations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/EnableSharingWithAwsOrganizationRequest AWS API Documentation
    #
    class EnableSharingWithAwsOrganizationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] return_value
    #   Indicates whether the request succeeded.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/EnableSharingWithAwsOrganizationResponse AWS API Documentation
    #
    class EnableSharingWithAwsOrganizationResponse < Struct.new(
      :return_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPermissionRequest
    #   data as a hash:
    #
    #       {
    #         permission_arn: "String", # required
    #         permission_version: 1,
    #       }
    #
    # @!attribute [rw] permission_arn
    #   The ARN of the permission.
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   The identifier for the version of the permission.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetPermissionRequest AWS API Documentation
    #
    class GetPermissionRequest < Struct.new(
      :permission_arn,
      :permission_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission
    #   Information about the permission.
    #   @return [Types::ResourceSharePermissionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetPermissionResponse AWS API Documentation
    #
    class GetPermissionResponse < Struct.new(
      :permission)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcePoliciesRequest
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["String"], # required
    #         principal: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARN) of the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] principal
    #   The principal.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourcePoliciesRequest AWS API Documentation
    #
    class GetResourcePoliciesRequest < Struct.new(
      :resource_arns,
      :principal,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   A key policy document, in JSON format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourcePoliciesResponse AWS API Documentation
    #
    class GetResourcePoliciesResponse < Struct.new(
      :policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceShareAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         association_type: "PRINCIPAL", # required, accepts PRINCIPAL, RESOURCE
    #         resource_share_arns: ["String"],
    #         resource_arn: "String",
    #         principal: "String",
    #         association_status: "ASSOCIATING", # accepts ASSOCIATING, ASSOCIATED, FAILED, DISASSOCIATING, DISASSOCIATED
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] association_type
    #   The association type. Specify `PRINCIPAL` to list the principals
    #   that are associated with the specified resource share. Specify
    #   `RESOURCE` to list the resources that are associated with the
    #   specified resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. You cannot specify
    #   this parameter if the association type is `PRINCIPAL`.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal. You cannot specify this parameter if the association
    #   type is `RESOURCE`.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   The association status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareAssociationsRequest AWS API Documentation
    #
    class GetResourceShareAssociationsRequest < Struct.new(
      :association_type,
      :resource_share_arns,
      :resource_arn,
      :principal,
      :association_status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_associations
    #   Information about the associations.
    #   @return [Array<Types::ResourceShareAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareAssociationsResponse AWS API Documentation
    #
    class GetResourceShareAssociationsResponse < Struct.new(
      :resource_share_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceShareInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_invitation_arns: ["String"],
    #         resource_share_arns: ["String"],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_share_invitation_arns
    #   The Amazon Resource Names (ARN) of the invitations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareInvitationsRequest AWS API Documentation
    #
    class GetResourceShareInvitationsRequest < Struct.new(
      :resource_share_invitation_arns,
      :resource_share_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitations
    #   Information about the invitations.
    #   @return [Array<Types::ResourceShareInvitation>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareInvitationsResponse AWS API Documentation
    #
    class GetResourceShareInvitationsResponse < Struct.new(
      :resource_share_invitations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceSharesRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arns: ["String"],
    #         resource_share_status: "PENDING", # accepts PENDING, ACTIVE, FAILED, DELETING, DELETED
    #         resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #         name: "String",
    #         tag_filters: [
    #           {
    #             tag_key: "TagKey",
    #             tag_values: ["TagValue"],
    #           },
    #         ],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_share_status
    #   The status of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The type of owner.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] tag_filters
    #   One or more tag filters.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceSharesRequest AWS API Documentation
    #
    class GetResourceSharesRequest < Struct.new(
      :resource_share_arns,
      :resource_share_status,
      :resource_owner,
      :name,
      :tag_filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_shares
    #   Information about the resource shares.
    #   @return [Array<Types::ResourceShare>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceSharesResponse AWS API Documentation
    #
    class GetResourceSharesResponse < Struct.new(
      :resource_shares,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A client token input parameter was reused with an operation, but at
    # least one of the other input parameters is different from the previous
    # call to the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A client token is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidClientTokenException AWS API Documentation
    #
    class InvalidClientTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified value for MaxResults is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidMaxResultsException AWS API Documentation
    #
    class InvalidMaxResultsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified value for NextToken is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource type is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidResourceTypeException AWS API Documentation
    #
    class InvalidResourceTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested state transition is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidStateTransitionException AWS API Documentation
    #
    class InvalidStateTransitionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPendingInvitationResourcesRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_invitation_arn: "String", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_share_invitation_arn
    #   The Amazon Resource Name (ARN) of the invitation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPendingInvitationResourcesRequest AWS API Documentation
    #
    class ListPendingInvitationResourcesRequest < Struct.new(
      :resource_share_invitation_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   Information about the resources included the resource share.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPendingInvitationResourcesResponse AWS API Documentation
    #
    class ListPendingInvitationResourcesResponse < Struct.new(
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_type
    #   Specifies the resource type for which to list permissions. For
    #   example, to list only permissions that apply to EC2 subnets, specify
    #   `ec2:Subnet`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionsRequest AWS API Documentation
    #
    class ListPermissionsRequest < Struct.new(
      :resource_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   Information about the permissions.
    #   @return [Array<Types::ResourceSharePermissionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionsResponse AWS API Documentation
    #
    class ListPermissionsResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPrincipalsRequest
    #   data as a hash:
    #
    #       {
    #         resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #         resource_arn: "String",
    #         principals: ["String"],
    #         resource_type: "String",
    #         resource_share_arns: ["String"],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_owner
    #   The type of owner.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] principals
    #   The principals.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   Valid values: `codebuild:Project` \| `codebuild:ReportGroup` \|
    #   `ec2:CapacityReservation` \| `ec2:DedicatedHost` \| `ec2:Subnet` \|
    #   `ec2:TrafficMirrorTarget` \| `ec2:TransitGateway` \|
    #   `imagebuilder:Component` \| `imagebuilder:Image` \|
    #   `imagebuilder:ImageRecipe` \| `license-manager:LicenseConfiguration`
    #   I `resource-groups:Group` \| `rds:Cluster` \|
    #   `route53resolver:ResolverRule`
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPrincipalsRequest AWS API Documentation
    #
    class ListPrincipalsRequest < Struct.new(
      :resource_owner,
      :resource_arn,
      :principals,
      :resource_type,
      :resource_share_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] principals
    #   The principals.
    #   @return [Array<Types::Principal>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPrincipalsResponse AWS API Documentation
    #
    class ListPrincipalsResponse < Struct.new(
      :principals,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceSharePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceSharePermissionsRequest AWS API Documentation
    #
    class ListResourceSharePermissionsRequest < Struct.new(
      :resource_share_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   The permissions associated with the resource share.
    #   @return [Array<Types::ResourceSharePermissionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceSharePermissionsResponse AWS API Documentation
    #
    class ListResourceSharePermissionsResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceTypesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceTypesRequest AWS API Documentation
    #
    class ListResourceTypesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_types
    #   The shareable resource types supported by AWS RAM.
    #   @return [Array<Types::ServiceNameAndResourceType>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceTypesResponse AWS API Documentation
    #
    class ListResourceTypesResponse < Struct.new(
      :resource_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourcesRequest
    #   data as a hash:
    #
    #       {
    #         resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #         principal: "String",
    #         resource_type: "String",
    #         resource_arns: ["String"],
    #         resource_share_arns: ["String"],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_owner
    #   The type of owner.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   Valid values: `codebuild:Project` \| `codebuild:ReportGroup` \|
    #   `ec2:CapacityReservation` \| `ec2:DedicatedHost` \| `ec2:Subnet` \|
    #   `ec2:TrafficMirrorTarget` \| `ec2:TransitGateway` \|
    #   `imagebuilder:Component` \| `imagebuilder:Image` \|
    #   `imagebuilder:ImageRecipe` \| `license-manager:LicenseConfiguration`
    #   I `resource-groups:Group` \| `rds:Cluster` \|
    #   `route53resolver:ResolverRule`
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARN) of the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourcesRequest AWS API Documentation
    #
    class ListResourcesRequest < Struct.new(
      :resource_owner,
      :principal,
      :resource_type,
      :resource_arns,
      :resource_share_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   Information about the resources.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourcesResponse AWS API Documentation
    #
    class ListResourcesResponse < Struct.new(
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The format of an Amazon Resource Name (ARN) is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/MalformedArnException AWS API Documentation
    #
    class MalformedArnException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A required input parameter is missing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/MissingRequiredParameterException AWS API Documentation
    #
    class MissingRequiredParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation is not permitted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/OperationNotPermittedException AWS API Documentation
    #
    class OperationNotPermittedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a principal for use with AWS Resource Access Manager.
    #
    # @!attribute [rw] id
    #   The ID of the principal.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the principal was associated with the resource share.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] external
    #   Indicates whether the principal belongs to the same AWS organization
    #   as the AWS account that owns the resource share.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :id,
      :resource_share_arn,
      :creation_time,
      :last_updated_time,
      :external)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PromoteResourceShareCreatedFromPolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The ARN of the resource share to promote.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromoteResourceShareCreatedFromPolicyRequest AWS API Documentation
    #
    class PromoteResourceShareCreatedFromPolicyRequest < Struct.new(
      :resource_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   Indicates whether the request succeeded.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromoteResourceShareCreatedFromPolicyResponse AWS API Documentation
    #
    class PromoteResourceShareCreatedFromPolicyResponse < Struct.new(
      :return_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RejectResourceShareInvitationRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_invitation_arn: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_invitation_arn
    #   The Amazon Resource Name (ARN) of the invitation.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/RejectResourceShareInvitationRequest AWS API Documentation
    #
    class RejectResourceShareInvitationRequest < Struct.new(
      :resource_share_invitation_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitation
    #   Information about the invitation.
    #   @return [Types::ResourceShareInvitation]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/RejectResourceShareInvitationResponse AWS API Documentation
    #
    class RejectResourceShareInvitationResponse < Struct.new(
      :resource_share_invitation,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource associated with a resource share.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_arn
    #   The ARN of the resource group. This value is returned only if the
    #   resource is a resource group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the resource was associated with the resource share.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the association was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :arn,
      :type,
      :resource_share_arn,
      :resource_group_arn,
      :status,
      :status_message,
      :creation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Resource Name (ARN) was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceArnNotFoundException AWS API Documentation
    #
    class ResourceArnNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource share.
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] owning_account_id
    #   The ID of the AWS account that owns the resource share.
    #   @return [String]
    #
    # @!attribute [rw] allow_external_principals
    #   Indicates whether principals outside your AWS organization can be
    #   associated with a resource share.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource share.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] creation_time
    #   The time when the resource share was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the resource share was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] feature_set
    #   Indicates how the resource share was created. Possible values
    #   include:
    #
    #   * `CREATED_FROM_POLICY` - Indicates that the resource share was
    #     created from an AWS Identity and Access Management (AWS IAM)
    #     policy attached to a resource. These resource shares are visible
    #     only to the AWS account that created it. They cannot be modified
    #     in AWS RAM.
    #
    #   * `PROMOTING_TO_STANDARD` - The resource share is in the process of
    #     being promoted. For more information, see
    #     PromoteResourceShareCreatedFromPolicy.
    #
    #   * `STANDARD` - Indicates that the resource share was created in AWS
    #     RAM using the console or APIs. These resource shares are visible
    #     to all principals. They can be modified in AWS RAM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShare AWS API Documentation
    #
    class ResourceShare < Struct.new(
      :resource_share_arn,
      :name,
      :owning_account_id,
      :allow_external_principals,
      :status,
      :status_message,
      :tags,
      :creation_time,
      :last_updated_time,
      :feature_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an association with a resource share.
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] associated_entity
    #   The associated entity. For resource associations, this is the ARN of
    #   the resource. For principal associations, this is the ID of an AWS
    #   account or the ARN of an OU or organization from AWS Organizations.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The association type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of the association.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the association was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] external
    #   Indicates whether the principal belongs to the same AWS organization
    #   as the AWS account that owns the resource share.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareAssociation AWS API Documentation
    #
    class ResourceShareAssociation < Struct.new(
      :resource_share_arn,
      :resource_share_name,
      :associated_entity,
      :association_type,
      :status,
      :status_message,
      :creation_time,
      :last_updated_time,
      :external)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an invitation to join a resource share.
    #
    # @!attribute [rw] resource_share_invitation_arn
    #   The Amazon Resource Name (ARN) of the invitation.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] sender_account_id
    #   The ID of the AWS account that sent the invitation.
    #   @return [String]
    #
    # @!attribute [rw] receiver_account_id
    #   The ID of the AWS account that received the invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_timestamp
    #   The date and time when the invitation was sent.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the invitation.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_associations
    #   To view the resources associated with a pending resource share
    #   invitation, use [ ListPendingInvitationResources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_ListPendingInvitationResources.html
    #   @return [Array<Types::ResourceShareAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitation AWS API Documentation
    #
    class ResourceShareInvitation < Struct.new(
      :resource_share_invitation_arn,
      :resource_share_name,
      :resource_share_arn,
      :sender_account_id,
      :receiver_account_id,
      :invitation_timestamp,
      :status,
      :resource_share_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The invitation was already accepted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitationAlreadyAcceptedException AWS API Documentation
    #
    class ResourceShareInvitationAlreadyAcceptedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The invitation was already rejected.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitationAlreadyRejectedException AWS API Documentation
    #
    class ResourceShareInvitationAlreadyRejectedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Resource Name (ARN) for an invitation was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitationArnNotFoundException AWS API Documentation
    #
    class ResourceShareInvitationArnNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The invitation is expired.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitationExpiredException AWS API Documentation
    #
    class ResourceShareInvitationExpiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource share exceeds the limit for your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareLimitExceededException AWS API Documentation
    #
    class ResourceShareLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an AWS RAM permission.
    #
    # @!attribute [rw] arn
    #   The ARN of the permission.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The identifier for the version of the permission.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   The identifier for the version of the permission that is set as the
    #   default version.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the permission.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type to which the permission applies.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   The permission's effect and actions in JSON format. The `effect`
    #   indicates whether the actions are allowed or denied. The `actions`
    #   list the API actions to which the principal is granted or denied
    #   access.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time when the permission was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the permission was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceSharePermissionDetail AWS API Documentation
    #
    class ResourceSharePermissionDetail < Struct.new(
      :arn,
      :version,
      :default_version,
      :name,
      :resource_type,
      :permission,
      :creation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a permission that is associated with a resource
    # share.
    #
    # @!attribute [rw] arn
    #   The ARN of the permission.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The identifier for the version of the permission.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   The identifier for the version of the permission that is set as the
    #   default version.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the permission.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource to which the permission applies.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the permission.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time when the permission was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the permission was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceSharePermissionSummary AWS API Documentation
    #
    class ResourceSharePermissionSummary < Struct.new(
      :arn,
      :version,
      :default_version,
      :name,
      :resource_type,
      :status,
      :creation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service could not respond to the request due to an internal
    # problem.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ServerInternalException AWS API Documentation
    #
    class ServerInternalException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the shareable resource types and the AWS services to
    # which they belong.
    #
    # @!attribute [rw] resource_type
    #   The shareable resource types.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS services to which the resources belong.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ServiceNameAndResourceType AWS API Documentation
    #
    class ServiceNameAndResourceType < Struct.new(
      :resource_type,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is not available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to filter information based on tags.
    #
    # @note When making an API call, you may pass TagFilter
    #   data as a hash:
    #
    #       {
    #         tag_key: "TagKey",
    #         tag_values: ["TagValue"],
    #       }
    #
    # @!attribute [rw] tag_key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   The tag values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :tag_key,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested tags exceed the limit for your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagLimitExceededException AWS API Documentation
    #
    class TagLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified tag is a reserved word and cannot be used.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagPolicyViolationException AWS API Documentation
    #
    class TagPolicyViolationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_share_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # A specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UnknownResourceException AWS API Documentation
    #
    class UnknownResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_share_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         name: "String",
    #         allow_external_principals: false,
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] allow_external_principals
    #   Indicates whether principals outside your AWS organization can be
    #   associated with a resource share.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UpdateResourceShareRequest AWS API Documentation
    #
    class UpdateResourceShareRequest < Struct.new(
      :resource_share_arn,
      :name,
      :allow_external_principals,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share
    #   Information about the resource share.
    #   @return [Types::ResourceShare]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UpdateResourceShareResponse AWS API Documentation
    #
    class UpdateResourceShareResponse < Struct.new(
      :resource_share,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
