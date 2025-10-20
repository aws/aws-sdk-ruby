# frozen_string_literal: true

# This is generated code!

module Aws::IoTThingsGraph
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#Arn", name: "Arn")
    AssociateEntityToThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#AssociateEntityToThingRequest", name: "AssociateEntityToThingRequest")
    AssociateEntityToThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#AssociateEntityToThingResponse", name: "AssociateEntityToThingResponse")
    CreateFlowTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#CreateFlowTemplateRequest", name: "CreateFlowTemplateRequest")
    CreateFlowTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#CreateFlowTemplateResponse", name: "CreateFlowTemplateResponse")
    CreateSystemInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#CreateSystemInstanceRequest", name: "CreateSystemInstanceRequest")
    CreateSystemInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#CreateSystemInstanceResponse", name: "CreateSystemInstanceResponse")
    CreateSystemTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#CreateSystemTemplateRequest", name: "CreateSystemTemplateRequest")
    CreateSystemTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#CreateSystemTemplateResponse", name: "CreateSystemTemplateResponse")
    DefinitionDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DefinitionDocument", name: "DefinitionDocument")
    DefinitionLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#DefinitionLanguage", name: "DefinitionLanguage")
    DefinitionText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#DefinitionText", name: "DefinitionText", traits: {"smithy.api#length" => {"min" => 0, "max" => 1048576}})
    DeleteFlowTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeleteFlowTemplateRequest", name: "DeleteFlowTemplateRequest")
    DeleteFlowTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeleteFlowTemplateResponse", name: "DeleteFlowTemplateResponse")
    DeleteNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeleteNamespaceRequest", name: "DeleteNamespaceRequest")
    DeleteNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeleteNamespaceResponse", name: "DeleteNamespaceResponse")
    DeleteSystemInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeleteSystemInstanceRequest", name: "DeleteSystemInstanceRequest")
    DeleteSystemInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeleteSystemInstanceResponse", name: "DeleteSystemInstanceResponse")
    DeleteSystemTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeleteSystemTemplateRequest", name: "DeleteSystemTemplateRequest")
    DeleteSystemTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeleteSystemTemplateResponse", name: "DeleteSystemTemplateResponse")
    DependencyRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DependencyRevision", name: "DependencyRevision")
    DependencyRevisions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#DependencyRevisions", name: "DependencyRevisions")
    DeploySystemInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeploySystemInstanceRequest", name: "DeploySystemInstanceRequest")
    DeploySystemInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeploySystemInstanceResponse", name: "DeploySystemInstanceResponse")
    DeploymentTarget = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#DeploymentTarget", name: "DeploymentTarget")
    DeprecateExistingEntities = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotthingsgraph#DeprecateExistingEntities", name: "DeprecateExistingEntities", traits: {"smithy.api#default" => false})
    DeprecateFlowTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeprecateFlowTemplateRequest", name: "DeprecateFlowTemplateRequest")
    DeprecateFlowTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeprecateFlowTemplateResponse", name: "DeprecateFlowTemplateResponse")
    DeprecateSystemTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeprecateSystemTemplateRequest", name: "DeprecateSystemTemplateRequest")
    DeprecateSystemTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DeprecateSystemTemplateResponse", name: "DeprecateSystemTemplateResponse")
    DescribeNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DescribeNamespaceRequest", name: "DescribeNamespaceRequest")
    DescribeNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DescribeNamespaceResponse", name: "DescribeNamespaceResponse")
    DissociateEntityFromThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DissociateEntityFromThingRequest", name: "DissociateEntityFromThingRequest")
    DissociateEntityFromThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#DissociateEntityFromThingResponse", name: "DissociateEntityFromThingResponse")
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotthingsgraph#Enabled", name: "Enabled", traits: {"smithy.api#default" => false})
    EntityDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#EntityDescription", name: "EntityDescription")
    EntityDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#EntityDescriptions", name: "EntityDescriptions")
    EntityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#EntityFilter", name: "EntityFilter")
    EntityFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#EntityFilterName", name: "EntityFilterName")
    EntityFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#EntityFilterValue", name: "EntityFilterValue")
    EntityFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#EntityFilterValues", name: "EntityFilterValues")
    EntityFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#EntityFilters", name: "EntityFilters")
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#EntityType", name: "EntityType")
    EntityTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#EntityTypes", name: "EntityTypes")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    FlowExecutionEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionEventType", name: "FlowExecutionEventType")
    FlowExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionId", name: "FlowExecutionId")
    FlowExecutionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionMessage", name: "FlowExecutionMessage")
    FlowExecutionMessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionMessageId", name: "FlowExecutionMessageId")
    FlowExecutionMessagePayload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionMessagePayload", name: "FlowExecutionMessagePayload")
    FlowExecutionMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionMessages", name: "FlowExecutionMessages")
    FlowExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionStatus", name: "FlowExecutionStatus")
    FlowExecutionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionSummaries", name: "FlowExecutionSummaries")
    FlowExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#FlowExecutionSummary", name: "FlowExecutionSummary")
    FlowTemplateDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#FlowTemplateDescription", name: "FlowTemplateDescription")
    FlowTemplateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#FlowTemplateFilter", name: "FlowTemplateFilter")
    FlowTemplateFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#FlowTemplateFilterName", name: "FlowTemplateFilterName")
    FlowTemplateFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#FlowTemplateFilterValue", name: "FlowTemplateFilterValue", traits: {"smithy.api#pattern" => "^urn:tdm:(([a-z]{2}-(gov-)?[a-z]{4,9}-[0-9]{1,3}/[0-9]+/)*[\\p{Alnum}_]+(/[\\p{Alnum}_]+)*):([\\p{Alpha}]*):([\\p{Alnum}_]+(/[\\p{Alnum}_]+)*)$"})
    FlowTemplateFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#FlowTemplateFilterValues", name: "FlowTemplateFilterValues")
    FlowTemplateFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#FlowTemplateFilters", name: "FlowTemplateFilters")
    FlowTemplateSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#FlowTemplateSummaries", name: "FlowTemplateSummaries")
    FlowTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#FlowTemplateSummary", name: "FlowTemplateSummary")
    GetEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetEntitiesRequest", name: "GetEntitiesRequest")
    GetEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetEntitiesResponse", name: "GetEntitiesResponse")
    GetFlowTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetFlowTemplateRequest", name: "GetFlowTemplateRequest")
    GetFlowTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetFlowTemplateResponse", name: "GetFlowTemplateResponse")
    GetFlowTemplateRevisionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetFlowTemplateRevisionsRequest", name: "GetFlowTemplateRevisionsRequest")
    GetFlowTemplateRevisionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetFlowTemplateRevisionsResponse", name: "GetFlowTemplateRevisionsResponse")
    GetNamespaceDeletionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetNamespaceDeletionStatusRequest", name: "GetNamespaceDeletionStatusRequest")
    GetNamespaceDeletionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetNamespaceDeletionStatusResponse", name: "GetNamespaceDeletionStatusResponse")
    GetSystemInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetSystemInstanceRequest", name: "GetSystemInstanceRequest")
    GetSystemInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetSystemInstanceResponse", name: "GetSystemInstanceResponse")
    GetSystemTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetSystemTemplateRequest", name: "GetSystemTemplateRequest")
    GetSystemTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetSystemTemplateResponse", name: "GetSystemTemplateResponse")
    GetSystemTemplateRevisionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetSystemTemplateRevisionsRequest", name: "GetSystemTemplateRevisionsRequest")
    GetSystemTemplateRevisionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetSystemTemplateRevisionsResponse", name: "GetSystemTemplateRevisionsResponse")
    GetUploadStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetUploadStatusRequest", name: "GetUploadStatusRequest")
    GetUploadStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#GetUploadStatusResponse", name: "GetUploadStatusResponse")
    GreengrassDeploymentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#GreengrassDeploymentId", name: "GreengrassDeploymentId")
    GreengrassGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#GreengrassGroupId", name: "GreengrassGroupId")
    GreengrassGroupVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#GreengrassGroupVersionId", name: "GreengrassGroupVersionId")
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#GroupName", name: "GroupName")
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListFlowExecutionMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#ListFlowExecutionMessagesRequest", name: "ListFlowExecutionMessagesRequest")
    ListFlowExecutionMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#ListFlowExecutionMessagesResponse", name: "ListFlowExecutionMessagesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotthingsgraph#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    MetricsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#MetricsConfiguration", name: "MetricsConfiguration")
    NamespaceDeletionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#NamespaceDeletionStatus", name: "NamespaceDeletionStatus")
    NamespaceDeletionStatusErrorCodes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#NamespaceDeletionStatusErrorCodes", name: "NamespaceDeletionStatusErrorCodes")
    NamespaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#NamespaceName", name: "NamespaceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#NextToken", name: "NextToken")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#S3BucketName", name: "S3BucketName")
    SearchEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchEntitiesRequest", name: "SearchEntitiesRequest")
    SearchEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchEntitiesResponse", name: "SearchEntitiesResponse")
    SearchFlowExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchFlowExecutionsRequest", name: "SearchFlowExecutionsRequest")
    SearchFlowExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchFlowExecutionsResponse", name: "SearchFlowExecutionsResponse")
    SearchFlowTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchFlowTemplatesRequest", name: "SearchFlowTemplatesRequest")
    SearchFlowTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchFlowTemplatesResponse", name: "SearchFlowTemplatesResponse")
    SearchSystemInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchSystemInstancesRequest", name: "SearchSystemInstancesRequest")
    SearchSystemInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchSystemInstancesResponse", name: "SearchSystemInstancesResponse")
    SearchSystemTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchSystemTemplatesRequest", name: "SearchSystemTemplatesRequest")
    SearchSystemTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchSystemTemplatesResponse", name: "SearchSystemTemplatesResponse")
    SearchThingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchThingsRequest", name: "SearchThingsRequest")
    SearchThingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SearchThingsResponse", name: "SearchThingsResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#StringList", name: "StringList")
    SyncWithPublicNamespace = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotthingsgraph#SyncWithPublicNamespace", name: "SyncWithPublicNamespace", traits: {"smithy.api#default" => false})
    SystemInstanceDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceDeploymentStatus", name: "SystemInstanceDeploymentStatus")
    SystemInstanceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceDescription", name: "SystemInstanceDescription")
    SystemInstanceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceFilter", name: "SystemInstanceFilter")
    SystemInstanceFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceFilterName", name: "SystemInstanceFilterName")
    SystemInstanceFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceFilterValue", name: "SystemInstanceFilterValue")
    SystemInstanceFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceFilterValues", name: "SystemInstanceFilterValues")
    SystemInstanceFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceFilters", name: "SystemInstanceFilters")
    SystemInstanceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceSummaries", name: "SystemInstanceSummaries")
    SystemInstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SystemInstanceSummary", name: "SystemInstanceSummary")
    SystemTemplateDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SystemTemplateDescription", name: "SystemTemplateDescription")
    SystemTemplateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SystemTemplateFilter", name: "SystemTemplateFilter")
    SystemTemplateFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#SystemTemplateFilterName", name: "SystemTemplateFilterName")
    SystemTemplateFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#SystemTemplateFilterValue", name: "SystemTemplateFilterValue", traits: {"smithy.api#pattern" => "^urn:tdm:(([a-z]{2}-(gov-)?[a-z]{4,9}-[0-9]{1,3}/[0-9]+/)*[\\p{Alnum}_]+(/[\\p{Alnum}_]+)*):([\\p{Alpha}]*):([\\p{Alnum}_]+(/[\\p{Alnum}_]+)*)$"})
    SystemTemplateFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#SystemTemplateFilterValues", name: "SystemTemplateFilterValues")
    SystemTemplateFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#SystemTemplateFilters", name: "SystemTemplateFilters")
    SystemTemplateSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#SystemTemplateSummaries", name: "SystemTemplateSummaries")
    SystemTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#SystemTemplateSummary", name: "SystemTemplateSummary")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Thing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#Thing", name: "Thing")
    ThingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#ThingArn", name: "ThingArn")
    ThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#ThingName", name: "ThingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    Things = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#Things", name: "Things")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotthingsgraph#Timestamp", name: "Timestamp")
    UndeploySystemInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UndeploySystemInstanceRequest", name: "UndeploySystemInstanceRequest")
    UndeploySystemInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UndeploySystemInstanceResponse", name: "UndeploySystemInstanceResponse")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateFlowTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UpdateFlowTemplateRequest", name: "UpdateFlowTemplateRequest")
    UpdateFlowTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UpdateFlowTemplateResponse", name: "UpdateFlowTemplateResponse")
    UpdateSystemTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UpdateSystemTemplateRequest", name: "UpdateSystemTemplateRequest")
    UpdateSystemTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UpdateSystemTemplateResponse", name: "UpdateSystemTemplateResponse")
    UploadEntityDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UploadEntityDefinitionsRequest", name: "UploadEntityDefinitionsRequest")
    UploadEntityDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotthingsgraph#UploadEntityDefinitionsResponse", name: "UploadEntityDefinitionsResponse")
    UploadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#UploadId", name: "UploadId", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    UploadStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotthingsgraph#UploadStatus", name: "UploadStatus")
    Urn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotthingsgraph#Urn", name: "Urn", traits: {"smithy.api#length" => {"min" => 0, "max" => 160}, "smithy.api#pattern" => "^urn:tdm:(([a-z]{2}-(gov-)?[a-z]{4,9}-[0-9]{1,3}/[0-9]+/)*[\\p{Alnum}_]+(/[\\p{Alnum}_]+)*):([\\p{Alpha}]*):([\\p{Alnum}_]+(/[\\p{Alnum}_]+)*)$"})
    Urns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotthingsgraph#Urns", name: "Urns", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    Version = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotthingsgraph#Version", name: "Version")

    AssociateEntityToThingRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName", traits: {"smithy.api#required" => {}}))
    AssociateEntityToThingRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "entityId", traits: {"smithy.api#required" => {}}))
    AssociateEntityToThingRequest.add_member(:namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    AssociateEntityToThingRequest.type = Types::AssociateEntityToThingRequest
    AssociateEntityToThingResponse.type = Types::AssociateEntityToThingResponse
    CreateFlowTemplateRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition", traits: {"smithy.api#required" => {}}))
    CreateFlowTemplateRequest.add_member(:compatible_namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "compatibleNamespaceVersion"))
    CreateFlowTemplateRequest.type = Types::CreateFlowTemplateRequest
    CreateFlowTemplateResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateSummary, location_name: "summary"))
    CreateFlowTemplateResponse.type = Types::CreateFlowTemplateResponse
    CreateSystemInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateSystemInstanceRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition", traits: {"smithy.api#required" => {}}))
    CreateSystemInstanceRequest.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTarget, location_name: "target", traits: {"smithy.api#required" => {}}))
    CreateSystemInstanceRequest.add_member(:greengrass_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: "greengrassGroupName"))
    CreateSystemInstanceRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    CreateSystemInstanceRequest.add_member(:metrics_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsConfiguration, location_name: "metricsConfiguration"))
    CreateSystemInstanceRequest.add_member(:flow_actions_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "flowActionsRoleArn"))
    CreateSystemInstanceRequest.type = Types::CreateSystemInstanceRequest
    CreateSystemInstanceResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceSummary, location_name: "summary"))
    CreateSystemInstanceResponse.type = Types::CreateSystemInstanceResponse
    CreateSystemTemplateRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition", traits: {"smithy.api#required" => {}}))
    CreateSystemTemplateRequest.add_member(:compatible_namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "compatibleNamespaceVersion"))
    CreateSystemTemplateRequest.type = Types::CreateSystemTemplateRequest
    CreateSystemTemplateResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateSummary, location_name: "summary"))
    CreateSystemTemplateResponse.type = Types::CreateSystemTemplateResponse
    DefinitionDocument.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionLanguage, location_name: "language", traits: {"smithy.api#required" => {}}))
    DefinitionDocument.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionText, location_name: "text", traits: {"smithy.api#required" => {}}))
    DefinitionDocument.type = Types::DefinitionDocument
    DefinitionLanguage.add_member(:graphql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GRAPHQL", traits: {"smithy.api#enumValue" => "GRAPHQL"}))
    DeleteFlowTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    DeleteFlowTemplateRequest.type = Types::DeleteFlowTemplateRequest
    DeleteFlowTemplateResponse.type = Types::DeleteFlowTemplateResponse
    DeleteNamespaceRequest.type = Types::DeleteNamespaceRequest
    DeleteNamespaceResponse.add_member(:namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "namespaceArn"))
    DeleteNamespaceResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    DeleteNamespaceResponse.type = Types::DeleteNamespaceResponse
    DeleteSystemInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    DeleteSystemInstanceRequest.type = Types::DeleteSystemInstanceRequest
    DeleteSystemInstanceResponse.type = Types::DeleteSystemInstanceResponse
    DeleteSystemTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    DeleteSystemTemplateRequest.type = Types::DeleteSystemTemplateRequest
    DeleteSystemTemplateResponse.type = Types::DeleteSystemTemplateResponse
    DependencyRevision.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    DependencyRevision.add_member(:revision_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    DependencyRevision.type = Types::DependencyRevision
    DependencyRevisions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyRevision)
    DeploySystemInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    DeploySystemInstanceRequest.type = Types::DeploySystemInstanceRequest
    DeploySystemInstanceResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceSummary, location_name: "summary", traits: {"smithy.api#required" => {}}))
    DeploySystemInstanceResponse.add_member(:greengrass_deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GreengrassDeploymentId, location_name: "greengrassDeploymentId"))
    DeploySystemInstanceResponse.type = Types::DeploySystemInstanceResponse
    DeploymentTarget.add_member(:greengrass, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREENGRASS", traits: {"smithy.api#enumValue" => "GREENGRASS"}))
    DeploymentTarget.add_member(:cloud, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUD", traits: {"smithy.api#enumValue" => "CLOUD"}))
    DeprecateFlowTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    DeprecateFlowTemplateRequest.type = Types::DeprecateFlowTemplateRequest
    DeprecateFlowTemplateResponse.type = Types::DeprecateFlowTemplateResponse
    DeprecateSystemTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    DeprecateSystemTemplateRequest.type = Types::DeprecateSystemTemplateRequest
    DeprecateSystemTemplateResponse.type = Types::DeprecateSystemTemplateResponse
    DescribeNamespaceRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    DescribeNamespaceRequest.type = Types::DescribeNamespaceRequest
    DescribeNamespaceResponse.add_member(:namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "namespaceArn"))
    DescribeNamespaceResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    DescribeNamespaceResponse.add_member(:tracking_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "trackingNamespaceName"))
    DescribeNamespaceResponse.add_member(:tracking_namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "trackingNamespaceVersion"))
    DescribeNamespaceResponse.add_member(:namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    DescribeNamespaceResponse.type = Types::DescribeNamespaceResponse
    DissociateEntityFromThingRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName", traits: {"smithy.api#required" => {}}))
    DissociateEntityFromThingRequest.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: "entityType", traits: {"smithy.api#required" => {}}))
    DissociateEntityFromThingRequest.type = Types::DissociateEntityFromThingRequest
    DissociateEntityFromThingResponse.type = Types::DissociateEntityFromThingResponse
    EntityDescription.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    EntityDescription.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EntityDescription.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: "type"))
    EntityDescription.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    EntityDescription.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition"))
    EntityDescription.type = Types::EntityDescription
    EntityDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescription)
    EntityFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityFilterName, location_name: "name"))
    EntityFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityFilterValues, location_name: "value"))
    EntityFilter.type = Types::EntityFilter
    EntityFilterName.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    EntityFilterName.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAMESPACE", traits: {"smithy.api#enumValue" => "NAMESPACE"}))
    EntityFilterName.add_member(:semantic_type_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEMANTIC_TYPE_PATH", traits: {"smithy.api#enumValue" => "SEMANTIC_TYPE_PATH"}))
    EntityFilterName.add_member(:referenced_entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REFERENCED_ENTITY_ID", traits: {"smithy.api#enumValue" => "REFERENCED_ENTITY_ID"}))
    EntityFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityFilterValue)
    EntityFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityFilter)
    EntityType.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE", traits: {"smithy.api#enumValue" => "DEVICE"}))
    EntityType.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    EntityType.add_member(:device_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_MODEL", traits: {"smithy.api#enumValue" => "DEVICE_MODEL"}))
    EntityType.add_member(:capability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPABILITY", traits: {"smithy.api#enumValue" => "CAPABILITY"}))
    EntityType.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATE", traits: {"smithy.api#enumValue" => "STATE"}))
    EntityType.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTION", traits: {"smithy.api#enumValue" => "ACTION"}))
    EntityType.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    EntityType.add_member(:property, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROPERTY", traits: {"smithy.api#enumValue" => "PROPERTY"}))
    EntityType.add_member(:mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAPPING", traits: {"smithy.api#enumValue" => "MAPPING"}))
    EntityType.add_member(:enum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENUM", traits: {"smithy.api#enumValue" => "ENUM"}))
    EntityTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType)
    FlowExecutionEventType.add_member(:execution_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXECUTION_STARTED", traits: {"smithy.api#enumValue" => "EXECUTION_STARTED"}))
    FlowExecutionEventType.add_member(:execution_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXECUTION_FAILED", traits: {"smithy.api#enumValue" => "EXECUTION_FAILED"}))
    FlowExecutionEventType.add_member(:execution_aborted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXECUTION_ABORTED", traits: {"smithy.api#enumValue" => "EXECUTION_ABORTED"}))
    FlowExecutionEventType.add_member(:execution_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXECUTION_SUCCEEDED", traits: {"smithy.api#enumValue" => "EXECUTION_SUCCEEDED"}))
    FlowExecutionEventType.add_member(:step_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STEP_STARTED", traits: {"smithy.api#enumValue" => "STEP_STARTED"}))
    FlowExecutionEventType.add_member(:step_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STEP_FAILED", traits: {"smithy.api#enumValue" => "STEP_FAILED"}))
    FlowExecutionEventType.add_member(:step_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STEP_SUCCEEDED", traits: {"smithy.api#enumValue" => "STEP_SUCCEEDED"}))
    FlowExecutionEventType.add_member(:activity_scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVITY_SCHEDULED", traits: {"smithy.api#enumValue" => "ACTIVITY_SCHEDULED"}))
    FlowExecutionEventType.add_member(:activity_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVITY_STARTED", traits: {"smithy.api#enumValue" => "ACTIVITY_STARTED"}))
    FlowExecutionEventType.add_member(:activity_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVITY_FAILED", traits: {"smithy.api#enumValue" => "ACTIVITY_FAILED"}))
    FlowExecutionEventType.add_member(:activity_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVITY_SUCCEEDED", traits: {"smithy.api#enumValue" => "ACTIVITY_SUCCEEDED"}))
    FlowExecutionEventType.add_member(:start_flow_execution_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_FLOW_EXECUTION_TASK", traits: {"smithy.api#enumValue" => "START_FLOW_EXECUTION_TASK"}))
    FlowExecutionEventType.add_member(:schedule_next_ready_steps_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULE_NEXT_READY_STEPS_TASK", traits: {"smithy.api#enumValue" => "SCHEDULE_NEXT_READY_STEPS_TASK"}))
    FlowExecutionEventType.add_member(:thing_action_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THING_ACTION_TASK", traits: {"smithy.api#enumValue" => "THING_ACTION_TASK"}))
    FlowExecutionEventType.add_member(:thing_action_task_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THING_ACTION_TASK_FAILED", traits: {"smithy.api#enumValue" => "THING_ACTION_TASK_FAILED"}))
    FlowExecutionEventType.add_member(:thing_action_task_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THING_ACTION_TASK_SUCCEEDED", traits: {"smithy.api#enumValue" => "THING_ACTION_TASK_SUCCEEDED"}))
    FlowExecutionEventType.add_member(:acknowledge_task_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACKNOWLEDGE_TASK_MESSAGE", traits: {"smithy.api#enumValue" => "ACKNOWLEDGE_TASK_MESSAGE"}))
    FlowExecutionMessage.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionMessageId, location_name: "messageId"))
    FlowExecutionMessage.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionEventType, location_name: "eventType"))
    FlowExecutionMessage.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    FlowExecutionMessage.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionMessagePayload, location_name: "payload"))
    FlowExecutionMessage.type = Types::FlowExecutionMessage
    FlowExecutionMessages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionMessage)
    FlowExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    FlowExecutionStatus.add_member(:aborted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    FlowExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    FlowExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FlowExecutionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionSummary)
    FlowExecutionSummary.add_member(:flow_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionId, location_name: "flowExecutionId"))
    FlowExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionStatus, location_name: "status"))
    FlowExecutionSummary.add_member(:system_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "systemInstanceId"))
    FlowExecutionSummary.add_member(:flow_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "flowTemplateId"))
    FlowExecutionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    FlowExecutionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    FlowExecutionSummary.type = Types::FlowExecutionSummary
    FlowTemplateDescription.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateSummary, location_name: "summary"))
    FlowTemplateDescription.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition"))
    FlowTemplateDescription.add_member(:validated_namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "validatedNamespaceVersion"))
    FlowTemplateDescription.type = Types::FlowTemplateDescription
    FlowTemplateFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateFilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    FlowTemplateFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateFilterValues, location_name: "value", traits: {"smithy.api#required" => {}}))
    FlowTemplateFilter.type = Types::FlowTemplateFilter
    FlowTemplateFilterName.add_member(:device_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_MODEL_ID", traits: {"smithy.api#enumValue" => "DEVICE_MODEL_ID"}))
    FlowTemplateFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateFilterValue)
    FlowTemplateFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateFilter)
    FlowTemplateSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateSummary)
    FlowTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    FlowTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    FlowTemplateSummary.add_member(:revision_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    FlowTemplateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    FlowTemplateSummary.type = Types::FlowTemplateSummary
    GetEntitiesRequest.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urns, location_name: "ids", traits: {"smithy.api#required" => {}}))
    GetEntitiesRequest.add_member(:namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    GetEntitiesRequest.type = Types::GetEntitiesRequest
    GetEntitiesResponse.add_member(:descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescriptions, location_name: "descriptions"))
    GetEntitiesResponse.type = Types::GetEntitiesResponse
    GetFlowTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetFlowTemplateRequest.add_member(:revision_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    GetFlowTemplateRequest.type = Types::GetFlowTemplateRequest
    GetFlowTemplateResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateDescription, location_name: "description"))
    GetFlowTemplateResponse.type = Types::GetFlowTemplateResponse
    GetFlowTemplateRevisionsRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetFlowTemplateRevisionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetFlowTemplateRevisionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetFlowTemplateRevisionsRequest.type = Types::GetFlowTemplateRevisionsRequest
    GetFlowTemplateRevisionsResponse.add_member(:summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateSummaries, location_name: "summaries"))
    GetFlowTemplateRevisionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetFlowTemplateRevisionsResponse.type = Types::GetFlowTemplateRevisionsResponse
    GetNamespaceDeletionStatusRequest.type = Types::GetNamespaceDeletionStatusRequest
    GetNamespaceDeletionStatusResponse.add_member(:namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "namespaceArn"))
    GetNamespaceDeletionStatusResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    GetNamespaceDeletionStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceDeletionStatus, location_name: "status"))
    GetNamespaceDeletionStatusResponse.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceDeletionStatusErrorCodes, location_name: "errorCode"))
    GetNamespaceDeletionStatusResponse.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    GetNamespaceDeletionStatusResponse.type = Types::GetNamespaceDeletionStatusResponse
    GetSystemInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetSystemInstanceRequest.type = Types::GetSystemInstanceRequest
    GetSystemInstanceResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceDescription, location_name: "description"))
    GetSystemInstanceResponse.type = Types::GetSystemInstanceResponse
    GetSystemTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetSystemTemplateRequest.add_member(:revision_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    GetSystemTemplateRequest.type = Types::GetSystemTemplateRequest
    GetSystemTemplateResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateDescription, location_name: "description"))
    GetSystemTemplateResponse.type = Types::GetSystemTemplateResponse
    GetSystemTemplateRevisionsRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetSystemTemplateRevisionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetSystemTemplateRevisionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetSystemTemplateRevisionsRequest.type = Types::GetSystemTemplateRevisionsRequest
    GetSystemTemplateRevisionsResponse.add_member(:summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateSummaries, location_name: "summaries"))
    GetSystemTemplateRevisionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetSystemTemplateRevisionsResponse.type = Types::GetSystemTemplateRevisionsResponse
    GetUploadStatusRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId", traits: {"smithy.api#required" => {}}))
    GetUploadStatusRequest.type = Types::GetUploadStatusRequest
    GetUploadStatusResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId", traits: {"smithy.api#required" => {}}))
    GetUploadStatusResponse.add_member(:upload_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadStatus, location_name: "uploadStatus", traits: {"smithy.api#required" => {}}))
    GetUploadStatusResponse.add_member(:namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "namespaceArn"))
    GetUploadStatusResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    GetUploadStatusResponse.add_member(:namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    GetUploadStatusResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "failureReason"))
    GetUploadStatusResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdDate", traits: {"smithy.api#required" => {}}))
    GetUploadStatusResponse.type = Types::GetUploadStatusResponse
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListFlowExecutionMessagesRequest.add_member(:flow_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionId, location_name: "flowExecutionId", traits: {"smithy.api#required" => {}}))
    ListFlowExecutionMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowExecutionMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListFlowExecutionMessagesRequest.type = Types::ListFlowExecutionMessagesRequest
    ListFlowExecutionMessagesResponse.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionMessages, location_name: "messages"))
    ListFlowExecutionMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowExecutionMessagesResponse.type = Types::ListFlowExecutionMessagesResponse
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetricsConfiguration.add_member(:cloud_metric_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: "cloudMetricEnabled", traits: {"smithy.api#default" => false}))
    MetricsConfiguration.add_member(:metric_rule_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "metricRuleRoleArn"))
    MetricsConfiguration.type = Types::MetricsConfiguration
    NamespaceDeletionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    NamespaceDeletionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    NamespaceDeletionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    NamespaceDeletionStatusErrorCodes.add_member(:validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchEntitiesRequest.add_member(:entity_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypes, location_name: "entityTypes", traits: {"smithy.api#required" => {}}))
    SearchEntitiesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityFilters, location_name: "filters"))
    SearchEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchEntitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchEntitiesRequest.add_member(:namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    SearchEntitiesRequest.type = Types::SearchEntitiesRequest
    SearchEntitiesResponse.add_member(:descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescriptions, location_name: "descriptions"))
    SearchEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchEntitiesResponse.type = Types::SearchEntitiesResponse
    SearchFlowExecutionsRequest.add_member(:system_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "systemInstanceId", traits: {"smithy.api#required" => {}}))
    SearchFlowExecutionsRequest.add_member(:flow_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionId, location_name: "flowExecutionId"))
    SearchFlowExecutionsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    SearchFlowExecutionsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    SearchFlowExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFlowExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchFlowExecutionsRequest.type = Types::SearchFlowExecutionsRequest
    SearchFlowExecutionsResponse.add_member(:summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowExecutionSummaries, location_name: "summaries"))
    SearchFlowExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFlowExecutionsResponse.type = Types::SearchFlowExecutionsResponse
    SearchFlowTemplatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateFilters, location_name: "filters"))
    SearchFlowTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFlowTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchFlowTemplatesRequest.type = Types::SearchFlowTemplatesRequest
    SearchFlowTemplatesResponse.add_member(:summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateSummaries, location_name: "summaries"))
    SearchFlowTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFlowTemplatesResponse.type = Types::SearchFlowTemplatesResponse
    SearchSystemInstancesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceFilters, location_name: "filters"))
    SearchSystemInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSystemInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchSystemInstancesRequest.type = Types::SearchSystemInstancesRequest
    SearchSystemInstancesResponse.add_member(:summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceSummaries, location_name: "summaries"))
    SearchSystemInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSystemInstancesResponse.type = Types::SearchSystemInstancesResponse
    SearchSystemTemplatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateFilters, location_name: "filters"))
    SearchSystemTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSystemTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchSystemTemplatesRequest.type = Types::SearchSystemTemplatesRequest
    SearchSystemTemplatesResponse.add_member(:summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateSummaries, location_name: "summaries"))
    SearchSystemTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSystemTemplatesResponse.type = Types::SearchSystemTemplatesResponse
    SearchThingsRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "entityId", traits: {"smithy.api#required" => {}}))
    SearchThingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchThingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchThingsRequest.add_member(:namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    SearchThingsRequest.type = Types::SearchThingsRequest
    SearchThingsResponse.add_member(:things, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Things, location_name: "things"))
    SearchThingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchThingsResponse.type = Types::SearchThingsResponse
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SystemInstanceDeploymentStatus.add_member(:not_deployed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_DEPLOYED", traits: {"smithy.api#enumValue" => "NOT_DEPLOYED"}))
    SystemInstanceDeploymentStatus.add_member(:bootstrap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOTSTRAP", traits: {"smithy.api#enumValue" => "BOOTSTRAP"}))
    SystemInstanceDeploymentStatus.add_member(:deploy_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOY_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DEPLOY_IN_PROGRESS"}))
    SystemInstanceDeploymentStatus.add_member(:deployed_in_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYED_IN_TARGET", traits: {"smithy.api#enumValue" => "DEPLOYED_IN_TARGET"}))
    SystemInstanceDeploymentStatus.add_member(:undeploy_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNDEPLOY_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UNDEPLOY_IN_PROGRESS"}))
    SystemInstanceDeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SystemInstanceDeploymentStatus.add_member(:pending_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DELETE", traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    SystemInstanceDeploymentStatus.add_member(:deleted_in_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED_IN_TARGET", traits: {"smithy.api#enumValue" => "DELETED_IN_TARGET"}))
    SystemInstanceDescription.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceSummary, location_name: "summary"))
    SystemInstanceDescription.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition"))
    SystemInstanceDescription.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    SystemInstanceDescription.add_member(:metrics_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsConfiguration, location_name: "metricsConfiguration"))
    SystemInstanceDescription.add_member(:validated_namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "validatedNamespaceVersion"))
    SystemInstanceDescription.add_member(:validated_dependency_revisions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyRevisions, location_name: "validatedDependencyRevisions"))
    SystemInstanceDescription.add_member(:flow_actions_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "flowActionsRoleArn"))
    SystemInstanceDescription.type = Types::SystemInstanceDescription
    SystemInstanceFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceFilterName, location_name: "name"))
    SystemInstanceFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceFilterValues, location_name: "value"))
    SystemInstanceFilter.type = Types::SystemInstanceFilter
    SystemInstanceFilterName.add_member(:system_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM_TEMPLATE_ID", traits: {"smithy.api#enumValue" => "SYSTEM_TEMPLATE_ID"}))
    SystemInstanceFilterName.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    SystemInstanceFilterName.add_member(:greengrass_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREENGRASS_GROUP_NAME", traits: {"smithy.api#enumValue" => "GREENGRASS_GROUP_NAME"}))
    SystemInstanceFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceFilterValue)
    SystemInstanceFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceFilter)
    SystemInstanceSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceSummary)
    SystemInstanceSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    SystemInstanceSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SystemInstanceSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceDeploymentStatus, location_name: "status"))
    SystemInstanceSummary.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTarget, location_name: "target"))
    SystemInstanceSummary.add_member(:greengrass_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: "greengrassGroupName"))
    SystemInstanceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SystemInstanceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    SystemInstanceSummary.add_member(:greengrass_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GreengrassGroupId, location_name: "greengrassGroupId"))
    SystemInstanceSummary.add_member(:greengrass_group_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GreengrassGroupVersionId, location_name: "greengrassGroupVersionId"))
    SystemInstanceSummary.type = Types::SystemInstanceSummary
    SystemTemplateDescription.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateSummary, location_name: "summary"))
    SystemTemplateDescription.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition"))
    SystemTemplateDescription.add_member(:validated_namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "validatedNamespaceVersion"))
    SystemTemplateDescription.type = Types::SystemTemplateDescription
    SystemTemplateFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateFilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    SystemTemplateFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateFilterValues, location_name: "value", traits: {"smithy.api#required" => {}}))
    SystemTemplateFilter.type = Types::SystemTemplateFilter
    SystemTemplateFilterName.add_member(:flow_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLOW_TEMPLATE_ID", traits: {"smithy.api#enumValue" => "FLOW_TEMPLATE_ID"}))
    SystemTemplateFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateFilterValue)
    SystemTemplateFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateFilter)
    SystemTemplateSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateSummary)
    SystemTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    SystemTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SystemTemplateSummary.add_member(:revision_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    SystemTemplateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SystemTemplateSummary.type = Types::SystemTemplateSummary
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Thing.add_member(:thing_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    Thing.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    Thing.type = Types::Thing
    Things.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Thing)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UndeploySystemInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    UndeploySystemInstanceRequest.type = Types::UndeploySystemInstanceRequest
    UndeploySystemInstanceResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInstanceSummary, location_name: "summary"))
    UndeploySystemInstanceResponse.type = Types::UndeploySystemInstanceResponse
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateFlowTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateFlowTemplateRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition", traits: {"smithy.api#required" => {}}))
    UpdateFlowTemplateRequest.add_member(:compatible_namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "compatibleNamespaceVersion"))
    UpdateFlowTemplateRequest.type = Types::UpdateFlowTemplateRequest
    UpdateFlowTemplateResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTemplateSummary, location_name: "summary"))
    UpdateFlowTemplateResponse.type = Types::UpdateFlowTemplateResponse
    UpdateSystemTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateSystemTemplateRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition", traits: {"smithy.api#required" => {}}))
    UpdateSystemTemplateRequest.add_member(:compatible_namespace_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "compatibleNamespaceVersion"))
    UpdateSystemTemplateRequest.type = Types::UpdateSystemTemplateRequest
    UpdateSystemTemplateResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemTemplateSummary, location_name: "summary"))
    UpdateSystemTemplateResponse.type = Types::UpdateSystemTemplateResponse
    UploadEntityDefinitionsRequest.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "document"))
    UploadEntityDefinitionsRequest.add_member(:sync_with_public_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncWithPublicNamespace, location_name: "syncWithPublicNamespace", traits: {"smithy.api#default" => false}))
    UploadEntityDefinitionsRequest.add_member(:deprecate_existing_entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecateExistingEntities, location_name: "deprecateExistingEntities", traits: {"smithy.api#default" => false}))
    UploadEntityDefinitionsRequest.type = Types::UploadEntityDefinitionsRequest
    UploadEntityDefinitionsResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId", traits: {"smithy.api#required" => {}}))
    UploadEntityDefinitionsResponse.type = Types::UploadEntityDefinitionsResponse
    UploadStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    UploadStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    UploadStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Urns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Urn)

    IotThingsGraphFrontEndService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotthingsgraph#IotThingsGraphFrontEndService"
      service.name = "IotThingsGraphFrontEndService"
      service.version = "2018-09-06"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTThingsGraph", "arnNamespace" => "iotthingsgraph", "cloudFormationName" => "IoTThingsGraph", "cloudTrailEventSource" => "iotthingsgraph.amazonaws.com", "endpointPrefix" => "iotthingsgraph"}, "aws.auth#sigv4" => {"name" => "iotthingsgraph"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS IoT Things Graph"}
      service.add_operation(:associate_entity_to_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#AssociateEntityToThing"
        operation.name = "AssociateEntityToThing"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateEntityToThingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateEntityToThingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:create_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#CreateFlowTemplate"
        operation.name = "CreateFlowTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlowTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFlowTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:create_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#CreateSystemInstance"
        operation.name = "CreateSystemInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSystemInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSystemInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:create_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#CreateSystemTemplate"
        operation.name = "CreateSystemTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSystemTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSystemTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:delete_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeleteFlowTemplate"
        operation.name = "DeleteFlowTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlowTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlowTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:delete_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeleteNamespace"
        operation.name = "DeleteNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamespaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:delete_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeleteSystemInstance"
        operation.name = "DeleteSystemInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSystemInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSystemInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:delete_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeleteSystemTemplate"
        operation.name = "DeleteSystemTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSystemTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSystemTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:deploy_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeploySystemInstance"
        operation.name = "DeploySystemInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploySystemInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploySystemInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:deprecate_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeprecateFlowTemplate"
        operation.name = "DeprecateFlowTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecateFlowTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecateFlowTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:deprecate_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeprecateSystemTemplate"
        operation.name = "DeprecateSystemTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecateSystemTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecateSystemTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:describe_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DescribeNamespace"
        operation.name = "DescribeNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNamespaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:dissociate_entity_from_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DissociateEntityFromThing"
        operation.name = "DissociateEntityFromThing"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociateEntityFromThingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociateEntityFromThingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetEntities"
        operation.name = "GetEntities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntitiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetFlowTemplate"
        operation.name = "GetFlowTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_flow_template_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetFlowTemplateRevisions"
        operation.name = "GetFlowTemplateRevisions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowTemplateRevisionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFlowTemplateRevisionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::GetFlowTemplateRevisions.new
      end)
      service.add_operation(:get_namespace_deletion_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetNamespaceDeletionStatus"
        operation.name = "GetNamespaceDeletionStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamespaceDeletionStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamespaceDeletionStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetSystemInstance"
        operation.name = "GetSystemInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSystemInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSystemInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetSystemTemplate"
        operation.name = "GetSystemTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSystemTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSystemTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_system_template_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetSystemTemplateRevisions"
        operation.name = "GetSystemTemplateRevisions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSystemTemplateRevisionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSystemTemplateRevisionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::GetSystemTemplateRevisions.new
      end)
      service.add_operation(:get_upload_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetUploadStatus"
        operation.name = "GetUploadStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUploadStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUploadStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:list_flow_execution_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#ListFlowExecutionMessages"
        operation.name = "ListFlowExecutionMessages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowExecutionMessagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowExecutionMessagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::ListFlowExecutionMessages.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:search_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchEntities"
        operation.name = "SearchEntities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchEntitiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchEntitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchEntities.new
      end)
      service.add_operation(:search_flow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchFlowExecutions"
        operation.name = "SearchFlowExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFlowExecutionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFlowExecutionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchFlowExecutions.new
      end)
      service.add_operation(:search_flow_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchFlowTemplates"
        operation.name = "SearchFlowTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFlowTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFlowTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchFlowTemplates.new
      end)
      service.add_operation(:search_system_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchSystemInstances"
        operation.name = "SearchSystemInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSystemInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSystemInstancesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchSystemInstances.new
      end)
      service.add_operation(:search_system_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchSystemTemplates"
        operation.name = "SearchSystemTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSystemTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSystemTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchSystemTemplates.new
      end)
      service.add_operation(:search_things, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchThings"
        operation.name = "SearchThings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchThingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchThingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchThings.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:undeploy_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UndeploySystemInstance"
        operation.name = "UndeploySystemInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UndeploySystemInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UndeploySystemInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:update_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UpdateFlowTemplate"
        operation.name = "UpdateFlowTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFlowTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFlowTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:update_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UpdateSystemTemplate"
        operation.name = "UpdateSystemTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSystemTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSystemTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:upload_entity_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UploadEntityDefinitions"
        operation.name = "UploadEntityDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadEntityDefinitionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadEntityDefinitionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
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
