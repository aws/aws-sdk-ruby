# frozen_string_literal: true

# This is generated code!

module Aws::Route53Profiles
  # This module contains the types returned by client operations.
  module Types

    # <p>
    #   The current account doesn't have the IAM permissions required to perform the specified operation.
    # </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>
    #     ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>
    #     The ID of the VPC.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #     A name for the association.
    #   </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #     A list of the tag keys and values that you want to identify the Profile association.
    #   </p>
    #   @return [Array<Types::Tag>]
    class AssociateProfileRequest < Struct.new(
      :profile_id,
      :resource_id,
      :name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_association
    #   <p>
    #     The association that you just created. The association has an ID that you can use to identify it in other requests, like update and delete.
    #   </p>
    #   @return [Types::ProfileAssociation]
    class AssociateProfileResponse < Struct.new(
      :profile_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>
    #     ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>
    #     Amazon resource number, ARN, of the DNS resource.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #     Name for the resource association.
    #   </p>
    #   @return [String]
    # @!attribute resource_properties
    #   <p>
    #     If you are adding a DNS Firewall rule group, include also a priority. The priority indicates the processing order for the rule groups, starting with the priority assinged the lowest value.
    #   </p>
    #            <p>The allowed values for priority are between 100 and 9900.</p>
    #   @return [String]
    class AssociateResourceToProfileRequest < Struct.new(
      :profile_id,
      :resource_arn,
      :name,
      :resource_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_resource_association
    #   <p>
    #     Infromation about the <code>AssociateResourceToProfile</code>, including a status message.
    #   </p>
    #   @return [Types::ProfileResourceAssociation]
    class AssociateResourceToProfileResponse < Struct.new(
      :profile_resource_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The request you submitted conflicts with an existing request.
    # </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #     A name for the Profile.
    #   </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>
    #               <code>ClientToken</code> is an idempotency token that ensures a call to <code>CreateProfile</code> completes only once. You choose the value to pass. 
    #     For example, an issue might prevent you from getting a response from <code>CreateProfile</code>. 
    #     In this case, safely retry your call to <code>CreateProfile</code> by using the same <code>CreateProfile</code> parameter value.
    #   </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #     A list of the tag keys and values that you want to associate with the Route 53 Profile.
    #   </p>
    #   @return [Array<Types::Tag>]
    class CreateProfileRequest < Struct.new(
      :name,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>
    #     The Profile that you just created.
    #   </p>
    #   @return [Types::Profile]
    class CreateProfileResponse < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>
    #     The ID of the Profile that you want to delete.
    #   </p>
    #   @return [String]
    class DeleteProfileRequest < Struct.new(
      :profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>
    #     Information about the <code>DeleteProfile</code> request, including the status of the request.
    #   </p>
    #   @return [Types::Profile]
    class DeleteProfileResponse < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>
    #     ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>
    #     The ID of the VPC.
    #   </p>
    #   @return [String]
    class DisassociateProfileRequest < Struct.new(
      :profile_id,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_association
    #   <p>
    #     Information about the <code>DisassociateProfile</code> request.
    #   </p>
    #   @return [Types::ProfileAssociation]
    class DisassociateProfileResponse < Struct.new(
      :profile_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>
    #     The ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.
    #   </p>
    #   @return [String]
    class DisassociateResourceFromProfileRequest < Struct.new(
      :profile_id,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_resource_association
    #   <p>
    #     Information about the <code>DisassociateResourceFromProfile</code> request, including the status of the request.
    #   </p>
    #   @return [Types::ProfileResourceAssociation]
    class DisassociateResourceFromProfileResponse < Struct.new(
      :profile_resource_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_association_id
    #   <p>
    #     The identifier of the association you want to get information about.
    #   </p>
    #   @return [String]
    class GetProfileAssociationRequest < Struct.new(
      :profile_association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_association
    #   <p>
    #     Information about the Profile association that you specified in a <code>GetProfileAssociation</code> request.
    #   </p>
    #   @return [Types::ProfileAssociation]
    class GetProfileAssociationResponse < Struct.new(
      :profile_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>
    #     ID of the Profile.
    #   </p>
    #   @return [String]
    class GetProfileRequest < Struct.new(
      :profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_resource_association_id
    #   <p>
    #     
    #     The ID of the profile resource association that you want to get information about.
    #   </p>
    #   @return [String]
    class GetProfileResourceAssociationRequest < Struct.new(
      :profile_resource_association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_resource_association
    #   <p>
    #     Information about the Profile resource association that you specified in a <code>GetProfileResourceAssociation</code> request.
    #   </p>
    #   @return [Types::ProfileResourceAssociation]
    class GetProfileResourceAssociationResponse < Struct.new(
      :profile_resource_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>
    #     Information about the Profile, including the status of the Profile.
    #   </p>
    #   @return [Types::Profile]
    class GetProfileResponse < Struct.new(
      :profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    # An internal server error occured. Retry your request.
    # </p>
    # @!attribute message
    #   @return [String]
    class InternalServiceErrorException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The <code>NextToken</code> you provided isn;t valid.
    # </p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   One or more parameters in this request are not valid.
    # </p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_name
    #   <p>
    #         The parameter field name for the invalid parameter exception.
    #       </p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      :field_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   The request caused one or more limits to be exceeded.
    # </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #         The resource type that caused the limits to be exceeded.
    #       </p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>
    #     ID of the VPC.
    #   </p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>
    #   ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #     The maximum number of objects that you want to return for this request. If more objects are available, in the response, 
    #     a <code>NextToken</code> value, which you can use in a subsequent call to get the next batch of objects, is provided.</p>
    #            <p>
    #       If you don't specify a value for <code>MaxResults</code>, up to 100 objects are returned.
    #   </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #     For the first call to this list request, omit this value.
    #   </p>
    #            <p>When you request a list of objects, at most the number of objects specified by <code>MaxResults</code> is returned. 
    #       If more objects are available for retrieval, a <code>NextToken</code> value is returned in the response. 
    #       To retrieve the next batch of objects, use the token that was returned for the prior request in your next request.</p>
    #   @return [String]
    class ListProfileAssociationsRequest < Struct.new(
      :resource_id,
      :profile_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_associations
    #   <p>
    #     A complex type that containts settings information about the profile's VPC associations.
    #   </p>
    #   @return [Array<Types::ProfileAssociation>]
    # @!attribute next_token
    #   <p>
    #     If more than <code>MaxResults</code> profile associations match the specified criteria, you can submit another 
    #     <code>ListProfileAssociations</code> request to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response.
    #   </p>
    #   @return [String]
    class ListProfileAssociationsResponse < Struct.new(
      :profile_associations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>
    #   The ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #     ID of a resource if you want information on only one type.
    #   </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #       The maximum number of objects that you want to return for this request. If more objects are available, in the response, 
    #       a <code>NextToken</code> value, which you can use in a subsequent call to get the next batch of objects, is provided.</p>
    #            <p>
    #       If you don't specify a value for <code>MaxResults</code>, up to 100 objects are returned.
    #     </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #       For the first call to this list request, omit this value.
    #     </p>
    #            <p>When you request a list of objects, at most the number of objects specified by <code>MaxResults</code> is returned. 
    #       If more objects are available for retrieval, a <code>NextToken</code> value is returned in the response. 
    #       To retrieve the next batch of objects, use the token that was returned for the prior request in your next request.</p>
    #   @return [String]
    class ListProfileResourceAssociationsRequest < Struct.new(
      :profile_id,
      :resource_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_resource_associations
    #   <p>
    #     Information about the profile resource association that you specified in a <code>GetProfileResourceAssociation</code> request.
    #   </p>
    #   @return [Array<Types::ProfileResourceAssociation>]
    # @!attribute next_token
    #   <p>
    #       If more than <code>MaxResults</code> resource associations match the specified criteria, you can submit another 
    #       <code>ListProfileResourceAssociations</code> request to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response.
    #     </p>
    #   @return [String]
    class ListProfileResourceAssociationsResponse < Struct.new(
      :profile_resource_associations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>
    #       The maximum number of objects that you want to return for this request. If more objects are available, in the response, 
    #       a <code>NextToken</code> value, which you can use in a subsequent call to get the next batch of objects, is provided.</p>
    #            <p>
    #       If you don't specify a value for <code>MaxResults</code>, up to 100 objects are returned.
    #     </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #       For the first call to this list request, omit this value.
    #     </p>
    #            <p>When you request a list of objects, at most the number of objects specified by <code>MaxResults</code> is returned. 
    #       If more objects are available for retrieval, a <code>NextToken</code> value is returned in the response. 
    #       To retrieve the next batch of objects, use the token that was returned for the prior request in your next request.</p>
    #   @return [String]
    class ListProfilesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_summaries
    #   <p>
    #     Summary information about the Profiles.
    #   </p>
    #   @return [Array<Types::ProfileSummary>]
    # @!attribute next_token
    #   <p>
    #       If more than <code>MaxResults</code> resource associations match the specified criteria, you can submit another 
    #       <code>ListProfiles</code> request to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response.
    #     </p>
    #   @return [String]
    class ListProfilesResponse < Struct.new(
      :profile_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #     The Amazon Resource Name (ARN) for the resource that you want to list the tags for.
    #   </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>
    #     The tags that are associated with the resource that you specified in the <code>ListTagsForResource</code> request.
    #   </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   A complex type that includes settings for a Route 53 Profile.
    # </p>
    # @!attribute id
    #   <p>
    #   ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute arn
    #   <p>
    #     The Amazon Resource Name (ARN) of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #   Name of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>
    #     Amazon Web Services account ID of the Profile owner.
    #   </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #     The status for the Profile.
    #   </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>
    #     Status message that includes additiona information about the Profile.
    #   </p>
    #   @return [String]
    # @!attribute share_status
    #   <p>
    #     Sharing status for the Profile.
    #   </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>
    #     The date and time that the Profile was created, in Unix time format and Coordinated Universal Time (UTC).
    #   </p>
    #   @return [Time]
    # @!attribute modification_time
    #   <p>
    #     The date and time that the Profile was modified, in Unix time format and Coordinated Universal Time (UTC).
    #   </p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>
    #     The <code>ClientToken</code> value that was assigned when the Profile was created.
    #   </p>
    #   @return [String]
    class Profile < Struct.new(
      :id,
      :arn,
      :name,
      :owner_id,
      :status,
      :status_message,
      :share_status,
      :creation_time,
      :modification_time,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   An association between a Route 53 Profile and a VPC.
    # </p>
    # @!attribute id
    #   <p>
    #     ID of the Profile association.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #     Name of the Profile association.
    #   </p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>
    #     Amazon Web Services account ID of the Profile association owner.
    #   </p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>
    #   ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>
    #     The Amazon Resource Name (ARN) of the VPC.
    #   </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #     Status of the Profile association.
    #   </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>
    #     Additional information about the Profile association.
    #   </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>
    #     The date and time that the Profile association was created, in Unix time format and Coordinated Universal Time (UTC).
    #   </p>
    #   @return [Time]
    # @!attribute modification_time
    #   <p>
    #     The date and time that the Profile association was modified, in Unix time format and Coordinated Universal Time (UTC).
    #   </p>
    #   @return [Time]
    class ProfileAssociation < Struct.new(
      :id,
      :name,
      :owner_id,
      :profile_id,
      :resource_id,
      :status,
      :status_message,
      :creation_time,
      :modification_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   The association between a Route 53 Profile and resources.
    # </p>
    # @!attribute id
    #   <p>
    #     ID of the Profile resource association.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #     Name of the Profile resource association.
    #   </p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>
    #     Amazon Web Services account ID of the Profile resource association owner.
    #   </p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>
    #     Profile ID of the Profile that the resources are associated with.
    #   </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>
    #     The Amazon Resource Name (ARN) of the resource association.
    #   </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #     Resource type, such as a private hosted zone, or DNS Firewall rule group.
    #   </p>
    #   @return [String]
    # @!attribute resource_properties
    #   <p>
    #     If the DNS resource is a DNS Firewall rule group, this indicates the priority.
    #   </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #     Status of the Profile resource association.
    #   </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>
    #     Additional information about the Profile resource association.
    #   </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>
    #     The date and time that the Profile resource association was created, in Unix time format and Coordinated Universal Time (UTC).
    #   </p>
    #   @return [Time]
    # @!attribute modification_time
    #   <p>
    #     The date and time that the Profile resource association was modified, in Unix time format and Coordinated Universal Time (UTC).
    #   </p>
    #   @return [Time]
    class ProfileResourceAssociation < Struct.new(
      :id,
      :name,
      :owner_id,
      :profile_id,
      :resource_arn,
      :resource_type,
      :resource_properties,
      :status,
      :status_message,
      :creation_time,
      :modification_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   Summary information about a Route 53 Profile.
    # </p>
    # @!attribute id
    #   <p>
    #     ID of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute arn
    #   <p>
    #     The Amazon Resource Name (ARN) of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #     Name of the Profile.
    #   </p>
    #   @return [String]
    # @!attribute share_status
    #   <p>
    #     Share status of the Profile.
    #   </p>
    #   @return [String]
    class ProfileSummary < Struct.new(
      :id,
      :arn,
      :name,
      :share_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #  The resource you are trying to associate, has already been associated.
    # </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #         The resource type that caused the resource exists exception.
    #       </p>
    #   @return [String]
    class ResourceExistsException < Struct.new(
      :message,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The resource you are associating is not found.
    # </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #         The resource type that caused the resource not found exception.
    #       </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    # Tag for the Profile.
    # </p>
    # @!attribute key
    #   <p>
    #     Key associated with the <code>Tag</code>.
    #   </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #   Value for the Tag.
    #   </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #     The Amazon Resource Name (ARN) for the resource that you want to add tags to. 
    #   </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #     The tags that you want to add to the specified resource.
    #   </p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   The request was throttled. Try again in a few minutes.
    # </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #     The Amazon Resource Name (ARN) for the resource that you want to remove tags from.
    #   </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>
    #     The tags that you want to remove to the specified resource.
    #   </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_resource_association_id
    #   <p>
    #   ID of the resource association.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #   Name of the resource association.
    #   </p>
    #   @return [String]
    # @!attribute resource_properties
    #   <p>
    #     If you are adding a DNS Firewall rule group, include also a priority. The priority indicates the processing order for the rule groups, starting with the priority assinged the lowest value.
    #     </p>
    #            <p>The allowed values for priority are between 100 and 9900.</p>
    #   @return [String]
    class UpdateProfileResourceAssociationRequest < Struct.new(
      :profile_resource_association_id,
      :name,
      :resource_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_resource_association
    #   <p>
    #     Information about the <code>UpdateProfileResourceAssociation</code> request, including a status message.
    #   </p>
    #   @return [Types::ProfileResourceAssociation]
    class UpdateProfileResourceAssociationResponse < Struct.new(
      :profile_resource_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   You have provided an invalid command.
    # </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
