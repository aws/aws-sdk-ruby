# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Route53Profiles
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateProfileRequest = Shapes::StructureShape.new(name: 'AssociateProfileRequest')
    AssociateProfileResponse = Shapes::StructureShape.new(name: 'AssociateProfileResponse')
    AssociateResourceToProfileRequest = Shapes::StructureShape.new(name: 'AssociateResourceToProfileRequest')
    AssociateResourceToProfileResponse = Shapes::StructureShape.new(name: 'AssociateResourceToProfileResponse')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateProfileRequest = Shapes::StructureShape.new(name: 'CreateProfileRequest')
    CreateProfileResponse = Shapes::StructureShape.new(name: 'CreateProfileResponse')
    CreatorRequestId = Shapes::StringShape.new(name: 'CreatorRequestId')
    DeleteProfileRequest = Shapes::StructureShape.new(name: 'DeleteProfileRequest')
    DeleteProfileResponse = Shapes::StructureShape.new(name: 'DeleteProfileResponse')
    DisassociateProfileRequest = Shapes::StructureShape.new(name: 'DisassociateProfileRequest')
    DisassociateProfileResponse = Shapes::StructureShape.new(name: 'DisassociateProfileResponse')
    DisassociateResourceFromProfileRequest = Shapes::StructureShape.new(name: 'DisassociateResourceFromProfileRequest')
    DisassociateResourceFromProfileResponse = Shapes::StructureShape.new(name: 'DisassociateResourceFromProfileResponse')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    GetProfileAssociationRequest = Shapes::StructureShape.new(name: 'GetProfileAssociationRequest')
    GetProfileAssociationResponse = Shapes::StructureShape.new(name: 'GetProfileAssociationResponse')
    GetProfileRequest = Shapes::StructureShape.new(name: 'GetProfileRequest')
    GetProfileResourceAssociationRequest = Shapes::StructureShape.new(name: 'GetProfileResourceAssociationRequest')
    GetProfileResourceAssociationResponse = Shapes::StructureShape.new(name: 'GetProfileResourceAssociationResponse')
    GetProfileResponse = Shapes::StructureShape.new(name: 'GetProfileResponse')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListProfileAssociationsRequest = Shapes::StructureShape.new(name: 'ListProfileAssociationsRequest')
    ListProfileAssociationsResponse = Shapes::StructureShape.new(name: 'ListProfileAssociationsResponse')
    ListProfileResourceAssociationsRequest = Shapes::StructureShape.new(name: 'ListProfileResourceAssociationsRequest')
    ListProfileResourceAssociationsResponse = Shapes::StructureShape.new(name: 'ListProfileResourceAssociationsResponse')
    ListProfilesRequest = Shapes::StructureShape.new(name: 'ListProfilesRequest')
    ListProfilesResponse = Shapes::StructureShape.new(name: 'ListProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Profile = Shapes::StructureShape.new(name: 'Profile')
    ProfileAssociation = Shapes::StructureShape.new(name: 'ProfileAssociation')
    ProfileAssociations = Shapes::ListShape.new(name: 'ProfileAssociations')
    ProfileResourceAssociation = Shapes::StructureShape.new(name: 'ProfileResourceAssociation')
    ProfileResourceAssociations = Shapes::ListShape.new(name: 'ProfileResourceAssociations')
    ProfileStatus = Shapes::StringShape.new(name: 'ProfileStatus')
    ProfileSummary = Shapes::StructureShape.new(name: 'ProfileSummary')
    ProfileSummaryList = Shapes::ListShape.new(name: 'ProfileSummaryList')
    ResourceExistsException = Shapes::StructureShape.new(name: 'ResourceExistsException')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceProperties = Shapes::StringShape.new(name: 'ResourceProperties')
    Rfc3339Timestamp = Shapes::TimestampShape.new(name: 'Rfc3339Timestamp')
    ShareStatus = Shapes::StringShape.new(name: 'ShareStatus')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateProfileResourceAssociationRequest = Shapes::StructureShape.new(name: 'UpdateProfileResourceAssociationRequest')
    UpdateProfileResourceAssociationResponse = Shapes::StructureShape.new(name: 'UpdateProfileResourceAssociationResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    AssociateProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ProfileId"))
    AssociateProfileRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AssociateProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    AssociateProfileRequest.struct_class = Types::AssociateProfileRequest

    AssociateProfileResponse.add_member(:profile_association, Shapes::ShapeRef.new(shape: ProfileAssociation, location_name: "ProfileAssociation"))
    AssociateProfileResponse.struct_class = Types::AssociateProfileResponse

    AssociateResourceToProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    AssociateResourceToProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ProfileId"))
    AssociateResourceToProfileRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    AssociateResourceToProfileRequest.add_member(:resource_properties, Shapes::ShapeRef.new(shape: ResourceProperties, location_name: "ResourceProperties"))
    AssociateResourceToProfileRequest.struct_class = Types::AssociateResourceToProfileRequest

    AssociateResourceToProfileResponse.add_member(:profile_resource_association, Shapes::ShapeRef.new(shape: ProfileResourceAssociation, location_name: "ProfileResourceAssociation"))
    AssociateResourceToProfileResponse.struct_class = Types::AssociateResourceToProfileResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProfileRequest.struct_class = Types::CreateProfileRequest

    CreateProfileResponse.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    CreateProfileResponse.struct_class = Types::CreateProfileResponse

    DeleteProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ProfileId"))
    DeleteProfileRequest.struct_class = Types::DeleteProfileRequest

    DeleteProfileResponse.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    DeleteProfileResponse.struct_class = Types::DeleteProfileResponse

    DisassociateProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ProfileId"))
    DisassociateProfileRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ResourceId"))
    DisassociateProfileRequest.struct_class = Types::DisassociateProfileRequest

    DisassociateProfileResponse.add_member(:profile_association, Shapes::ShapeRef.new(shape: ProfileAssociation, location_name: "ProfileAssociation"))
    DisassociateProfileResponse.struct_class = Types::DisassociateProfileResponse

    DisassociateResourceFromProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ProfileId"))
    DisassociateResourceFromProfileRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    DisassociateResourceFromProfileRequest.struct_class = Types::DisassociateResourceFromProfileRequest

    DisassociateResourceFromProfileResponse.add_member(:profile_resource_association, Shapes::ShapeRef.new(shape: ProfileResourceAssociation, location_name: "ProfileResourceAssociation"))
    DisassociateResourceFromProfileResponse.struct_class = Types::DisassociateResourceFromProfileResponse

    GetProfileAssociationRequest.add_member(:profile_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ProfileAssociationId"))
    GetProfileAssociationRequest.struct_class = Types::GetProfileAssociationRequest

    GetProfileAssociationResponse.add_member(:profile_association, Shapes::ShapeRef.new(shape: ProfileAssociation, location_name: "ProfileAssociation"))
    GetProfileAssociationResponse.struct_class = Types::GetProfileAssociationResponse

    GetProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ProfileId"))
    GetProfileRequest.struct_class = Types::GetProfileRequest

    GetProfileResourceAssociationRequest.add_member(:profile_resource_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ProfileResourceAssociationId"))
    GetProfileResourceAssociationRequest.struct_class = Types::GetProfileResourceAssociationRequest

    GetProfileResourceAssociationResponse.add_member(:profile_resource_association, Shapes::ShapeRef.new(shape: ProfileResourceAssociation, location_name: "ProfileResourceAssociation"))
    GetProfileResourceAssociationResponse.struct_class = Types::GetProfileResourceAssociationResponse

    GetProfileResponse.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    GetProfileResponse.struct_class = Types::GetProfileResponse

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterException.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListProfileAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProfileAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProfileAssociationsRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, location: "querystring", location_name: "profileId"))
    ListProfileAssociationsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location: "querystring", location_name: "resourceId"))
    ListProfileAssociationsRequest.struct_class = Types::ListProfileAssociationsRequest

    ListProfileAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfileAssociationsResponse.add_member(:profile_associations, Shapes::ShapeRef.new(shape: ProfileAssociations, location_name: "ProfileAssociations"))
    ListProfileAssociationsResponse.struct_class = Types::ListProfileAssociationsResponse

    ListProfileResourceAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProfileResourceAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProfileResourceAssociationsRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ProfileId"))
    ListProfileResourceAssociationsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "resourceType"))
    ListProfileResourceAssociationsRequest.struct_class = Types::ListProfileResourceAssociationsRequest

    ListProfileResourceAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfileResourceAssociationsResponse.add_member(:profile_resource_associations, Shapes::ShapeRef.new(shape: ProfileResourceAssociations, location_name: "ProfileResourceAssociations"))
    ListProfileResourceAssociationsResponse.struct_class = Types::ListProfileResourceAssociationsResponse

    ListProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProfilesRequest.struct_class = Types::ListProfilesRequest

    ListProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfilesResponse.add_member(:profile_summaries, Shapes::ShapeRef.new(shape: ProfileSummaryList, location_name: "ProfileSummaries"))
    ListProfilesResponse.struct_class = Types::ListProfilesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Profile.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Profile.add_member(:client_token, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "ClientToken"))
    Profile.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "CreationTime"))
    Profile.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    Profile.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "ModificationTime"))
    Profile.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Profile.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    Profile.add_member(:share_status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    Profile.add_member(:status, Shapes::ShapeRef.new(shape: ProfileStatus, location_name: "Status"))
    Profile.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    Profile.struct_class = Types::Profile

    ProfileAssociation.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "CreationTime"))
    ProfileAssociation.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ProfileAssociation.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "ModificationTime"))
    ProfileAssociation.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ProfileAssociation.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ProfileAssociation.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId"))
    ProfileAssociation.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ProfileAssociation.add_member(:status, Shapes::ShapeRef.new(shape: ProfileStatus, location_name: "Status"))
    ProfileAssociation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    ProfileAssociation.struct_class = Types::ProfileAssociation

    ProfileAssociations.member = Shapes::ShapeRef.new(shape: ProfileAssociation)

    ProfileResourceAssociation.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "CreationTime"))
    ProfileResourceAssociation.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ProfileResourceAssociation.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339Timestamp, location_name: "ModificationTime"))
    ProfileResourceAssociation.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ProfileResourceAssociation.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ProfileResourceAssociation.add_member(:profile_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ProfileId"))
    ProfileResourceAssociation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    ProfileResourceAssociation.add_member(:resource_properties, Shapes::ShapeRef.new(shape: ResourceProperties, location_name: "ResourceProperties"))
    ProfileResourceAssociation.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ProfileResourceAssociation.add_member(:status, Shapes::ShapeRef.new(shape: ProfileStatus, location_name: "Status"))
    ProfileResourceAssociation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    ProfileResourceAssociation.struct_class = Types::ProfileResourceAssociation

    ProfileResourceAssociations.member = Shapes::ShapeRef.new(shape: ProfileResourceAssociation)

    ProfileSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ProfileSummary.add_member(:share_status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    ProfileSummary.struct_class = Types::ProfileSummary

    ProfileSummaryList.member = Shapes::ShapeRef.new(shape: ProfileSummary)

    ResourceExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceExistsException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceExistsException.struct_class = Types::ResourceExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateProfileResourceAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateProfileResourceAssociationRequest.add_member(:profile_resource_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ProfileResourceAssociationId"))
    UpdateProfileResourceAssociationRequest.add_member(:resource_properties, Shapes::ShapeRef.new(shape: ResourceProperties, location_name: "ResourceProperties"))
    UpdateProfileResourceAssociationRequest.struct_class = Types::UpdateProfileResourceAssociationRequest

    UpdateProfileResourceAssociationResponse.add_member(:profile_resource_association, Shapes::ShapeRef.new(shape: ProfileResourceAssociation, location_name: "ProfileResourceAssociation"))
    UpdateProfileResourceAssociationResponse.struct_class = Types::UpdateProfileResourceAssociationResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "route53profiles",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Route 53 Profiles",
        "serviceId" => "Route53Profiles",
        "signatureVersion" => "v4",
        "signingName" => "route53profiles",
        "uid" => "route53profiles-2018-05-10",
      }

      api.add_operation(:associate_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profileassociation"
        o.input = Shapes::ShapeRef.new(shape: AssociateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_resource_to_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResourceToProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profileresourceassociation"
        o.input = Shapes::ShapeRef.new(shape: AssociateResourceToProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateResourceToProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profile"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/profile/{ProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/profileassociation/Profileid/{ProfileId}/resourceid/{ResourceId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_resource_from_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResourceFromProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/profileresourceassociation/profileid/{ProfileId}/resourcearn/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResourceFromProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResourceFromProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfile"
        o.http_method = "GET"
        o.http_request_uri = "/profile/{ProfileId}"
        o.input = Shapes::ShapeRef.new(shape: GetProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_profile_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/profileassociation/{ProfileAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: GetProfileAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_profile_resource_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileResourceAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/profileresourceassociation/{ProfileResourceAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: GetProfileResourceAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileResourceAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_profile_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/profileassociations"
        o.input = Shapes::ShapeRef.new(shape: ListProfileAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profile_resource_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileResourceAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/profileresourceassociations/profileid/{ProfileId}"
        o.input = Shapes::ShapeRef.new(shape: ListProfileResourceAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileResourceAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/profiles"
        o.input = Shapes::ShapeRef.new(shape: ListProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_profile_resource_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfileResourceAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/profileresourceassociation/{ProfileResourceAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileResourceAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileResourceAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
