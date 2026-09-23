# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalogAppRegistry
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AppRegistryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#AppRegistryConfiguration", name: "AppRegistryConfiguration")
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#Application", name: "Application")
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#ApplicationArn", name: "ApplicationArn", traits: {"smithy.api#pattern" => "^arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/applications/[a-z0-9]+$"})
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#ApplicationId", name: "ApplicationId", traits: {"smithy.api#length" => {"min" => 26, "max" => 26}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    ApplicationSpecifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#ApplicationSpecifier", name: "ApplicationSpecifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([-.\\w]+)|(arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/applications/[-.\\w]+)$"})
    ApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#ApplicationSummaries", name: "ApplicationSummaries")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ApplicationSummary", name: "ApplicationSummary")
    ApplicationTagDefinition = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalogappregistry#ApplicationTagDefinition", name: "ApplicationTagDefinition")
    ApplicationTagResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ApplicationTagResult", name: "ApplicationTagResult")
    ApplicationTagStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalogappregistry#ApplicationTagStatus", name: "ApplicationTagStatus")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$"})
    AssociateAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#AssociateAttributeGroupRequest", name: "AssociateAttributeGroupRequest")
    AssociateAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#AssociateAttributeGroupResponse", name: "AssociateAttributeGroupResponse")
    AssociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#AssociateResourceRequest", name: "AssociateResourceRequest")
    AssociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#AssociateResourceResponse", name: "AssociateResourceResponse")
    AssociationCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalogappregistry#AssociationCount", name: "AssociationCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    AssociationOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalogappregistry#AssociationOption", name: "AssociationOption")
    AttributeGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroup", name: "AttributeGroup")
    AttributeGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroupArn", name: "AttributeGroupArn", traits: {"smithy.api#pattern" => "^arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/attribute-groups/[-.\\w]+$"})
    AttributeGroupDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroupDetails", name: "AttributeGroupDetails")
    AttributeGroupDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroupDetailsList", name: "AttributeGroupDetailsList")
    AttributeGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroupId", name: "AttributeGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[-.\\w]+$"})
    AttributeGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroupIds", name: "AttributeGroupIds")
    AttributeGroupSpecifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroupSpecifier", name: "AttributeGroupSpecifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^([-.\\w]+)|(arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/attribute-groups/[-.\\w]+)$"})
    AttributeGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroupSummaries", name: "AttributeGroupSummaries")
    AttributeGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#AttributeGroupSummary", name: "AttributeGroupSummary")
    Attributes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#Attributes", name: "Attributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#CreateAttributeGroupRequest", name: "CreateAttributeGroupRequest")
    CreateAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#CreateAttributeGroupResponse", name: "CreateAttributeGroupResponse")
    CreatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#CreatedBy", name: "CreatedBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!-)([a-z0-9-]+\\.)+(aws\\.internal|amazonaws\\.com(\\.cn)?)$"})
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#DeleteApplicationResponse", name: "DeleteApplicationResponse")
    DeleteAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#DeleteAttributeGroupRequest", name: "DeleteAttributeGroupRequest")
    DeleteAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#DeleteAttributeGroupResponse", name: "DeleteAttributeGroupResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DisassociateAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#DisassociateAttributeGroupRequest", name: "DisassociateAttributeGroupRequest")
    DisassociateAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#DisassociateAttributeGroupResponse", name: "DisassociateAttributeGroupResponse")
    DisassociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#DisassociateResourceRequest", name: "DisassociateResourceRequest")
    DisassociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#DisassociateResourceResponse", name: "DisassociateResourceResponse")
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#GetApplicationRequest", name: "GetApplicationRequest")
    GetApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#GetApplicationResponse", name: "GetApplicationResponse")
    GetAssociatedResourceFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#GetAssociatedResourceFilter", name: "GetAssociatedResourceFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    GetAssociatedResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#GetAssociatedResourceRequest", name: "GetAssociatedResourceRequest")
    GetAssociatedResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#GetAssociatedResourceResponse", name: "GetAssociatedResourceResponse")
    GetAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#GetAttributeGroupRequest", name: "GetAttributeGroupRequest")
    GetAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#GetAttributeGroupResponse", name: "GetAttributeGroupResponse")
    GetConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#GetConfigurationResponse", name: "GetConfigurationResponse")
    Integrations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#Integrations", name: "Integrations")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListApplicationsResponse", name: "ListApplicationsResponse")
    ListAssociatedAttributeGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListAssociatedAttributeGroupsRequest", name: "ListAssociatedAttributeGroupsRequest")
    ListAssociatedAttributeGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListAssociatedAttributeGroupsResponse", name: "ListAssociatedAttributeGroupsResponse")
    ListAssociatedResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListAssociatedResourcesRequest", name: "ListAssociatedResourcesRequest")
    ListAssociatedResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListAssociatedResourcesResponse", name: "ListAssociatedResourcesResponse")
    ListAttributeGroupsForApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListAttributeGroupsForApplicationRequest", name: "ListAttributeGroupsForApplicationRequest")
    ListAttributeGroupsForApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListAttributeGroupsForApplicationResponse", name: "ListAttributeGroupsForApplicationResponse")
    ListAttributeGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListAttributeGroupsRequest", name: "ListAttributeGroupsRequest")
    ListAttributeGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListAttributeGroupsResponse", name: "ListAttributeGroupsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalogappregistry#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[-.\\w]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2024}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    Options = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#Options", name: "Options")
    PutConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#PutConfigurationRequest", name: "PutConfigurationRequest")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#Resource", name: "Resource")
    ResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceDetails", name: "ResourceDetails")
    ResourceGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceGroup", name: "ResourceGroup")
    ResourceGroupState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceGroupState", name: "ResourceGroupState")
    ResourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceInfo", name: "ResourceInfo")
    ResourceIntegrations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceIntegrations", name: "ResourceIntegrations")
    ResourceItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceItemStatus", name: "ResourceItemStatus")
    ResourceItemType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceItemType", name: "ResourceItemType", traits: {"smithy.api#pattern" => "^AWS::[a-zA-Z0-9]+::\\w+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSpecifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceSpecifier", name: "ResourceSpecifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourceType", name: "ResourceType")
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#Resources", name: "Resources")
    ResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourcesList", name: "ResourcesList")
    ResourcesListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourcesListItem", name: "ResourcesListItem")
    ResourcesListItemErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#ResourcesListItemErrorMessage", name: "ResourcesListItemErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#String", name: "String")
    SyncAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalogappregistry#SyncAction", name: "SyncAction")
    SyncResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#SyncResourceRequest", name: "SyncResourceRequest")
    SyncResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#SyncResourceResponse", name: "SyncResourceResponse")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*)$"})
    TagKeyConfig = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#TagKeyConfig", name: "TagKeyConfig", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(?!\\s+$)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalogappregistry#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagQueryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#TagQueryConfiguration", name: "TagQueryConfiguration")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalogappregistry#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalogappregistry#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicecatalogappregistry#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    UpdateAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#UpdateAttributeGroupRequest", name: "UpdateAttributeGroupRequest")
    UpdateAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#UpdateAttributeGroupResponse", name: "UpdateAttributeGroupResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalogappregistry#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AppRegistryConfiguration.add_member(:tag_query_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TagQueryConfiguration, name: "tagQueryConfiguration"))
    AppRegistryConfiguration.type = Types::AppRegistryConfiguration
    Application.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "id"))
    Application.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "arn"))
    Application.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    Application.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    Application.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    Application.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    Application.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Application.add_member(:application_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationTagDefinition, name: "applicationTag"))
    Application.type = Types::Application
    ApplicationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    ApplicationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "id"))
    ApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "arn"))
    ApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    ApplicationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ApplicationSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    ApplicationSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationTagDefinition.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    ApplicationTagDefinition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ApplicationTagResult.add_member(:application_tag_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationTagStatus, name: "applicationTagStatus"))
    ApplicationTagResult.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage"))
    ApplicationTagResult.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources"))
    ApplicationTagResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ApplicationTagResult.type = Types::ApplicationTagResult
    ApplicationTagStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ApplicationTagStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ApplicationTagStatus.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILURE", traits: {"smithy.api#enumValue" => "FAILURE"}))
    AssociateAttributeGroupRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupSpecifier, name: "attributeGroup", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAttributeGroupRequest.type = Types::AssociateAttributeGroupRequest
    AssociateAttributeGroupResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn"))
    AssociateAttributeGroupResponse.add_member(:attribute_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupArn, name: "attributeGroupArn"))
    AssociateAttributeGroupResponse.type = Types::AssociateAttributeGroupResponse
    AssociateResourceRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecifier, name: "resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateResourceRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "options"))
    AssociateResourceRequest.type = Types::AssociateResourceRequest
    AssociateResourceResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn"))
    AssociateResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn"))
    AssociateResourceResponse.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "options"))
    AssociateResourceResponse.type = Types::AssociateResourceResponse
    AssociationOption.add_member(:apply_application_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLY_APPLICATION_TAG", traits: {"smithy.api#enumValue" => "APPLY_APPLICATION_TAG"}))
    AssociationOption.add_member(:skip_application_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP_APPLICATION_TAG", traits: {"smithy.api#enumValue" => "SKIP_APPLICATION_TAG"}))
    AttributeGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupId, name: "id"))
    AttributeGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupArn, name: "arn"))
    AttributeGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    AttributeGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AttributeGroup.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    AttributeGroup.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    AttributeGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AttributeGroup.type = Types::AttributeGroup
    AttributeGroupDetails.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupId, name: "id"))
    AttributeGroupDetails.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupArn, name: "arn"))
    AttributeGroupDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    AttributeGroupDetails.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy"))
    AttributeGroupDetails.type = Types::AttributeGroupDetails
    AttributeGroupDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupDetails, name: "member"))
    AttributeGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupId, name: "member"))
    AttributeGroupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupSummary, name: "member"))
    AttributeGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupId, name: "id"))
    AttributeGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupArn, name: "arn"))
    AttributeGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    AttributeGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AttributeGroupSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    AttributeGroupSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    AttributeGroupSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy"))
    AttributeGroupSummary.type = Types::AttributeGroupSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "application"))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateAttributeGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAttributeGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateAttributeGroupRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes", traits: {"smithy.api#required" => {}}))
    CreateAttributeGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateAttributeGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAttributeGroupRequest.type = Types::CreateAttributeGroupRequest
    CreateAttributeGroupResponse.add_member(:attribute_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroup, name: "attributeGroup"))
    CreateAttributeGroupResponse.type = Types::CreateAttributeGroupResponse
    DeleteApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "application"))
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupSpecifier, name: "attributeGroup", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttributeGroupRequest.type = Types::DeleteAttributeGroupRequest
    DeleteAttributeGroupResponse.add_member(:attribute_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupSummary, name: "attributeGroup"))
    DeleteAttributeGroupResponse.type = Types::DeleteAttributeGroupResponse
    DisassociateAttributeGroupRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupSpecifier, name: "attributeGroup", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAttributeGroupRequest.type = Types::DisassociateAttributeGroupRequest
    DisassociateAttributeGroupResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn"))
    DisassociateAttributeGroupResponse.add_member(:attribute_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupArn, name: "attributeGroupArn"))
    DisassociateAttributeGroupResponse.type = Types::DisassociateAttributeGroupResponse
    DisassociateResourceRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecifier, name: "resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceRequest.type = Types::DisassociateResourceRequest
    DisassociateResourceResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn"))
    DisassociateResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn"))
    DisassociateResourceResponse.type = Types::DisassociateResourceResponse
    GetApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "id"))
    GetApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "arn"))
    GetApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    GetApplicationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetApplicationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    GetApplicationResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    GetApplicationResponse.add_member(:associated_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationCount, name: "associatedResourceCount", traits: {"smithy.api#default" => 0}))
    GetApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetApplicationResponse.add_member(:integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: Integrations, name: "integrations"))
    GetApplicationResponse.add_member(:application_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationTagDefinition, name: "applicationTag"))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetAssociatedResourceFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceItemStatus, name: "member"))
    GetAssociatedResourceRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociatedResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociatedResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecifier, name: "resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociatedResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetAssociatedResourceRequest.add_member(:resource_tag_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GetAssociatedResourceFilter, name: "resourceTagStatus", traits: {"smithy.api#httpQuery" => "resourceTagStatus"}))
    GetAssociatedResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetAssociatedResourceRequest.type = Types::GetAssociatedResourceRequest
    GetAssociatedResourceResponse.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "resource"))
    GetAssociatedResourceResponse.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "options"))
    GetAssociatedResourceResponse.add_member(:application_tag_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationTagResult, name: "applicationTagResult"))
    GetAssociatedResourceResponse.type = Types::GetAssociatedResourceResponse
    GetAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupSpecifier, name: "attributeGroup", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAttributeGroupRequest.type = Types::GetAttributeGroupRequest
    GetAttributeGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupId, name: "id"))
    GetAttributeGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupArn, name: "arn"))
    GetAttributeGroupResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    GetAttributeGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetAttributeGroupResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes"))
    GetAttributeGroupResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    GetAttributeGroupResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    GetAttributeGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetAttributeGroupResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, name: "createdBy"))
    GetAttributeGroupResponse.type = Types::GetAttributeGroupResponse
    GetConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRegistryConfiguration, name: "configuration"))
    GetConfigurationResponse.type = Types::GetConfigurationResponse
    Integrations.add_member(:resource_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGroup, name: "resourceGroup"))
    Integrations.add_member(:application_tag_resource_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGroup, name: "applicationTagResourceGroup"))
    Integrations.type = Types::Integrations
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummaries, name: "applications"))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListAssociatedAttributeGroupsRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedAttributeGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssociatedAttributeGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssociatedAttributeGroupsRequest.type = Types::ListAssociatedAttributeGroupsRequest
    ListAssociatedAttributeGroupsResponse.add_member(:attribute_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupIds, name: "attributeGroups"))
    ListAssociatedAttributeGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssociatedAttributeGroupsResponse.type = Types::ListAssociatedAttributeGroupsResponse
    ListAssociatedResourcesRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssociatedResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssociatedResourcesRequest.type = Types::ListAssociatedResourcesRequest
    ListAssociatedResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "resources"))
    ListAssociatedResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssociatedResourcesResponse.type = Types::ListAssociatedResourcesResponse
    ListAttributeGroupsForApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAttributeGroupsForApplicationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAttributeGroupsForApplicationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAttributeGroupsForApplicationRequest.type = Types::ListAttributeGroupsForApplicationRequest
    ListAttributeGroupsForApplicationResponse.add_member(:attribute_groups_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupDetailsList, name: "attributeGroupsDetails"))
    ListAttributeGroupsForApplicationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAttributeGroupsForApplicationResponse.type = Types::ListAttributeGroupsForApplicationResponse
    ListAttributeGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAttributeGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAttributeGroupsRequest.type = Types::ListAttributeGroupsRequest
    ListAttributeGroupsResponse.add_member(:attribute_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupSummaries, name: "attributeGroups"))
    ListAttributeGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAttributeGroupsResponse.type = Types::ListAttributeGroupsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Options.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationOption, name: "member"))
    PutConfigurationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRegistryConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    PutConfigurationRequest.type = Types::PutConfigurationRequest
    Resource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecifier, name: "name"))
    Resource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    Resource.add_member(:association_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "associationTime"))
    Resource.add_member(:integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIntegrations, name: "integrations"))
    Resource.type = Types::Resource
    ResourceDetails.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "tagValue"))
    ResourceDetails.type = Types::ResourceDetails
    ResourceGroup.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGroupState, name: "state"))
    ResourceGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    ResourceGroup.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage"))
    ResourceGroup.type = Types::ResourceGroup
    ResourceGroupState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResourceGroupState.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    ResourceGroupState.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ResourceGroupState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResourceGroupState.add_member(:update_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    ResourceGroupState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ResourceInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecifier, name: "name"))
    ResourceInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    ResourceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceInfo.add_member(:resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "resourceDetails"))
    ResourceInfo.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "options"))
    ResourceInfo.type = Types::ResourceInfo
    ResourceIntegrations.add_member(:resource_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGroup, name: "resourceGroup"))
    ResourceIntegrations.type = Types::ResourceIntegrations
    ResourceItemStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ResourceItemStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceItemStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceItemStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:cfn_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFN_STACK", traits: {"smithy.api#enumValue" => "CFN_STACK"}))
    ResourceType.add_member(:resource_tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TAG_VALUE", traits: {"smithy.api#enumValue" => "RESOURCE_TAG_VALUE"}))
    Resources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceInfo, name: "member"))
    ResourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesListItem, name: "member"))
    ResourcesListItem.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn"))
    ResourcesListItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesListItemErrorMessage, name: "errorMessage"))
    ResourcesListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    ResourcesListItem.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceItemType, name: "resourceType"))
    ResourcesListItem.type = Types::ResourcesListItem
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SyncAction.add_member(:start_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_SYNC", traits: {"smithy.api#enumValue" => "START_SYNC"}))
    SyncAction.add_member(:no_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_ACTION", traits: {"smithy.api#enumValue" => "NO_ACTION"}))
    SyncResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SyncResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecifier, name: "resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SyncResourceRequest.type = Types::SyncResourceRequest
    SyncResourceResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn"))
    SyncResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn"))
    SyncResourceResponse.add_member(:action_taken, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncAction, name: "actionTaken"))
    SyncResourceResponse.type = Types::SyncResourceResponse
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagQueryConfiguration.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyConfig, name: "tagKey"))
    TagQueryConfiguration.type = Types::TagQueryConfiguration
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceCode"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSpecifier, name: "application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#deprecated" => {"message" => "Name update for application is deprecated."}}))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "application"))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroupSpecifier, name: "attributeGroup", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAttributeGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#deprecated" => {"message" => "Name update for attribute group is deprecated."}}))
    UpdateAttributeGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateAttributeGroupRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes"))
    UpdateAttributeGroupRequest.type = Types::UpdateAttributeGroupRequest
    UpdateAttributeGroupResponse.add_member(:attribute_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeGroup, name: "attributeGroup"))
    UpdateAttributeGroupResponse.type = Types::UpdateAttributeGroupResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ValidationException.type = Types::ValidationException

    AWS242AppRegistry = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.servicecatalogappregistry#AWS242AppRegistry"
      service.name = "AWS242AppRegistry"
      service.version = "2020-06-24"
      service.traits = {"aws.api#service" => {"sdkId" => "Service Catalog AppRegistry", "arnNamespace" => "servicecatalog", "cloudFormationName" => "ServiceCatalogAppRegistry", "cloudTrailEventSource" => "servicecatalogappregistry.amazonaws.com", "docId" => "AWS242AppRegistry-2020-06-24", "endpointPrefix" => "servicecatalog-appregistry"}, "aws.auth#sigv4" => {"name" => "servicecatalog"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Service Catalog App Registry"}
      service.add_operation(:associate_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#AssociateAttributeGroup"
        operation.name = "AssociateAttributeGroup"
        operation.input = AssociateAttributeGroupRequest
        operation.output = AssociateAttributeGroupResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{application}/attribute-groups/{attributeGroup}", "code" => 200}}
      end)
      service.add_operation(:associate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#AssociateResource"
        operation.name = "AssociateResource"
        operation.input = AssociateResourceRequest
        operation.output = AssociateResourceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{application}/resources/{resourceType}/{resource}", "code" => 200}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 201}}
      end)
      service.add_operation(:create_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#CreateAttributeGroup"
        operation.name = "CreateAttributeGroup"
        operation.input = CreateAttributeGroupRequest
        operation.output = CreateAttributeGroupResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/attribute-groups", "code" => 201}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = DeleteApplicationResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{application}", "code" => 200}}
      end)
      service.add_operation(:delete_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#DeleteAttributeGroup"
        operation.name = "DeleteAttributeGroup"
        operation.input = DeleteAttributeGroupRequest
        operation.output = DeleteAttributeGroupResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/attribute-groups/{attributeGroup}", "code" => 200}}
      end)
      service.add_operation(:disassociate_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#DisassociateAttributeGroup"
        operation.name = "DisassociateAttributeGroup"
        operation.input = DisassociateAttributeGroupRequest
        operation.output = DisassociateAttributeGroupResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{application}/attribute-groups/{attributeGroup}", "code" => 200}}
      end)
      service.add_operation(:disassociate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#DisassociateResource"
        operation.name = "DisassociateResource"
        operation.input = DisassociateResourceRequest
        operation.output = DisassociateResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{application}/resources/{resourceType}/{resource}", "code" => 200}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationRequest
        operation.output = GetApplicationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}", "code" => 200}}
      end)
      service.add_operation(:get_associated_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#GetAssociatedResource"
        operation.name = "GetAssociatedResource"
        operation.input = GetAssociatedResourceRequest
        operation.output = GetAssociatedResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}/resources/{resourceType}/{resource}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#GetAttributeGroup"
        operation.name = "GetAttributeGroup"
        operation.input = GetAttributeGroupRequest
        operation.output = GetAttributeGroupResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/attribute-groups/{attributeGroup}", "code" => 200}}
      end)
      service.add_operation(:get_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#GetConfiguration"
        operation.name = "GetConfiguration"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetConfigurationResponse
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/configuration", "code" => 200}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_associated_attribute_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListAssociatedAttributeGroups"
        operation.name = "ListAssociatedAttributeGroups"
        operation.input = ListAssociatedAttributeGroupsRequest
        operation.output = ListAssociatedAttributeGroupsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}/attribute-groups", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAssociatedAttributeGroups.new
      end)
      service.add_operation(:list_associated_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListAssociatedResources"
        operation.name = "ListAssociatedResources"
        operation.input = ListAssociatedResourcesRequest
        operation.output = ListAssociatedResourcesResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}/resources", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAssociatedResources.new
      end)
      service.add_operation(:list_attribute_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListAttributeGroups"
        operation.name = "ListAttributeGroups"
        operation.input = ListAttributeGroupsRequest
        operation.output = ListAttributeGroupsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/attribute-groups", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAttributeGroups.new
      end)
      service.add_operation(:list_attribute_groups_for_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListAttributeGroupsForApplication"
        operation.name = "ListAttributeGroupsForApplication"
        operation.input = ListAttributeGroupsForApplicationRequest
        operation.output = ListAttributeGroupsForApplicationResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}/attribute-group-details", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAttributeGroupsForApplication.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#PutConfiguration"
        operation.name = "PutConfiguration"
        operation.input = PutConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/configuration", "code" => 200}}
      end)
      service.add_operation(:sync_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#SyncResource"
        operation.name = "SyncResource"
        operation.input = SyncResourceRequest
        operation.output = SyncResourceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sync/{resourceType}/{resource}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{application}", "code" => 200}}
      end)
      service.add_operation(:update_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#UpdateAttributeGroup"
        operation.name = "UpdateAttributeGroup"
        operation.input = UpdateAttributeGroupRequest
        operation.output = UpdateAttributeGroupResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/attribute-groups/{attributeGroup}", "code" => 200}}
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
