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
    #   Indicates whether principals outside your organization can be
    #   associated with a resource share.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreateResourceShareRequest AWS API Documentation
    #
    class CreateResourceShareRequest < Struct.new(
      :name,
      :resource_arns,
      :principals,
      :tags,
      :allow_external_principals,
      :client_token)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceShareRequest AWS API Documentation
    #
    class DisassociateResourceShareRequest < Struct.new(
      :resource_share_arn,
      :resource_arns,
      :principals,
      :client_token)
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
    #   The association type.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   The status of the association.
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
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_associations
    #   Information about the association.
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
    #   Indicates whether the principal belongs to the same organization as
    #   the AWS account that owns the resource share.
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
      :status,
      :status_message,
      :creation_time,
      :last_updated_time)
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
    #   Indicates whether principals outside your organization can be
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
      :last_updated_time)
      include Aws::Structure
    end

    # Describes an association with a resource share.
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
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
    #   Indicates whether the principal belongs to the same organization as
    #   the AWS account that owns the resource share.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareAssociation AWS API Documentation
    #
    class ResourceShareAssociation < Struct.new(
      :resource_share_arn,
      :associated_entity,
      :association_type,
      :status,
      :status_message,
      :creation_time,
      :last_updated_time,
      :external)
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
    #   The resources associated with the resource share.
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
    #   Indicates whether principals outside your organization can be
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
      include Aws::Structure
    end

  end
end
