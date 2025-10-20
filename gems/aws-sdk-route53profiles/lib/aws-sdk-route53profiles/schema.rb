# frozen_string_literal: true

# This is generated code!

module Aws::Route53Profiles
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 32}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AssociateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#AssociateProfileRequest", name: "AssociateProfileRequest")
    AssociateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#AssociateProfileResponse", name: "AssociateProfileResponse")
    AssociateResourceToProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#AssociateResourceToProfileRequest", name: "AssociateResourceToProfileRequest")
    AssociateResourceToProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#AssociateResourceToProfileResponse", name: "AssociateResourceToProfileResponse")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    CreateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#CreateProfileRequest", name: "CreateProfileRequest")
    CreateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#CreateProfileResponse", name: "CreateProfileResponse")
    CreatorRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#CreatorRequestId", name: "CreatorRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DeleteProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#DeleteProfileRequest", name: "DeleteProfileRequest")
    DeleteProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#DeleteProfileResponse", name: "DeleteProfileResponse")
    DisassociateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#DisassociateProfileRequest", name: "DisassociateProfileRequest")
    DisassociateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#DisassociateProfileResponse", name: "DisassociateProfileResponse")
    DisassociateResourceFromProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#DisassociateResourceFromProfileRequest", name: "DisassociateResourceFromProfileRequest")
    DisassociateResourceFromProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#DisassociateResourceFromProfileResponse", name: "DisassociateResourceFromProfileResponse")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#ExceptionMessage", name: "ExceptionMessage")
    GetProfileAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#GetProfileAssociationRequest", name: "GetProfileAssociationRequest")
    GetProfileAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#GetProfileAssociationResponse", name: "GetProfileAssociationResponse")
    GetProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#GetProfileRequest", name: "GetProfileRequest")
    GetProfileResourceAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#GetProfileResourceAssociationRequest", name: "GetProfileResourceAssociationRequest")
    GetProfileResourceAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#GetProfileResourceAssociationResponse", name: "GetProfileResourceAssociationResponse")
    GetProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#GetProfileResponse", name: "GetProfileResponse")
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListProfileAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ListProfileAssociationsRequest", name: "ListProfileAssociationsRequest")
    ListProfileAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ListProfileAssociationsResponse", name: "ListProfileAssociationsResponse")
    ListProfileResourceAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ListProfileResourceAssociationsRequest", name: "ListProfileResourceAssociationsRequest")
    ListProfileResourceAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ListProfileResourceAssociationsResponse", name: "ListProfileResourceAssociationsResponse")
    ListProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ListProfilesRequest", name: "ListProfilesRequest")
    ListProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ListProfilesResponse", name: "ListProfilesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53profiles#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#NextToken", name: "NextToken")
    Profile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#Profile", name: "Profile")
    ProfileAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ProfileAssociation", name: "ProfileAssociation")
    ProfileAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53profiles#ProfileAssociations", name: "ProfileAssociations")
    ProfileResourceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ProfileResourceAssociation", name: "ProfileResourceAssociation")
    ProfileResourceAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53profiles#ProfileResourceAssociations", name: "ProfileResourceAssociations")
    ProfileStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53profiles#ProfileStatus", name: "ProfileStatus")
    ProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ProfileSummary", name: "ProfileSummary")
    ProfileSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53profiles#ProfileSummaryList", name: "ProfileSummaryList")
    ResourceExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ResourceExistsException", name: "ResourceExistsException", traits: {"smithy.api#error" => "client"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#ResourceProperties", name: "ResourceProperties")
    Rfc3339Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.route53profiles#Rfc3339Timestamp", name: "Rfc3339Timestamp")
    ShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53profiles#ShareStatus", name: "ShareStatus")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#String", name: "String")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53profiles#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53profiles#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.route53profiles#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53profiles#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateProfileResourceAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#UpdateProfileResourceAssociationRequest", name: "UpdateProfileResourceAssociationRequest")
    UpdateProfileResourceAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#UpdateProfileResourceAssociationResponse", name: "UpdateProfileResourceAssociationResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53profiles#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId", traits: {"smithy.api#required" => {}}))
    AssociateProfileRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AssociateProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    AssociateProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    AssociateProfileRequest.type = Types::AssociateProfileRequest
    AssociateProfileResponse.add_member(:profile_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileAssociation, location_name: "ProfileAssociation"))
    AssociateProfileResponse.type = Types::AssociateProfileResponse
    AssociateResourceToProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId", traits: {"smithy.api#required" => {}}))
    AssociateResourceToProfileRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    AssociateResourceToProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    AssociateResourceToProfileRequest.add_member(:resource_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProperties, location_name: "ResourceProperties"))
    AssociateResourceToProfileRequest.type = Types::AssociateResourceToProfileRequest
    AssociateResourceToProfileResponse.add_member(:profile_resource_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileResourceAssociation, location_name: "ProfileResourceAssociation"))
    AssociateResourceToProfileResponse.type = Types::AssociateResourceToProfileResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProfileRequest.type = Types::CreateProfileRequest
    CreateProfileResponse.add_member(:profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    CreateProfileResponse.type = Types::CreateProfileResponse
    DeleteProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileRequest.type = Types::DeleteProfileRequest
    DeleteProfileResponse.add_member(:profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    DeleteProfileResponse.type = Types::DeleteProfileResponse
    DisassociateProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateProfileRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateProfileRequest.type = Types::DisassociateProfileRequest
    DisassociateProfileResponse.add_member(:profile_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileAssociation, location_name: "ProfileAssociation"))
    DisassociateProfileResponse.type = Types::DisassociateProfileResponse
    DisassociateResourceFromProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceFromProfileRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceFromProfileRequest.type = Types::DisassociateResourceFromProfileRequest
    DisassociateResourceFromProfileResponse.add_member(:profile_resource_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileResourceAssociation, location_name: "ProfileResourceAssociation"))
    DisassociateResourceFromProfileResponse.type = Types::DisassociateResourceFromProfileResponse
    GetProfileAssociationRequest.add_member(:profile_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileAssociationRequest.type = Types::GetProfileAssociationRequest
    GetProfileAssociationResponse.add_member(:profile_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileAssociation, location_name: "ProfileAssociation"))
    GetProfileAssociationResponse.type = Types::GetProfileAssociationResponse
    GetProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileRequest.type = Types::GetProfileRequest
    GetProfileResourceAssociationRequest.add_member(:profile_resource_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileResourceAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileResourceAssociationRequest.type = Types::GetProfileResourceAssociationRequest
    GetProfileResourceAssociationResponse.add_member(:profile_resource_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileResourceAssociation, location_name: "ProfileResourceAssociation"))
    GetProfileResourceAssociationResponse.type = Types::GetProfileResourceAssociationResponse
    GetProfileResponse.add_member(:profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    GetProfileResponse.type = Types::GetProfileResponse
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    InvalidParameterException.type = Types::InvalidParameterException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    LimitExceededException.type = Types::LimitExceededException
    ListProfileAssociationsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#httpQuery" => "resourceId"}))
    ListProfileAssociationsRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId", traits: {"smithy.api#httpQuery" => "profileId"}))
    ListProfileAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProfileAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProfileAssociationsRequest.type = Types::ListProfileAssociationsRequest
    ListProfileAssociationsResponse.add_member(:profile_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileAssociations, location_name: "ProfileAssociations"))
    ListProfileAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfileAssociationsResponse.type = Types::ListProfileAssociationsResponse
    ListProfileResourceAssociationsRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfileResourceAssociationsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListProfileResourceAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProfileResourceAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProfileResourceAssociationsRequest.type = Types::ListProfileResourceAssociationsRequest
    ListProfileResourceAssociationsResponse.add_member(:profile_resource_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileResourceAssociations, location_name: "ProfileResourceAssociations"))
    ListProfileResourceAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfileResourceAssociationsResponse.type = Types::ListProfileResourceAssociationsResponse
    ListProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProfilesRequest.type = Types::ListProfilesRequest
    ListProfilesResponse.add_member(:profile_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileSummaryList, location_name: "ProfileSummaries"))
    ListProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfilesResponse.type = Types::ListProfilesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Profile.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    Profile.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Profile.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Profile.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    Profile.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileStatus, location_name: "Status"))
    Profile.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    Profile.add_member(:share_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    Profile.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "CreationTime"))
    Profile.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "ModificationTime"))
    Profile.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "ClientToken"))
    Profile.type = Types::Profile
    ProfileAssociation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ProfileAssociation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ProfileAssociation.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ProfileAssociation.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId"))
    ProfileAssociation.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ProfileAssociation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileStatus, location_name: "Status"))
    ProfileAssociation.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    ProfileAssociation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "CreationTime"))
    ProfileAssociation.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "ModificationTime"))
    ProfileAssociation.type = Types::ProfileAssociation
    ProfileAssociations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileAssociation)
    ProfileResourceAssociation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ProfileResourceAssociation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ProfileResourceAssociation.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ProfileResourceAssociation.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId"))
    ProfileResourceAssociation.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    ProfileResourceAssociation.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ProfileResourceAssociation.add_member(:resource_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProperties, location_name: "ResourceProperties"))
    ProfileResourceAssociation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileStatus, location_name: "Status"))
    ProfileResourceAssociation.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    ProfileResourceAssociation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "CreationTime"))
    ProfileResourceAssociation.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "ModificationTime"))
    ProfileResourceAssociation.type = Types::ProfileResourceAssociation
    ProfileResourceAssociations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileResourceAssociation)
    ProfileStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ProfileStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ProfileStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ProfileStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ProfileStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ProfileStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ProfileSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ProfileSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ProfileSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ProfileSummary.add_member(:share_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    ProfileSummary.type = Types::ProfileSummary
    ProfileSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileSummary)
    ResourceExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceExistsException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceExistsException.type = Types::ResourceExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ShareStatus.add_member(:not_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_SHARED", traits: {"smithy.api#enumValue" => "NOT_SHARED"}))
    ShareStatus.add_member(:shared_with_me, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED_WITH_ME", traits: {"smithy.api#enumValue" => "SHARED_WITH_ME"}))
    ShareStatus.add_member(:shared_by_me, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED_BY_ME", traits: {"smithy.api#enumValue" => "SHARED_BY_ME"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateProfileResourceAssociationRequest.add_member(:profile_resource_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileResourceAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileResourceAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateProfileResourceAssociationRequest.add_member(:resource_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProperties, location_name: "ResourceProperties"))
    UpdateProfileResourceAssociationRequest.type = Types::UpdateProfileResourceAssociationRequest
    UpdateProfileResourceAssociationResponse.add_member(:profile_resource_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileResourceAssociation, location_name: "ProfileResourceAssociation"))
    UpdateProfileResourceAssociationResponse.type = Types::UpdateProfileResourceAssociationResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ValidationException.type = Types::ValidationException

    Route53Profiles = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53profiles#Route53Profiles"
      service.name = "Route53Profiles"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"cloudTrailEventSource" => "route53profiles.amazonaws.com", "sdkId" => "Route53Profiles", "arnNamespace" => "route53profiles"}, "aws.auth#sigv4" => {"name" => "route53profiles"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Route 53 Profiles"}
      service.add_operation(:associate_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#AssociateProfile"
        operation.name = "AssociateProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profileassociation", "code" => 200}}
      end)
      service.add_operation(:associate_resource_to_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#AssociateResourceToProfile"
        operation.name = "AssociateResourceToProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceToProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceToProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profileresourceassociation", "code" => 200}}
      end)
      service.add_operation(:create_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#CreateProfile"
        operation.name = "CreateProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/profile"}}
      end)
      service.add_operation(:delete_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#DeleteProfile"
        operation.name = "DeleteProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profile/{ProfileId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#DisassociateProfile"
        operation.name = "DisassociateProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profileassociation/Profileid/{ProfileId}/resourceid/{ResourceId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_resource_from_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#DisassociateResourceFromProfile"
        operation.name = "DisassociateResourceFromProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceFromProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceFromProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profileresourceassociation/profileid/{ProfileId}/resourcearn/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#GetProfile"
        operation.name = "GetProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profile/{ProfileId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_profile_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#GetProfileAssociation"
        operation.name = "GetProfileAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileassociation/{ProfileAssociationId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_profile_resource_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#GetProfileResourceAssociation"
        operation.name = "GetProfileResourceAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileResourceAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileResourceAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileresourceassociation/{ProfileResourceAssociationId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_profile_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#ListProfileAssociations"
        operation.name = "ListProfileAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileassociations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfileAssociations.new
      end)
      service.add_operation(:list_profile_resource_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#ListProfileResourceAssociations"
        operation.name = "ListProfileResourceAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileResourceAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfileResourceAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profileresourceassociations/profileid/{ProfileId}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfileResourceAssociations.new
      end)
      service.add_operation(:list_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#ListProfiles"
        operation.name = "ListProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profiles", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfiles.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_profile_resource_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53profiles#UpdateProfileResourceAssociation"
        operation.name = "UpdateProfileResourceAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileResourceAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileResourceAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/profileresourceassociation/{ProfileResourceAssociationId}", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
