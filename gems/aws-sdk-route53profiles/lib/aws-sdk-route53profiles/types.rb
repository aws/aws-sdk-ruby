# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Profiles
  module Types

    # The current account doesn't have the IAM permissions required to
    # perform the specified operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the association.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tag keys and values that you want to identify the
    #   Profile association.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/AssociateProfileRequest AWS API Documentation
    #
    class AssociateProfileRequest < Struct.new(
      :name,
      :profile_id,
      :resource_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_association
    #   The association that you just created. The association has an ID
    #   that you can use to identify it in other requests, like update and
    #   delete.
    #   @return [Types::ProfileAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/AssociateProfileResponse AWS API Documentation
    #
    class AssociateProfileResponse < Struct.new(
      :profile_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name for the resource association.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Amazon resource number, ARN, of the DNS resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_properties
    #   If you are adding a DNS Firewall rule group, include also a
    #   priority. The priority indicates the processing order for the rule
    #   groups, starting with the priority assinged the lowest value.
    #
    #   The allowed values for priority are between 100 and 9900.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/AssociateResourceToProfileRequest AWS API Documentation
    #
    class AssociateResourceToProfileRequest < Struct.new(
      :name,
      :profile_id,
      :resource_arn,
      :resource_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_resource_association
    #   Infromation about the `AssociateResourceToProfile`, including a
    #   status message.
    #   @return [Types::ProfileResourceAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/AssociateResourceToProfileResponse AWS API Documentation
    #
    class AssociateResourceToProfileResponse < Struct.new(
      :profile_resource_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request you submitted conflicts with an existing request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   `ClientToken` is an idempotency token that ensures a call to
    #   `CreateProfile` completes only once. You choose the value to pass.
    #   For example, an issue might prevent you from getting a response from
    #   `CreateProfile`. In this case, safely retry your call to
    #   `CreateProfile` by using the same `CreateProfile` parameter value.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the Profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tag keys and values that you want to associate with
    #   the Route 53 Profile.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/CreateProfileRequest AWS API Documentation
    #
    class CreateProfileRequest < Struct.new(
      :client_token,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile
    #   The Profile that you just created.
    #   @return [Types::Profile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/CreateProfileResponse AWS API Documentation
    #
    class CreateProfileResponse < Struct.new(
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The ID of the Profile that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DeleteProfileRequest AWS API Documentation
    #
    class DeleteProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile
    #   Information about the `DeleteProfile` request, including the status
    #   of the request.
    #   @return [Types::Profile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DeleteProfileResponse AWS API Documentation
    #
    class DeleteProfileResponse < Struct.new(
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DisassociateProfileRequest AWS API Documentation
    #
    class DisassociateProfileRequest < Struct.new(
      :profile_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_association
    #   Information about the `DisassociateProfile` request.
    #   @return [Types::ProfileAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DisassociateProfileResponse AWS API Documentation
    #
    class DisassociateProfileResponse < Struct.new(
      :profile_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DisassociateResourceFromProfileRequest AWS API Documentation
    #
    class DisassociateResourceFromProfileRequest < Struct.new(
      :profile_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_resource_association
    #   Information about the `DisassociateResourceFromProfile` request,
    #   including the status of the request.
    #   @return [Types::ProfileResourceAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DisassociateResourceFromProfileResponse AWS API Documentation
    #
    class DisassociateResourceFromProfileResponse < Struct.new(
      :profile_resource_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_association_id
    #   The identifier of the association you want to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfileAssociationRequest AWS API Documentation
    #
    class GetProfileAssociationRequest < Struct.new(
      :profile_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_association
    #   Information about the Profile association that you specified in a
    #   `GetProfileAssociation` request.
    #   @return [Types::ProfileAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfileAssociationResponse AWS API Documentation
    #
    class GetProfileAssociationResponse < Struct.new(
      :profile_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   ID of the Profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfileRequest AWS API Documentation
    #
    class GetProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_resource_association_id
    #   The ID of the profile resource association that you want to get
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfileResourceAssociationRequest AWS API Documentation
    #
    class GetProfileResourceAssociationRequest < Struct.new(
      :profile_resource_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_resource_association
    #   Information about the Profile resource association that you
    #   specified in a `GetProfileResourceAssociation` request.
    #   @return [Types::ProfileResourceAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfileResourceAssociationResponse AWS API Documentation
    #
    class GetProfileResourceAssociationResponse < Struct.new(
      :profile_resource_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile
    #   Information about the Profile, including the status of the Profile.
    #   @return [Types::Profile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfileResponse AWS API Documentation
    #
    class GetProfileResponse < Struct.new(
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occured. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `NextToken` you provided isn;t valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters in this request are not valid.
    #
    # @!attribute [rw] field_name
    #   The parameter field name for the invalid parameter exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :field_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request caused one or more limits to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type that caused the limits to be exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that you want to return for this
    #   request. If more objects are available, in the response, a
    #   `NextToken` value, which you can use in a subsequent call to get the
    #   next batch of objects, is provided.
    #
    #   If you don't specify a value for `MaxResults`, up to 100 objects
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, at most the number of objects
    #   specified by `MaxResults` is returned. If more objects are available
    #   for retrieval, a `NextToken` value is returned in the response. To
    #   retrieve the next batch of objects, use the token that was returned
    #   for the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfileAssociationsRequest AWS API Documentation
    #
    class ListProfileAssociationsRequest < Struct.new(
      :max_results,
      :next_token,
      :profile_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If more than `MaxResults` profile associations match the specified
    #   criteria, you can submit another `ListProfileAssociations` request
    #   to get the next group of results. In the next request, specify the
    #   value of `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] profile_associations
    #   A complex type that containts settings information about the
    #   profile's VPC associations.
    #   @return [Array<Types::ProfileAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfileAssociationsResponse AWS API Documentation
    #
    class ListProfileAssociationsResponse < Struct.new(
      :next_token,
      :profile_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that you want to return for this
    #   request. If more objects are available, in the response, a
    #   `NextToken` value, which you can use in a subsequent call to get the
    #   next batch of objects, is provided.
    #
    #   If you don't specify a value for `MaxResults`, up to 100 objects
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, at most the number of objects
    #   specified by `MaxResults` is returned. If more objects are available
    #   for retrieval, a `NextToken` value is returned in the response. To
    #   retrieve the next batch of objects, use the token that was returned
    #   for the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   ID of a resource if you want information on only one type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfileResourceAssociationsRequest AWS API Documentation
    #
    class ListProfileResourceAssociationsRequest < Struct.new(
      :max_results,
      :next_token,
      :profile_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If more than `MaxResults` resource associations match the specified
    #   criteria, you can submit another `ListProfileResourceAssociations`
    #   request to get the next group of results. In the next request,
    #   specify the value of `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] profile_resource_associations
    #   Information about the profile resource association that you
    #   specified in a `GetProfileResourceAssociation` request.
    #   @return [Array<Types::ProfileResourceAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfileResourceAssociationsResponse AWS API Documentation
    #
    class ListProfileResourceAssociationsResponse < Struct.new(
      :next_token,
      :profile_resource_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that you want to return for this
    #   request. If more objects are available, in the response, a
    #   `NextToken` value, which you can use in a subsequent call to get the
    #   next batch of objects, is provided.
    #
    #   If you don't specify a value for `MaxResults`, up to 100 objects
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, at most the number of objects
    #   specified by `MaxResults` is returned. If more objects are available
    #   for retrieval, a `NextToken` value is returned in the response. To
    #   retrieve the next batch of objects, use the token that was returned
    #   for the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfilesRequest AWS API Documentation
    #
    class ListProfilesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If more than `MaxResults` resource associations match the specified
    #   criteria, you can submit another `ListProfiles` request to get the
    #   next group of results. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] profile_summaries
    #   Summary information about the Profiles.
    #   @return [Array<Types::ProfileSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfilesResponse AWS API Documentation
    #
    class ListProfilesResponse < Struct.new(
      :next_token,
      :profile_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to
    #   list the tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags that are associated with the resource that you specified in
    #   the `ListTagsForResource` request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that includes settings for a Route 53 Profile.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The `ClientToken` value that was assigned when the Profile was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the Profile was created, in Unix time format
    #   and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the Profile was modified, in Unix time format
    #   and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Name of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   Amazon Web Services account ID of the Profile owner.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Sharing status for the Profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for the Profile.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Status message that includes additiona information about the
    #   Profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/Profile AWS API Documentation
    #
    class Profile < Struct.new(
      :arn,
      :client_token,
      :creation_time,
      :id,
      :modification_time,
      :name,
      :owner_id,
      :share_status,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An association between a Route 53 Profile and a VPC.
    #
    # @!attribute [rw] creation_time
    #   The date and time that the Profile association was created, in Unix
    #   time format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   ID of the Profile association.
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the Profile association was modified, in Unix
    #   time format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Name of the Profile association.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   Amazon Web Services account ID of the Profile association owner.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Amazon Resource Name (ARN) of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the Profile association.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the Profile association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ProfileAssociation AWS API Documentation
    #
    class ProfileAssociation < Struct.new(
      :creation_time,
      :id,
      :modification_time,
      :name,
      :owner_id,
      :profile_id,
      :resource_id,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The association between a Route 53 Profile and resources.
    #
    # @!attribute [rw] creation_time
    #   The date and time that the Profile resource association was created,
    #   in Unix time format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   ID of the Profile resource association.
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the Profile resource association was
    #   modified, in Unix time format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Name of the Profile resource association.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   Amazon Web Services account ID of the Profile resource association
    #   owner.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   Profile ID of the Profile that the resources are associated with.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource association.
    #   @return [String]
    #
    # @!attribute [rw] resource_properties
    #   If the DNS resource is a DNS Firewall rule group, this indicates the
    #   priority.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type, such as a private hosted zone, or DNS Firewall rule
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the Profile resource association.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the Profile resource association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ProfileResourceAssociation AWS API Documentation
    #
    class ProfileResourceAssociation < Struct.new(
      :creation_time,
      :id,
      :modification_time,
      :name,
      :owner_id,
      :profile_id,
      :resource_arn,
      :resource_properties,
      :resource_type,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a Route 53 Profile.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the Profile.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Share status of the Profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ProfileSummary AWS API Documentation
    #
    class ProfileSummary < Struct.new(
      :arn,
      :id,
      :name,
      :share_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you are trying to associate, has already been associated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type that caused the resource exists exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ResourceExistsException AWS API Documentation
    #
    class ResourceExistsException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you are associating is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type that caused the resource not found exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tag for the Profile.
    #
    # @!attribute [rw] key
    #   Key associated with the `Tag`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value for the Tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to add
    #   tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was throttled. Try again in a few minutes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to
    #   remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tags that you want to remove to the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Name of the resource association.
    #   @return [String]
    #
    # @!attribute [rw] profile_resource_association_id
    #   ID of the resource association.
    #   @return [String]
    #
    # @!attribute [rw] resource_properties
    #   If you are adding a DNS Firewall rule group, include also a
    #   priority. The priority indicates the processing order for the rule
    #   groups, starting with the priority assinged the lowest value.
    #
    #   The allowed values for priority are between 100 and 9900.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/UpdateProfileResourceAssociationRequest AWS API Documentation
    #
    class UpdateProfileResourceAssociationRequest < Struct.new(
      :name,
      :profile_resource_association_id,
      :resource_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_resource_association
    #   Information about the `UpdateProfileResourceAssociation` request,
    #   including a status message.
    #   @return [Types::ProfileResourceAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/UpdateProfileResourceAssociationResponse AWS API Documentation
    #
    class UpdateProfileResourceAssociationResponse < Struct.new(
      :profile_resource_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have provided an invalid command.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

