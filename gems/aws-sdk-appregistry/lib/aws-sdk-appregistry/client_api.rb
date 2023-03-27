# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppRegistry
  # @api private
  module ClientApi

    include Seahorse::Model

    AppRegistryConfiguration = Shapes::StructureShape.new(name: 'AppRegistryConfiguration')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationSpecifier = Shapes::StringShape.new(name: 'ApplicationSpecifier')
    ApplicationSummaries = Shapes::ListShape.new(name: 'ApplicationSummaries')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateAttributeGroupRequest = Shapes::StructureShape.new(name: 'AssociateAttributeGroupRequest')
    AssociateAttributeGroupResponse = Shapes::StructureShape.new(name: 'AssociateAttributeGroupResponse')
    AssociateResourceRequest = Shapes::StructureShape.new(name: 'AssociateResourceRequest')
    AssociateResourceResponse = Shapes::StructureShape.new(name: 'AssociateResourceResponse')
    AssociationCount = Shapes::IntegerShape.new(name: 'AssociationCount')
    AttributeGroup = Shapes::StructureShape.new(name: 'AttributeGroup')
    AttributeGroupArn = Shapes::StringShape.new(name: 'AttributeGroupArn')
    AttributeGroupDetails = Shapes::StructureShape.new(name: 'AttributeGroupDetails')
    AttributeGroupDetailsList = Shapes::ListShape.new(name: 'AttributeGroupDetailsList')
    AttributeGroupId = Shapes::StringShape.new(name: 'AttributeGroupId')
    AttributeGroupIds = Shapes::ListShape.new(name: 'AttributeGroupIds')
    AttributeGroupSpecifier = Shapes::StringShape.new(name: 'AttributeGroupSpecifier')
    AttributeGroupSummaries = Shapes::ListShape.new(name: 'AttributeGroupSummaries')
    AttributeGroupSummary = Shapes::StructureShape.new(name: 'AttributeGroupSummary')
    Attributes = Shapes::StringShape.new(name: 'Attributes')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateAttributeGroupRequest = Shapes::StructureShape.new(name: 'CreateAttributeGroupRequest')
    CreateAttributeGroupResponse = Shapes::StructureShape.new(name: 'CreateAttributeGroupResponse')
    CreatedBy = Shapes::StringShape.new(name: 'CreatedBy')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteAttributeGroupRequest = Shapes::StructureShape.new(name: 'DeleteAttributeGroupRequest')
    DeleteAttributeGroupResponse = Shapes::StructureShape.new(name: 'DeleteAttributeGroupResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateAttributeGroupRequest = Shapes::StructureShape.new(name: 'DisassociateAttributeGroupRequest')
    DisassociateAttributeGroupResponse = Shapes::StructureShape.new(name: 'DisassociateAttributeGroupResponse')
    DisassociateResourceRequest = Shapes::StructureShape.new(name: 'DisassociateResourceRequest')
    DisassociateResourceResponse = Shapes::StructureShape.new(name: 'DisassociateResourceResponse')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetAssociatedResourceRequest = Shapes::StructureShape.new(name: 'GetAssociatedResourceRequest')
    GetAssociatedResourceResponse = Shapes::StructureShape.new(name: 'GetAssociatedResourceResponse')
    GetAttributeGroupRequest = Shapes::StructureShape.new(name: 'GetAttributeGroupRequest')
    GetAttributeGroupResponse = Shapes::StructureShape.new(name: 'GetAttributeGroupResponse')
    GetConfigurationResponse = Shapes::StructureShape.new(name: 'GetConfigurationResponse')
    Integrations = Shapes::StructureShape.new(name: 'Integrations')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListAssociatedAttributeGroupsRequest = Shapes::StructureShape.new(name: 'ListAssociatedAttributeGroupsRequest')
    ListAssociatedAttributeGroupsResponse = Shapes::StructureShape.new(name: 'ListAssociatedAttributeGroupsResponse')
    ListAssociatedResourcesRequest = Shapes::StructureShape.new(name: 'ListAssociatedResourcesRequest')
    ListAssociatedResourcesResponse = Shapes::StructureShape.new(name: 'ListAssociatedResourcesResponse')
    ListAttributeGroupsForApplicationRequest = Shapes::StructureShape.new(name: 'ListAttributeGroupsForApplicationRequest')
    ListAttributeGroupsForApplicationResponse = Shapes::StructureShape.new(name: 'ListAttributeGroupsForApplicationResponse')
    ListAttributeGroupsRequest = Shapes::StructureShape.new(name: 'ListAttributeGroupsRequest')
    ListAttributeGroupsResponse = Shapes::StructureShape.new(name: 'ListAttributeGroupsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PutConfigurationRequest = Shapes::StructureShape.new(name: 'PutConfigurationRequest')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceDetails = Shapes::StructureShape.new(name: 'ResourceDetails')
    ResourceGroup = Shapes::StructureShape.new(name: 'ResourceGroup')
    ResourceGroupState = Shapes::StringShape.new(name: 'ResourceGroupState')
    ResourceInfo = Shapes::StructureShape.new(name: 'ResourceInfo')
    ResourceIntegrations = Shapes::StructureShape.new(name: 'ResourceIntegrations')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSpecifier = Shapes::StringShape.new(name: 'ResourceSpecifier')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Resources = Shapes::ListShape.new(name: 'Resources')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StackArn = Shapes::StringShape.new(name: 'StackArn')
    String = Shapes::StringShape.new(name: 'String')
    SyncAction = Shapes::StringShape.new(name: 'SyncAction')
    SyncResourceRequest = Shapes::StructureShape.new(name: 'SyncResourceRequest')
    SyncResourceResponse = Shapes::StructureShape.new(name: 'SyncResourceResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyConfig = Shapes::StringShape.new(name: 'TagKeyConfig')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagQueryConfiguration = Shapes::StructureShape.new(name: 'TagQueryConfiguration')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UpdateAttributeGroupRequest = Shapes::StructureShape.new(name: 'UpdateAttributeGroupRequest')
    UpdateAttributeGroupResponse = Shapes::StructureShape.new(name: 'UpdateAttributeGroupResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AppRegistryConfiguration.add_member(:tag_query_configuration, Shapes::ShapeRef.new(shape: TagQueryConfiguration, location_name: "tagQueryConfiguration"))
    AppRegistryConfiguration.struct_class = Types::AppRegistryConfiguration

    Application.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "id"))
    Application.add_member(:arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "arn"))
    Application.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Application.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Application.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Application.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    Application.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Application.struct_class = Types::Application

    ApplicationSummaries.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "id"))
    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "arn"))
    ApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    ApplicationSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ApplicationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    ApplicationSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    AssociateAttributeGroupRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    AssociateAttributeGroupRequest.add_member(:attribute_group, Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, required: true, location: "uri", location_name: "attributeGroup"))
    AssociateAttributeGroupRequest.struct_class = Types::AssociateAttributeGroupRequest

    AssociateAttributeGroupResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    AssociateAttributeGroupResponse.add_member(:attribute_group_arn, Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: "attributeGroupArn"))
    AssociateAttributeGroupResponse.struct_class = Types::AssociateAttributeGroupResponse

    AssociateResourceRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    AssociateResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location: "uri", location_name: "resourceType"))
    AssociateResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceSpecifier, required: true, location: "uri", location_name: "resource"))
    AssociateResourceRequest.struct_class = Types::AssociateResourceRequest

    AssociateResourceResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    AssociateResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    AssociateResourceResponse.struct_class = Types::AssociateResourceResponse

    AttributeGroup.add_member(:id, Shapes::ShapeRef.new(shape: AttributeGroupId, location_name: "id"))
    AttributeGroup.add_member(:arn, Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: "arn"))
    AttributeGroup.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    AttributeGroup.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AttributeGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AttributeGroup.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    AttributeGroup.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AttributeGroup.struct_class = Types::AttributeGroup

    AttributeGroupDetails.add_member(:id, Shapes::ShapeRef.new(shape: AttributeGroupId, location_name: "id"))
    AttributeGroupDetails.add_member(:arn, Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: "arn"))
    AttributeGroupDetails.add_member(:name, Shapes::ShapeRef.new(shape: Name, deprecated: true, location_name: "name", metadata: {"deprecatedMessage"=>"This field is deprecated. We recommend not using the field when using ListAttributeGroupsForApplication."}))
    AttributeGroupDetails.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    AttributeGroupDetails.struct_class = Types::AttributeGroupDetails

    AttributeGroupDetailsList.member = Shapes::ShapeRef.new(shape: AttributeGroupDetails)

    AttributeGroupIds.member = Shapes::ShapeRef.new(shape: AttributeGroupId)

    AttributeGroupSummaries.member = Shapes::ShapeRef.new(shape: AttributeGroupSummary)

    AttributeGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: AttributeGroupId, location_name: "id"))
    AttributeGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: "arn"))
    AttributeGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    AttributeGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AttributeGroupSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AttributeGroupSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    AttributeGroupSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    AttributeGroupSummary.struct_class = Types::AttributeGroupSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application, Shapes::ShapeRef.new(shape: Application, location_name: "application"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateAttributeGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateAttributeGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAttributeGroupRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "attributes"))
    CreateAttributeGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAttributeGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAttributeGroupRequest.struct_class = Types::CreateAttributeGroupRequest

    CreateAttributeGroupResponse.add_member(:attribute_group, Shapes::ShapeRef.new(shape: AttributeGroup, location_name: "attributeGroup"))
    CreateAttributeGroupResponse.struct_class = Types::CreateAttributeGroupResponse

    DeleteApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSummary, location_name: "application"))
    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteAttributeGroupRequest.add_member(:attribute_group, Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, required: true, location: "uri", location_name: "attributeGroup"))
    DeleteAttributeGroupRequest.struct_class = Types::DeleteAttributeGroupRequest

    DeleteAttributeGroupResponse.add_member(:attribute_group, Shapes::ShapeRef.new(shape: AttributeGroupSummary, location_name: "attributeGroup"))
    DeleteAttributeGroupResponse.struct_class = Types::DeleteAttributeGroupResponse

    DisassociateAttributeGroupRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    DisassociateAttributeGroupRequest.add_member(:attribute_group, Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, required: true, location: "uri", location_name: "attributeGroup"))
    DisassociateAttributeGroupRequest.struct_class = Types::DisassociateAttributeGroupRequest

    DisassociateAttributeGroupResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    DisassociateAttributeGroupResponse.add_member(:attribute_group_arn, Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: "attributeGroupArn"))
    DisassociateAttributeGroupResponse.struct_class = Types::DisassociateAttributeGroupResponse

    DisassociateResourceRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    DisassociateResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location: "uri", location_name: "resourceType"))
    DisassociateResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceSpecifier, required: true, location: "uri", location_name: "resource"))
    DisassociateResourceRequest.struct_class = Types::DisassociateResourceRequest

    DisassociateResourceResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    DisassociateResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    DisassociateResourceResponse.struct_class = Types::DisassociateResourceResponse

    GetApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "id"))
    GetApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "arn"))
    GetApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetApplicationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetApplicationResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    GetApplicationResponse.add_member(:associated_resource_count, Shapes::ShapeRef.new(shape: AssociationCount, location_name: "associatedResourceCount"))
    GetApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetApplicationResponse.add_member(:integrations, Shapes::ShapeRef.new(shape: Integrations, location_name: "integrations"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetAssociatedResourceRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    GetAssociatedResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location: "uri", location_name: "resourceType"))
    GetAssociatedResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceSpecifier, required: true, location: "uri", location_name: "resource"))
    GetAssociatedResourceRequest.struct_class = Types::GetAssociatedResourceRequest

    GetAssociatedResourceResponse.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "resource"))
    GetAssociatedResourceResponse.struct_class = Types::GetAssociatedResourceResponse

    GetAttributeGroupRequest.add_member(:attribute_group, Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, required: true, location: "uri", location_name: "attributeGroup"))
    GetAttributeGroupRequest.struct_class = Types::GetAttributeGroupRequest

    GetAttributeGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: AttributeGroupId, location_name: "id"))
    GetAttributeGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AttributeGroupArn, location_name: "arn"))
    GetAttributeGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetAttributeGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetAttributeGroupResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    GetAttributeGroupResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetAttributeGroupResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    GetAttributeGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetAttributeGroupResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    GetAttributeGroupResponse.struct_class = Types::GetAttributeGroupResponse

    GetConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: AppRegistryConfiguration, location_name: "configuration"))
    GetConfigurationResponse.struct_class = Types::GetConfigurationResponse

    Integrations.add_member(:resource_group, Shapes::ShapeRef.new(shape: ResourceGroup, location_name: "resourceGroup"))
    Integrations.struct_class = Types::Integrations

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: "applications"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListAssociatedAttributeGroupsRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    ListAssociatedAttributeGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssociatedAttributeGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListAssociatedAttributeGroupsRequest.struct_class = Types::ListAssociatedAttributeGroupsRequest

    ListAssociatedAttributeGroupsResponse.add_member(:attribute_groups, Shapes::ShapeRef.new(shape: AttributeGroupIds, location_name: "attributeGroups"))
    ListAssociatedAttributeGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssociatedAttributeGroupsResponse.struct_class = Types::ListAssociatedAttributeGroupsResponse

    ListAssociatedResourcesRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    ListAssociatedResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssociatedResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListAssociatedResourcesRequest.struct_class = Types::ListAssociatedResourcesRequest

    ListAssociatedResourcesResponse.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "resources"))
    ListAssociatedResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssociatedResourcesResponse.struct_class = Types::ListAssociatedResourcesResponse

    ListAttributeGroupsForApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    ListAttributeGroupsForApplicationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAttributeGroupsForApplicationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListAttributeGroupsForApplicationRequest.struct_class = Types::ListAttributeGroupsForApplicationRequest

    ListAttributeGroupsForApplicationResponse.add_member(:attribute_groups_details, Shapes::ShapeRef.new(shape: AttributeGroupDetailsList, location_name: "attributeGroupsDetails"))
    ListAttributeGroupsForApplicationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAttributeGroupsForApplicationResponse.struct_class = Types::ListAttributeGroupsForApplicationResponse

    ListAttributeGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAttributeGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListAttributeGroupsRequest.struct_class = Types::ListAttributeGroupsRequest

    ListAttributeGroupsResponse.add_member(:attribute_groups, Shapes::ShapeRef.new(shape: AttributeGroupSummaries, location_name: "attributeGroups"))
    ListAttributeGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAttributeGroupsResponse.struct_class = Types::ListAttributeGroupsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PutConfigurationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: AppRegistryConfiguration, required: true, location_name: "configuration"))
    PutConfigurationRequest.struct_class = Types::PutConfigurationRequest

    Resource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceSpecifier, location_name: "name"))
    Resource.add_member(:arn, Shapes::ShapeRef.new(shape: StackArn, location_name: "arn"))
    Resource.add_member(:association_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "associationTime"))
    Resource.add_member(:integrations, Shapes::ShapeRef.new(shape: ResourceIntegrations, location_name: "integrations"))
    Resource.struct_class = Types::Resource

    ResourceDetails.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValue, location_name: "tagValue"))
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceGroup.add_member(:state, Shapes::ShapeRef.new(shape: ResourceGroupState, location_name: "state"))
    ResourceGroup.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    ResourceGroup.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    ResourceGroup.struct_class = Types::ResourceGroup

    ResourceInfo.add_member(:name, Shapes::ShapeRef.new(shape: ResourceSpecifier, location_name: "name"))
    ResourceInfo.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    ResourceInfo.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceInfo.add_member(:resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "resourceDetails"))
    ResourceInfo.struct_class = Types::ResourceInfo

    ResourceIntegrations.add_member(:resource_group, Shapes::ShapeRef.new(shape: ResourceGroup, location_name: "resourceGroup"))
    ResourceIntegrations.struct_class = Types::ResourceIntegrations

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Resources.member = Shapes::ShapeRef.new(shape: ResourceInfo)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SyncResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location: "uri", location_name: "resourceType"))
    SyncResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceSpecifier, required: true, location: "uri", location_name: "resource"))
    SyncResourceRequest.struct_class = Types::SyncResourceRequest

    SyncResourceResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    SyncResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    SyncResourceResponse.add_member(:action_taken, Shapes::ShapeRef.new(shape: SyncAction, location_name: "actionTaken"))
    SyncResourceResponse.struct_class = Types::SyncResourceResponse

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagQueryConfiguration.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKeyConfig, location_name: "tagKey"))
    TagQueryConfiguration.struct_class = Types::TagQueryConfiguration

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationSpecifier, required: true, location: "uri", location_name: "application"))
    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, deprecated: true, location_name: "name", metadata: {"deprecatedMessage"=>"Name update for application is deprecated."}))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.add_member(:application, Shapes::ShapeRef.new(shape: Application, location_name: "application"))
    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateAttributeGroupRequest.add_member(:attribute_group, Shapes::ShapeRef.new(shape: AttributeGroupSpecifier, required: true, location: "uri", location_name: "attributeGroup"))
    UpdateAttributeGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, deprecated: true, location_name: "name", metadata: {"deprecatedMessage"=>"Name update for attribute group is deprecated."}))
    UpdateAttributeGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAttributeGroupRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    UpdateAttributeGroupRequest.struct_class = Types::UpdateAttributeGroupRequest

    UpdateAttributeGroupResponse.add_member(:attribute_group, Shapes::ShapeRef.new(shape: AttributeGroup, location_name: "attributeGroup"))
    UpdateAttributeGroupResponse.struct_class = Types::UpdateAttributeGroupResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-06-24"

      api.metadata = {
        "apiVersion" => "2020-06-24",
        "endpointPrefix" => "servicecatalog-appregistry",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "AppRegistry",
        "serviceFullName" => "AWS Service Catalog App Registry",
        "serviceId" => "Service Catalog AppRegistry",
        "signatureVersion" => "v4",
        "signingName" => "servicecatalog",
        "uid" => "AWS242AppRegistry-2020-06-24",
      }

      api.add_operation(:associate_attribute_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAttributeGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{application}/attribute-groups/{attributeGroup}"
        o.input = Shapes::ShapeRef.new(shape: AssociateAttributeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAttributeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResource"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{application}/resources/{resourceType}/{resource}"
        o.input = Shapes::ShapeRef.new(shape: AssociateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_attribute_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAttributeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/attribute-groups"
        o.input = Shapes::ShapeRef.new(shape: CreateAttributeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAttributeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{application}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_attribute_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttributeGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/attribute-groups/{attributeGroup}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttributeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAttributeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_attribute_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAttributeGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{application}/attribute-groups/{attributeGroup}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAttributeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAttributeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{application}/resources/{resourceType}/{resource}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{application}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_associated_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssociatedResource"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{application}/resources/{resourceType}/{resource}"
        o.input = Shapes::ShapeRef.new(shape: GetAssociatedResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssociatedResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_attribute_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAttributeGroup"
        o.http_method = "GET"
        o.http_request_uri = "/attribute-groups/{attributeGroup}"
        o.input = Shapes::ShapeRef.new(shape: GetAttributeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAttributeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/configuration"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associated_attribute_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedAttributeGroups"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{application}/attribute-groups"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedAttributeGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedAttributeGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associated_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedResources"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{application}/resources"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_attribute_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttributeGroups"
        o.http_method = "GET"
        o.http_request_uri = "/attribute-groups"
        o.input = Shapes::ShapeRef.new(shape: ListAttributeGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttributeGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_attribute_groups_for_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttributeGroupsForApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{application}/attribute-group-details"
        o.input = Shapes::ShapeRef.new(shape: ListAttributeGroupsForApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttributeGroupsForApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/configuration"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:sync_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SyncResource"
        o.http_method = "POST"
        o.http_request_uri = "/sync/{resourceType}/{resource}"
        o.input = Shapes::ShapeRef.new(shape: SyncResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: SyncResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{application}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_attribute_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAttributeGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/attribute-groups/{attributeGroup}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAttributeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAttributeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
