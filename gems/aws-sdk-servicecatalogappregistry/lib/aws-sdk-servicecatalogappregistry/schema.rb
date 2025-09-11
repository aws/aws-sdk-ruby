# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalogAppRegistry
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AppRegistryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#AppRegistryConfiguration', name: 'AppRegistryConfiguration')
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#Application', name: 'Application')
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#ApplicationArn', name: 'ApplicationArn', traits: {"smithy.api#pattern" => "^arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/applications/[a-z0-9]+$"})
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#ApplicationId', name: 'ApplicationId', traits: {"smithy.api#length" => {"min" => 26, "max" => 26}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    ApplicationSpecifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#ApplicationSpecifier', name: 'ApplicationSpecifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([-.\\w]+)|(arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/applications/[-.\\w]+)$"})
    ApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#ApplicationSummaries', name: 'ApplicationSummaries')
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ApplicationSummary', name: 'ApplicationSummary')
    ApplicationTagDefinition = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalogappregistry#ApplicationTagDefinition', name: 'ApplicationTagDefinition')
    ApplicationTagResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ApplicationTagResult', name: 'ApplicationTagResult')
    ApplicationTagStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalogappregistry#ApplicationTagStatus', name: 'ApplicationTagStatus')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$"})
    AssociateAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#AssociateAttributeGroupRequest', name: 'AssociateAttributeGroupRequest')
    AssociateAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#AssociateAttributeGroupResponse', name: 'AssociateAttributeGroupResponse')
    AssociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#AssociateResourceRequest', name: 'AssociateResourceRequest')
    AssociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#AssociateResourceResponse', name: 'AssociateResourceResponse')
    AssociationCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalogappregistry#AssociationCount', name: 'AssociationCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    AssociationOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalogappregistry#AssociationOption', name: 'AssociationOption')
    AttributeGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroup', name: 'AttributeGroup')
    AttributeGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroupArn', name: 'AttributeGroupArn', traits: {"smithy.api#pattern" => "^arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/attribute-groups/[-.\\w]+$"})
    AttributeGroupDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroupDetails', name: 'AttributeGroupDetails')
    AttributeGroupDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroupDetailsList', name: 'AttributeGroupDetailsList')
    AttributeGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroupId', name: 'AttributeGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[-.\\w]+$"})
    AttributeGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroupIds', name: 'AttributeGroupIds')
    AttributeGroupSpecifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroupSpecifier', name: 'AttributeGroupSpecifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^([-.\\w]+)|(arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/attribute-groups/[-.\\w]+)$"})
    AttributeGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroupSummaries', name: 'AttributeGroupSummaries')
    AttributeGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#AttributeGroupSummary', name: 'AttributeGroupSummary')
    Attributes = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#Attributes', name: 'Attributes', traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#CreateAttributeGroupRequest', name: 'CreateAttributeGroupRequest')
    CreateAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#CreateAttributeGroupResponse', name: 'CreateAttributeGroupResponse')
    CreatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#CreatedBy', name: 'CreatedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!-)([a-z0-9-]+\\.)+(aws\\.internal|amazonaws\\.com(\\.cn)?)$"})
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#DeleteAttributeGroupRequest', name: 'DeleteAttributeGroupRequest')
    DeleteAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#DeleteAttributeGroupResponse', name: 'DeleteAttributeGroupResponse')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DisassociateAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#DisassociateAttributeGroupRequest', name: 'DisassociateAttributeGroupRequest')
    DisassociateAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#DisassociateAttributeGroupResponse', name: 'DisassociateAttributeGroupResponse')
    DisassociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#DisassociateResourceRequest', name: 'DisassociateResourceRequest')
    DisassociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#DisassociateResourceResponse', name: 'DisassociateResourceResponse')
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#GetApplicationRequest', name: 'GetApplicationRequest')
    GetApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#GetApplicationResponse', name: 'GetApplicationResponse')
    GetAssociatedResourceFilter = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#GetAssociatedResourceFilter', name: 'GetAssociatedResourceFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    GetAssociatedResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#GetAssociatedResourceRequest', name: 'GetAssociatedResourceRequest')
    GetAssociatedResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#GetAssociatedResourceResponse', name: 'GetAssociatedResourceResponse')
    GetAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#GetAttributeGroupRequest', name: 'GetAttributeGroupRequest')
    GetAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#GetAttributeGroupResponse', name: 'GetAttributeGroupResponse')
    GetConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#GetConfigurationResponse', name: 'GetConfigurationResponse')
    Integrations = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#Integrations', name: 'Integrations')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListAssociatedAttributeGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListAssociatedAttributeGroupsRequest', name: 'ListAssociatedAttributeGroupsRequest')
    ListAssociatedAttributeGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListAssociatedAttributeGroupsResponse', name: 'ListAssociatedAttributeGroupsResponse')
    ListAssociatedResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListAssociatedResourcesRequest', name: 'ListAssociatedResourcesRequest')
    ListAssociatedResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListAssociatedResourcesResponse', name: 'ListAssociatedResourcesResponse')
    ListAttributeGroupsForApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListAttributeGroupsForApplicationRequest', name: 'ListAttributeGroupsForApplicationRequest')
    ListAttributeGroupsForApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListAttributeGroupsForApplicationResponse', name: 'ListAttributeGroupsForApplicationResponse')
    ListAttributeGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListAttributeGroupsRequest', name: 'ListAttributeGroupsRequest')
    ListAttributeGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListAttributeGroupsResponse', name: 'ListAttributeGroupsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicecatalogappregistry#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[-.\\w]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2024}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    Options = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#Options', name: 'Options')
    PutConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#PutConfigurationRequest', name: 'PutConfigurationRequest')
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#Resource', name: 'Resource')
    ResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceDetails', name: 'ResourceDetails')
    ResourceGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceGroup', name: 'ResourceGroup')
    ResourceGroupState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceGroupState', name: 'ResourceGroupState')
    ResourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceInfo', name: 'ResourceInfo')
    ResourceIntegrations = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceIntegrations', name: 'ResourceIntegrations')
    ResourceItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceItemStatus', name: 'ResourceItemStatus')
    ResourceItemType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceItemType', name: 'ResourceItemType', traits: {"smithy.api#pattern" => "^AWS::[a-zA-Z0-9]+::\\w+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSpecifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceSpecifier', name: 'ResourceSpecifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourceType', name: 'ResourceType')
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#Resources', name: 'Resources')
    ResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourcesList', name: 'ResourcesList')
    ResourcesListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourcesListItem', name: 'ResourcesListItem')
    ResourcesListItemErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#ResourcesListItemErrorMessage', name: 'ResourcesListItemErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#String', name: 'String')
    SyncAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicecatalogappregistry#SyncAction', name: 'SyncAction')
    SyncResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#SyncResourceRequest', name: 'SyncResourceRequest')
    SyncResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#SyncResourceResponse', name: 'SyncResourceResponse')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*)$"})
    TagKeyConfig = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#TagKeyConfig', name: 'TagKeyConfig', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(?!\\s+$)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicecatalogappregistry#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagQueryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#TagQueryConfiguration', name: 'TagQueryConfiguration')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicecatalogappregistry#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicecatalogappregistry#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicecatalogappregistry#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UpdateAttributeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#UpdateAttributeGroupRequest', name: 'UpdateAttributeGroupRequest')
    UpdateAttributeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#UpdateAttributeGroupResponse', name: 'UpdateAttributeGroupResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicecatalogappregistry#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AppRegistryConfiguration.add_member(:tag_query_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQueryConfiguration, location_name: 'tagQueryConfiguration'))
    AppRegistryConfiguration.type = Types::AppRegistryConfiguration
    Application.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'id'))
    Application.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'arn'))
    Application.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Application.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Application.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    Application.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime'))
    Application.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    Application.add_member(:application_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationTagDefinition, location_name: 'applicationTag'))
    Application.type = Types::Application
    ApplicationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'id'))
    ApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'arn'))
    ApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    ApplicationSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ApplicationSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    ApplicationSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime'))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationTagDefinition.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    ApplicationTagDefinition.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ApplicationTagResult.add_member(:application_tag_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationTagStatus, location_name: 'applicationTagStatus'))
    ApplicationTagResult.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage'))
    ApplicationTagResult.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesList, location_name: 'resources'))
    ApplicationTagResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ApplicationTagResult.type = Types::ApplicationTagResult
    ApplicationTagStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ApplicationTagStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ApplicationTagStatus.add_member(:failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILURE', traits: {"smithy.api#enumValue" => "FAILURE"}))
    AssociateAttributeGroupRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, location_name: 'attributeGroup', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAttributeGroupRequest.type = Types::AssociateAttributeGroupRequest
    AssociateAttributeGroupResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'applicationArn'))
    AssociateAttributeGroupResponse.add_member(:attribute_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: 'attributeGroupArn'))
    AssociateAttributeGroupResponse.type = Types::AssociateAttributeGroupResponse
    AssociateResourceRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSpecifier, location_name: 'resource', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateResourceRequest.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: 'options'))
    AssociateResourceRequest.type = Types::AssociateResourceRequest
    AssociateResourceResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'applicationArn'))
    AssociateResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn'))
    AssociateResourceResponse.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: 'options'))
    AssociateResourceResponse.type = Types::AssociateResourceResponse
    AssociationOption.add_member(:apply_application_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLY_APPLICATION_TAG', traits: {"smithy.api#enumValue" => "APPLY_APPLICATION_TAG"}))
    AssociationOption.add_member(:skip_application_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP_APPLICATION_TAG', traits: {"smithy.api#enumValue" => "SKIP_APPLICATION_TAG"}))
    AttributeGroup.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupId, location_name: 'id'))
    AttributeGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: 'arn'))
    AttributeGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    AttributeGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AttributeGroup.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    AttributeGroup.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime'))
    AttributeGroup.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AttributeGroup.type = Types::AttributeGroup
    AttributeGroupDetails.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupId, location_name: 'id'))
    AttributeGroupDetails.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: 'arn'))
    AttributeGroupDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    AttributeGroupDetails.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy'))
    AttributeGroupDetails.type = Types::AttributeGroupDetails
    AttributeGroupDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupDetails)
    AttributeGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupId)
    AttributeGroupSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupSummary)
    AttributeGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupId, location_name: 'id'))
    AttributeGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: 'arn'))
    AttributeGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    AttributeGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AttributeGroupSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    AttributeGroupSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime'))
    AttributeGroupSummary.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy'))
    AttributeGroupSummary.type = Types::AttributeGroupSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Application, location_name: 'application'))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateAttributeGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAttributeGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateAttributeGroupRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'attributes', traits: {"smithy.api#required" => {}}))
    CreateAttributeGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateAttributeGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAttributeGroupRequest.type = Types::CreateAttributeGroupRequest
    CreateAttributeGroupResponse.add_member(:attribute_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroup, location_name: 'attributeGroup'))
    CreateAttributeGroupResponse.type = Types::CreateAttributeGroupResponse
    DeleteApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary, location_name: 'application'))
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, location_name: 'attributeGroup', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttributeGroupRequest.type = Types::DeleteAttributeGroupRequest
    DeleteAttributeGroupResponse.add_member(:attribute_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupSummary, location_name: 'attributeGroup'))
    DeleteAttributeGroupResponse.type = Types::DeleteAttributeGroupResponse
    DisassociateAttributeGroupRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, location_name: 'attributeGroup', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAttributeGroupRequest.type = Types::DisassociateAttributeGroupRequest
    DisassociateAttributeGroupResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'applicationArn'))
    DisassociateAttributeGroupResponse.add_member(:attribute_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: 'attributeGroupArn'))
    DisassociateAttributeGroupResponse.type = Types::DisassociateAttributeGroupResponse
    DisassociateResourceRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSpecifier, location_name: 'resource', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceRequest.type = Types::DisassociateResourceRequest
    DisassociateResourceResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'applicationArn'))
    DisassociateResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn'))
    DisassociateResourceResponse.type = Types::DisassociateResourceResponse
    GetApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'id'))
    GetApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'arn'))
    GetApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    GetApplicationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetApplicationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    GetApplicationResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime'))
    GetApplicationResponse.add_member(:associated_resource_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationCount, location_name: 'associatedResourceCount', traits: {"smithy.api#default" => 0}))
    GetApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetApplicationResponse.add_member(:integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integrations, location_name: 'integrations'))
    GetApplicationResponse.add_member(:application_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationTagDefinition, location_name: 'applicationTag'))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetAssociatedResourceFilter.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceItemStatus)
    GetAssociatedResourceRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociatedResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociatedResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSpecifier, location_name: 'resource', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociatedResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetAssociatedResourceRequest.add_member(:resource_tag_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociatedResourceFilter, location_name: 'resourceTagStatus', traits: {"smithy.api#httpQuery" => "resourceTagStatus"}))
    GetAssociatedResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetAssociatedResourceRequest.type = Types::GetAssociatedResourceRequest
    GetAssociatedResourceResponse.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'resource'))
    GetAssociatedResourceResponse.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: 'options'))
    GetAssociatedResourceResponse.add_member(:application_tag_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationTagResult, location_name: 'applicationTagResult'))
    GetAssociatedResourceResponse.type = Types::GetAssociatedResourceResponse
    GetAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, location_name: 'attributeGroup', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAttributeGroupRequest.type = Types::GetAttributeGroupRequest
    GetAttributeGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupId, location_name: 'id'))
    GetAttributeGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: 'arn'))
    GetAttributeGroupResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    GetAttributeGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetAttributeGroupResponse.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'attributes'))
    GetAttributeGroupResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    GetAttributeGroupResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime'))
    GetAttributeGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetAttributeGroupResponse.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'createdBy'))
    GetAttributeGroupResponse.type = Types::GetAttributeGroupResponse
    GetConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppRegistryConfiguration, location_name: 'configuration'))
    GetConfigurationResponse.type = Types::GetConfigurationResponse
    Integrations.add_member(:resource_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroup, location_name: 'resourceGroup'))
    Integrations.add_member(:application_tag_resource_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroup, location_name: 'applicationTagResourceGroup'))
    Integrations.type = Types::Integrations
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: 'applications'))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListAssociatedAttributeGroupsRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedAttributeGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssociatedAttributeGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssociatedAttributeGroupsRequest.type = Types::ListAssociatedAttributeGroupsRequest
    ListAssociatedAttributeGroupsResponse.add_member(:attribute_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupIds, location_name: 'attributeGroups'))
    ListAssociatedAttributeGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAssociatedAttributeGroupsResponse.type = Types::ListAssociatedAttributeGroupsResponse
    ListAssociatedResourcesRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssociatedResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssociatedResourcesRequest.type = Types::ListAssociatedResourcesRequest
    ListAssociatedResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'resources'))
    ListAssociatedResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAssociatedResourcesResponse.type = Types::ListAssociatedResourcesResponse
    ListAttributeGroupsForApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAttributeGroupsForApplicationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAttributeGroupsForApplicationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAttributeGroupsForApplicationRequest.type = Types::ListAttributeGroupsForApplicationRequest
    ListAttributeGroupsForApplicationResponse.add_member(:attribute_groups_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupDetailsList, location_name: 'attributeGroupsDetails'))
    ListAttributeGroupsForApplicationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAttributeGroupsForApplicationResponse.type = Types::ListAttributeGroupsForApplicationResponse
    ListAttributeGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAttributeGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAttributeGroupsRequest.type = Types::ListAttributeGroupsRequest
    ListAttributeGroupsResponse.add_member(:attribute_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupSummaries, location_name: 'attributeGroups'))
    ListAttributeGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAttributeGroupsResponse.type = Types::ListAttributeGroupsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Options.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationOption)
    PutConfigurationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppRegistryConfiguration, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    PutConfigurationRequest.type = Types::PutConfigurationRequest
    Resource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSpecifier, location_name: 'name'))
    Resource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    Resource.add_member(:association_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'associationTime'))
    Resource.add_member(:integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIntegrations, location_name: 'integrations'))
    Resource.type = Types::Resource
    ResourceDetails.add_member(:tag_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'tagValue'))
    ResourceDetails.type = Types::ResourceDetails
    ResourceGroup.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupState, location_name: 'state'))
    ResourceGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    ResourceGroup.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage'))
    ResourceGroup.type = Types::ResourceGroup
    ResourceGroupState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ResourceGroupState.add_member(:create_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    ResourceGroupState.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ResourceGroupState.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResourceGroupState.add_member(:update_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_COMPLETE', traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    ResourceGroupState.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ResourceInfo.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSpecifier, location_name: 'name'))
    ResourceInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    ResourceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType'))
    ResourceInfo.add_member(:resource_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetails, location_name: 'resourceDetails'))
    ResourceInfo.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: 'options'))
    ResourceInfo.type = Types::ResourceInfo
    ResourceIntegrations.add_member(:resource_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroup, location_name: 'resourceGroup'))
    ResourceIntegrations.type = Types::ResourceIntegrations
    ResourceItemStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ResourceItemStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceItemStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceItemStatus.add_member(:skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "SKIPPED"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:cfn_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CFN_STACK', traits: {"smithy.api#enumValue" => "CFN_STACK"}))
    ResourceType.add_member(:resource_tag_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_TAG_VALUE', traits: {"smithy.api#enumValue" => "RESOURCE_TAG_VALUE"}))
    Resources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInfo)
    ResourcesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesListItem)
    ResourcesListItem.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn'))
    ResourcesListItem.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesListItemErrorMessage, location_name: 'errorMessage'))
    ResourcesListItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    ResourcesListItem.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceItemType, location_name: 'resourceType'))
    ResourcesListItem.type = Types::ResourcesListItem
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SyncAction.add_member(:start_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_SYNC', traits: {"smithy.api#enumValue" => "START_SYNC"}))
    SyncAction.add_member(:no_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ACTION', traits: {"smithy.api#enumValue" => "NO_ACTION"}))
    SyncResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SyncResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSpecifier, location_name: 'resource', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SyncResourceRequest.type = Types::SyncResourceRequest
    SyncResourceResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'applicationArn'))
    SyncResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn'))
    SyncResourceResponse.add_member(:action_taken, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncAction, location_name: 'actionTaken'))
    SyncResourceResponse.type = Types::SyncResourceResponse
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagQueryConfiguration.add_member(:tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyConfig, location_name: 'tagKey'))
    TagQueryConfiguration.type = Types::TagQueryConfiguration
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceCode'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSpecifier, location_name: 'application', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#deprecated" => {"message" => "Name update for application is deprecated."}}))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Application, location_name: 'application'))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateAttributeGroupRequest.add_member(:attribute_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, location_name: 'attributeGroup', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAttributeGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#deprecated" => {"message" => "Name update for attribute group is deprecated."}}))
    UpdateAttributeGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateAttributeGroupRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'attributes'))
    UpdateAttributeGroupRequest.type = Types::UpdateAttributeGroupRequest
    UpdateAttributeGroupResponse.add_member(:attribute_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeGroup, location_name: 'attributeGroup'))
    UpdateAttributeGroupResponse.type = Types::UpdateAttributeGroupResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    AWS242AppRegistry = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.servicecatalogappregistry#AWS242AppRegistry"
      service.name = "AWS242AppRegistry"
      service.version = "2020-06-24"
      service.traits = {"aws.api#service" => {"sdkId" => "Service Catalog AppRegistry", "arnNamespace" => "servicecatalog", "cloudFormationName" => "ServiceCatalogAppRegistry", "cloudTrailEventSource" => "servicecatalogappregistry.amazonaws.com", "docId" => "AWS242AppRegistry-2020-06-24", "endpointPrefix" => "servicecatalog-appregistry"}, "aws.auth#sigv4" => {"name" => "servicecatalog"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Service Catalog App Registry"}
      service.add_operation(:associate_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#AssociateAttributeGroup"
        operation.name = "AssociateAttributeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAttributeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAttributeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{application}/attribute-groups/{attributeGroup}", "code" => 200}}
      end)
      service.add_operation(:associate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#AssociateResource"
        operation.name = "AssociateResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{application}/resources/{resourceType}/{resource}", "code" => 200}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 201}}
      end)
      service.add_operation(:create_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#CreateAttributeGroup"
        operation.name = "CreateAttributeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAttributeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAttributeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/attribute-groups", "code" => 201}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{application}", "code" => 200}}
      end)
      service.add_operation(:delete_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#DeleteAttributeGroup"
        operation.name = "DeleteAttributeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttributeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttributeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/attribute-groups/{attributeGroup}", "code" => 200}}
      end)
      service.add_operation(:disassociate_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#DisassociateAttributeGroup"
        operation.name = "DisassociateAttributeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAttributeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAttributeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{application}/attribute-groups/{attributeGroup}", "code" => 200}}
      end)
      service.add_operation(:disassociate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#DisassociateResource"
        operation.name = "DisassociateResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{application}/resources/{resourceType}/{resource}", "code" => 200}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#GetApplication"
        operation.name = "GetApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}", "code" => 200}}
      end)
      service.add_operation(:get_associated_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#GetAssociatedResource"
        operation.name = "GetAssociatedResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociatedResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociatedResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}/resources/{resourceType}/{resource}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#GetAttributeGroup"
        operation.name = "GetAttributeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttributeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttributeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/attribute-groups/{attributeGroup}", "code" => 200}}
      end)
      service.add_operation(:get_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#GetConfiguration"
        operation.name = "GetConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/configuration", "code" => 200}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListApplications"
        operation.name = "ListApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_associated_attribute_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListAssociatedAttributeGroups"
        operation.name = "ListAssociatedAttributeGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedAttributeGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedAttributeGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}/attribute-groups", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAssociatedAttributeGroups.new
      end)
      service.add_operation(:list_associated_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListAssociatedResources"
        operation.name = "ListAssociatedResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}/resources", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAssociatedResources.new
      end)
      service.add_operation(:list_attribute_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListAttributeGroups"
        operation.name = "ListAttributeGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttributeGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttributeGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/attribute-groups", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAttributeGroups.new
      end)
      service.add_operation(:list_attribute_groups_for_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListAttributeGroupsForApplication"
        operation.name = "ListAttributeGroupsForApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttributeGroupsForApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttributeGroupsForApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{application}/attribute-group-details", "code" => 200}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAttributeGroupsForApplication.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#PutConfiguration"
        operation.name = "PutConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/configuration", "code" => 200}}
      end)
      service.add_operation(:sync_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#SyncResource"
        operation.name = "SyncResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sync/{resourceType}/{resource}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{application}", "code" => 200}}
      end)
      service.add_operation(:update_attribute_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalogappregistry#UpdateAttributeGroup"
        operation.name = "UpdateAttributeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAttributeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAttributeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
