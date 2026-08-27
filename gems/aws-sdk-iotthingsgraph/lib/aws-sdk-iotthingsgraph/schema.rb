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

    AssociateEntityToThingRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "thingName", traits: {"smithy.api#required" => {}}))
    AssociateEntityToThingRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "entityId", traits: {"smithy.api#required" => {}}))
    AssociateEntityToThingRequest.add_member(:namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "namespaceVersion"))
    AssociateEntityToThingRequest.type = Types::AssociateEntityToThingRequest
    AssociateEntityToThingResponse.type = Types::AssociateEntityToThingResponse
    CreateFlowTemplateRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition", traits: {"smithy.api#required" => {}}))
    CreateFlowTemplateRequest.add_member(:compatible_namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "compatibleNamespaceVersion"))
    CreateFlowTemplateRequest.type = Types::CreateFlowTemplateRequest
    CreateFlowTemplateResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateSummary, name: "summary"))
    CreateFlowTemplateResponse.type = Types::CreateFlowTemplateResponse
    CreateSystemInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateSystemInstanceRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition", traits: {"smithy.api#required" => {}}))
    CreateSystemInstanceRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTarget, name: "target", traits: {"smithy.api#required" => {}}))
    CreateSystemInstanceRequest.add_member(:greengrass_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "greengrassGroupName"))
    CreateSystemInstanceRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName"))
    CreateSystemInstanceRequest.add_member(:metrics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsConfiguration, name: "metricsConfiguration"))
    CreateSystemInstanceRequest.add_member(:flow_actions_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "flowActionsRoleArn"))
    CreateSystemInstanceRequest.type = Types::CreateSystemInstanceRequest
    CreateSystemInstanceResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceSummary, name: "summary"))
    CreateSystemInstanceResponse.type = Types::CreateSystemInstanceResponse
    CreateSystemTemplateRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition", traits: {"smithy.api#required" => {}}))
    CreateSystemTemplateRequest.add_member(:compatible_namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "compatibleNamespaceVersion"))
    CreateSystemTemplateRequest.type = Types::CreateSystemTemplateRequest
    CreateSystemTemplateResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateSummary, name: "summary"))
    CreateSystemTemplateResponse.type = Types::CreateSystemTemplateResponse
    DefinitionDocument.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionLanguage, name: "language", traits: {"smithy.api#required" => {}}))
    DefinitionDocument.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionText, name: "text", traits: {"smithy.api#required" => {}}))
    DefinitionDocument.type = Types::DefinitionDocument
    DefinitionLanguage.add_member(:graphql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRAPHQL", traits: {"smithy.api#enumValue" => "GRAPHQL"}))
    DeleteFlowTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteFlowTemplateRequest.type = Types::DeleteFlowTemplateRequest
    DeleteFlowTemplateResponse.type = Types::DeleteFlowTemplateResponse
    DeleteNamespaceRequest.type = Types::DeleteNamespaceRequest
    DeleteNamespaceResponse.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "namespaceArn"))
    DeleteNamespaceResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    DeleteNamespaceResponse.type = Types::DeleteNamespaceResponse
    DeleteSystemInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id"))
    DeleteSystemInstanceRequest.type = Types::DeleteSystemInstanceRequest
    DeleteSystemInstanceResponse.type = Types::DeleteSystemInstanceResponse
    DeleteSystemTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteSystemTemplateRequest.type = Types::DeleteSystemTemplateRequest
    DeleteSystemTemplateResponse.type = Types::DeleteSystemTemplateResponse
    DependencyRevision.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id"))
    DependencyRevision.add_member(:revision_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "revisionNumber"))
    DependencyRevision.type = Types::DependencyRevision
    DependencyRevisions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyRevision, name: "member")
    DeploySystemInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id"))
    DeploySystemInstanceRequest.type = Types::DeploySystemInstanceRequest
    DeploySystemInstanceResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceSummary, name: "summary", traits: {"smithy.api#required" => {}}))
    DeploySystemInstanceResponse.add_member(:greengrass_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GreengrassDeploymentId, name: "greengrassDeploymentId"))
    DeploySystemInstanceResponse.type = Types::DeploySystemInstanceResponse
    DeploymentTarget.add_member(:greengrass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREENGRASS", traits: {"smithy.api#enumValue" => "GREENGRASS"}))
    DeploymentTarget.add_member(:cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD", traits: {"smithy.api#enumValue" => "CLOUD"}))
    DeprecateFlowTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    DeprecateFlowTemplateRequest.type = Types::DeprecateFlowTemplateRequest
    DeprecateFlowTemplateResponse.type = Types::DeprecateFlowTemplateResponse
    DeprecateSystemTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    DeprecateSystemTemplateRequest.type = Types::DeprecateSystemTemplateRequest
    DeprecateSystemTemplateResponse.type = Types::DeprecateSystemTemplateResponse
    DescribeNamespaceRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    DescribeNamespaceRequest.type = Types::DescribeNamespaceRequest
    DescribeNamespaceResponse.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "namespaceArn"))
    DescribeNamespaceResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    DescribeNamespaceResponse.add_member(:tracking_namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "trackingNamespaceName"))
    DescribeNamespaceResponse.add_member(:tracking_namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "trackingNamespaceVersion"))
    DescribeNamespaceResponse.add_member(:namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "namespaceVersion"))
    DescribeNamespaceResponse.type = Types::DescribeNamespaceResponse
    DissociateEntityFromThingRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "thingName", traits: {"smithy.api#required" => {}}))
    DissociateEntityFromThingRequest.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "entityType", traits: {"smithy.api#required" => {}}))
    DissociateEntityFromThingRequest.type = Types::DissociateEntityFromThingRequest
    DissociateEntityFromThingResponse.type = Types::DissociateEntityFromThingResponse
    EntityDescription.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id"))
    EntityDescription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    EntityDescription.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "type"))
    EntityDescription.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    EntityDescription.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition"))
    EntityDescription.type = Types::EntityDescription
    EntityDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "member")
    EntityFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityFilterName, name: "name"))
    EntityFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityFilterValues, name: "value"))
    EntityFilter.type = Types::EntityFilter
    EntityFilterName.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    EntityFilterName.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAMESPACE", traits: {"smithy.api#enumValue" => "NAMESPACE"}))
    EntityFilterName.add_member(:semantic_type_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEMANTIC_TYPE_PATH", traits: {"smithy.api#enumValue" => "SEMANTIC_TYPE_PATH"}))
    EntityFilterName.add_member(:referenced_entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFERENCED_ENTITY_ID", traits: {"smithy.api#enumValue" => "REFERENCED_ENTITY_ID"}))
    EntityFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityFilterValue, name: "member")
    EntityFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityFilter, name: "member")
    EntityType.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVICE", traits: {"smithy.api#enumValue" => "DEVICE"}))
    EntityType.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    EntityType.add_member(:device_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVICE_MODEL", traits: {"smithy.api#enumValue" => "DEVICE_MODEL"}))
    EntityType.add_member(:capability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPABILITY", traits: {"smithy.api#enumValue" => "CAPABILITY"}))
    EntityType.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATE", traits: {"smithy.api#enumValue" => "STATE"}))
    EntityType.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION", traits: {"smithy.api#enumValue" => "ACTION"}))
    EntityType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    EntityType.add_member(:property, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPERTY", traits: {"smithy.api#enumValue" => "PROPERTY"}))
    EntityType.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAPPING", traits: {"smithy.api#enumValue" => "MAPPING"}))
    EntityType.add_member(:enum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENUM", traits: {"smithy.api#enumValue" => "ENUM"}))
    EntityTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "member")
    FlowExecutionEventType.add_member(:execution_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_STARTED", traits: {"smithy.api#enumValue" => "EXECUTION_STARTED"}))
    FlowExecutionEventType.add_member(:execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_FAILED", traits: {"smithy.api#enumValue" => "EXECUTION_FAILED"}))
    FlowExecutionEventType.add_member(:execution_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ABORTED", traits: {"smithy.api#enumValue" => "EXECUTION_ABORTED"}))
    FlowExecutionEventType.add_member(:execution_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_SUCCEEDED", traits: {"smithy.api#enumValue" => "EXECUTION_SUCCEEDED"}))
    FlowExecutionEventType.add_member(:step_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_STARTED", traits: {"smithy.api#enumValue" => "STEP_STARTED"}))
    FlowExecutionEventType.add_member(:step_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_FAILED", traits: {"smithy.api#enumValue" => "STEP_FAILED"}))
    FlowExecutionEventType.add_member(:step_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_SUCCEEDED", traits: {"smithy.api#enumValue" => "STEP_SUCCEEDED"}))
    FlowExecutionEventType.add_member(:activity_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_SCHEDULED", traits: {"smithy.api#enumValue" => "ACTIVITY_SCHEDULED"}))
    FlowExecutionEventType.add_member(:activity_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_STARTED", traits: {"smithy.api#enumValue" => "ACTIVITY_STARTED"}))
    FlowExecutionEventType.add_member(:activity_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_FAILED", traits: {"smithy.api#enumValue" => "ACTIVITY_FAILED"}))
    FlowExecutionEventType.add_member(:activity_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_SUCCEEDED", traits: {"smithy.api#enumValue" => "ACTIVITY_SUCCEEDED"}))
    FlowExecutionEventType.add_member(:start_flow_execution_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_FLOW_EXECUTION_TASK", traits: {"smithy.api#enumValue" => "START_FLOW_EXECUTION_TASK"}))
    FlowExecutionEventType.add_member(:schedule_next_ready_steps_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULE_NEXT_READY_STEPS_TASK", traits: {"smithy.api#enumValue" => "SCHEDULE_NEXT_READY_STEPS_TASK"}))
    FlowExecutionEventType.add_member(:thing_action_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THING_ACTION_TASK", traits: {"smithy.api#enumValue" => "THING_ACTION_TASK"}))
    FlowExecutionEventType.add_member(:thing_action_task_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THING_ACTION_TASK_FAILED", traits: {"smithy.api#enumValue" => "THING_ACTION_TASK_FAILED"}))
    FlowExecutionEventType.add_member(:thing_action_task_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THING_ACTION_TASK_SUCCEEDED", traits: {"smithy.api#enumValue" => "THING_ACTION_TASK_SUCCEEDED"}))
    FlowExecutionEventType.add_member(:acknowledge_task_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACKNOWLEDGE_TASK_MESSAGE", traits: {"smithy.api#enumValue" => "ACKNOWLEDGE_TASK_MESSAGE"}))
    FlowExecutionMessage.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionMessageId, name: "messageId"))
    FlowExecutionMessage.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionEventType, name: "eventType"))
    FlowExecutionMessage.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timestamp"))
    FlowExecutionMessage.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionMessagePayload, name: "payload"))
    FlowExecutionMessage.type = Types::FlowExecutionMessage
    FlowExecutionMessages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionMessage, name: "member")
    FlowExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    FlowExecutionStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    FlowExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    FlowExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FlowExecutionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionSummary, name: "member")
    FlowExecutionSummary.add_member(:flow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionId, name: "flowExecutionId"))
    FlowExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionStatus, name: "status"))
    FlowExecutionSummary.add_member(:system_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "systemInstanceId"))
    FlowExecutionSummary.add_member(:flow_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "flowTemplateId"))
    FlowExecutionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    FlowExecutionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    FlowExecutionSummary.type = Types::FlowExecutionSummary
    FlowTemplateDescription.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateSummary, name: "summary"))
    FlowTemplateDescription.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition"))
    FlowTemplateDescription.add_member(:validated_namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "validatedNamespaceVersion"))
    FlowTemplateDescription.type = Types::FlowTemplateDescription
    FlowTemplateFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    FlowTemplateFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateFilterValues, name: "value", traits: {"smithy.api#required" => {}}))
    FlowTemplateFilter.type = Types::FlowTemplateFilter
    FlowTemplateFilterName.add_member(:device_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVICE_MODEL_ID", traits: {"smithy.api#enumValue" => "DEVICE_MODEL_ID"}))
    FlowTemplateFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateFilterValue, name: "member")
    FlowTemplateFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateFilter, name: "member")
    FlowTemplateSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateSummary, name: "member")
    FlowTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id"))
    FlowTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    FlowTemplateSummary.add_member(:revision_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "revisionNumber"))
    FlowTemplateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    FlowTemplateSummary.type = Types::FlowTemplateSummary
    GetEntitiesRequest.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Urns, name: "ids", traits: {"smithy.api#required" => {}}))
    GetEntitiesRequest.add_member(:namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "namespaceVersion"))
    GetEntitiesRequest.type = Types::GetEntitiesRequest
    GetEntitiesResponse.add_member(:descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescriptions, name: "descriptions"))
    GetEntitiesResponse.type = Types::GetEntitiesResponse
    GetFlowTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    GetFlowTemplateRequest.add_member(:revision_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "revisionNumber"))
    GetFlowTemplateRequest.type = Types::GetFlowTemplateRequest
    GetFlowTemplateResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateDescription, name: "description"))
    GetFlowTemplateResponse.type = Types::GetFlowTemplateResponse
    GetFlowTemplateRevisionsRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    GetFlowTemplateRevisionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetFlowTemplateRevisionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetFlowTemplateRevisionsRequest.type = Types::GetFlowTemplateRevisionsRequest
    GetFlowTemplateRevisionsResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateSummaries, name: "summaries"))
    GetFlowTemplateRevisionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetFlowTemplateRevisionsResponse.type = Types::GetFlowTemplateRevisionsResponse
    GetNamespaceDeletionStatusRequest.type = Types::GetNamespaceDeletionStatusRequest
    GetNamespaceDeletionStatusResponse.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "namespaceArn"))
    GetNamespaceDeletionStatusResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    GetNamespaceDeletionStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceDeletionStatus, name: "status"))
    GetNamespaceDeletionStatusResponse.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceDeletionStatusErrorCodes, name: "errorCode"))
    GetNamespaceDeletionStatusResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage"))
    GetNamespaceDeletionStatusResponse.type = Types::GetNamespaceDeletionStatusResponse
    GetSystemInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    GetSystemInstanceRequest.type = Types::GetSystemInstanceRequest
    GetSystemInstanceResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceDescription, name: "description"))
    GetSystemInstanceResponse.type = Types::GetSystemInstanceResponse
    GetSystemTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    GetSystemTemplateRequest.add_member(:revision_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "revisionNumber"))
    GetSystemTemplateRequest.type = Types::GetSystemTemplateRequest
    GetSystemTemplateResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateDescription, name: "description"))
    GetSystemTemplateResponse.type = Types::GetSystemTemplateResponse
    GetSystemTemplateRevisionsRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    GetSystemTemplateRevisionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetSystemTemplateRevisionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetSystemTemplateRevisionsRequest.type = Types::GetSystemTemplateRevisionsRequest
    GetSystemTemplateRevisionsResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateSummaries, name: "summaries"))
    GetSystemTemplateRevisionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetSystemTemplateRevisionsResponse.type = Types::GetSystemTemplateRevisionsResponse
    GetUploadStatusRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    GetUploadStatusRequest.type = Types::GetUploadStatusRequest
    GetUploadStatusResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    GetUploadStatusResponse.add_member(:upload_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadStatus, name: "uploadStatus", traits: {"smithy.api#required" => {}}))
    GetUploadStatusResponse.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "namespaceArn"))
    GetUploadStatusResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    GetUploadStatusResponse.add_member(:namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "namespaceVersion"))
    GetUploadStatusResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "failureReason"))
    GetUploadStatusResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate", traits: {"smithy.api#required" => {}}))
    GetUploadStatusResponse.type = Types::GetUploadStatusResponse
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListFlowExecutionMessagesRequest.add_member(:flow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionId, name: "flowExecutionId", traits: {"smithy.api#required" => {}}))
    ListFlowExecutionMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFlowExecutionMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListFlowExecutionMessagesRequest.type = Types::ListFlowExecutionMessagesRequest
    ListFlowExecutionMessagesResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionMessages, name: "messages"))
    ListFlowExecutionMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFlowExecutionMessagesResponse.type = Types::ListFlowExecutionMessagesResponse
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetricsConfiguration.add_member(:cloud_metric_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "cloudMetricEnabled", traits: {"smithy.api#default" => false}))
    MetricsConfiguration.add_member(:metric_rule_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "metricRuleRoleArn"))
    MetricsConfiguration.type = Types::MetricsConfiguration
    NamespaceDeletionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    NamespaceDeletionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    NamespaceDeletionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    NamespaceDeletionStatusErrorCodes.add_member(:validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchEntitiesRequest.add_member(:entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypes, name: "entityTypes", traits: {"smithy.api#required" => {}}))
    SearchEntitiesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityFilters, name: "filters"))
    SearchEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchEntitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    SearchEntitiesRequest.add_member(:namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "namespaceVersion"))
    SearchEntitiesRequest.type = Types::SearchEntitiesRequest
    SearchEntitiesResponse.add_member(:descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescriptions, name: "descriptions"))
    SearchEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchEntitiesResponse.type = Types::SearchEntitiesResponse
    SearchFlowExecutionsRequest.add_member(:system_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "systemInstanceId", traits: {"smithy.api#required" => {}}))
    SearchFlowExecutionsRequest.add_member(:flow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionId, name: "flowExecutionId"))
    SearchFlowExecutionsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    SearchFlowExecutionsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    SearchFlowExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchFlowExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    SearchFlowExecutionsRequest.type = Types::SearchFlowExecutionsRequest
    SearchFlowExecutionsResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionSummaries, name: "summaries"))
    SearchFlowExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchFlowExecutionsResponse.type = Types::SearchFlowExecutionsResponse
    SearchFlowTemplatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateFilters, name: "filters"))
    SearchFlowTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchFlowTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    SearchFlowTemplatesRequest.type = Types::SearchFlowTemplatesRequest
    SearchFlowTemplatesResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateSummaries, name: "summaries"))
    SearchFlowTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchFlowTemplatesResponse.type = Types::SearchFlowTemplatesResponse
    SearchSystemInstancesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceFilters, name: "filters"))
    SearchSystemInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchSystemInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    SearchSystemInstancesRequest.type = Types::SearchSystemInstancesRequest
    SearchSystemInstancesResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceSummaries, name: "summaries"))
    SearchSystemInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchSystemInstancesResponse.type = Types::SearchSystemInstancesResponse
    SearchSystemTemplatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateFilters, name: "filters"))
    SearchSystemTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchSystemTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    SearchSystemTemplatesRequest.type = Types::SearchSystemTemplatesRequest
    SearchSystemTemplatesResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateSummaries, name: "summaries"))
    SearchSystemTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchSystemTemplatesResponse.type = Types::SearchSystemTemplatesResponse
    SearchThingsRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "entityId", traits: {"smithy.api#required" => {}}))
    SearchThingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchThingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    SearchThingsRequest.add_member(:namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "namespaceVersion"))
    SearchThingsRequest.type = Types::SearchThingsRequest
    SearchThingsResponse.add_member(:things, ::Smithy::Schema::Shapes::MemberShape.new(target: Things, name: "things"))
    SearchThingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchThingsResponse.type = Types::SearchThingsResponse
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    SystemInstanceDeploymentStatus.add_member(:not_deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_DEPLOYED", traits: {"smithy.api#enumValue" => "NOT_DEPLOYED"}))
    SystemInstanceDeploymentStatus.add_member(:bootstrap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAP", traits: {"smithy.api#enumValue" => "BOOTSTRAP"}))
    SystemInstanceDeploymentStatus.add_member(:deploy_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOY_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DEPLOY_IN_PROGRESS"}))
    SystemInstanceDeploymentStatus.add_member(:deployed_in_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYED_IN_TARGET", traits: {"smithy.api#enumValue" => "DEPLOYED_IN_TARGET"}))
    SystemInstanceDeploymentStatus.add_member(:undeploy_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDEPLOY_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UNDEPLOY_IN_PROGRESS"}))
    SystemInstanceDeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SystemInstanceDeploymentStatus.add_member(:pending_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETE", traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    SystemInstanceDeploymentStatus.add_member(:deleted_in_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED_IN_TARGET", traits: {"smithy.api#enumValue" => "DELETED_IN_TARGET"}))
    SystemInstanceDescription.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceSummary, name: "summary"))
    SystemInstanceDescription.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition"))
    SystemInstanceDescription.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName"))
    SystemInstanceDescription.add_member(:metrics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsConfiguration, name: "metricsConfiguration"))
    SystemInstanceDescription.add_member(:validated_namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "validatedNamespaceVersion"))
    SystemInstanceDescription.add_member(:validated_dependency_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyRevisions, name: "validatedDependencyRevisions"))
    SystemInstanceDescription.add_member(:flow_actions_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "flowActionsRoleArn"))
    SystemInstanceDescription.type = Types::SystemInstanceDescription
    SystemInstanceFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceFilterName, name: "name"))
    SystemInstanceFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceFilterValues, name: "value"))
    SystemInstanceFilter.type = Types::SystemInstanceFilter
    SystemInstanceFilterName.add_member(:system_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_TEMPLATE_ID", traits: {"smithy.api#enumValue" => "SYSTEM_TEMPLATE_ID"}))
    SystemInstanceFilterName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    SystemInstanceFilterName.add_member(:greengrass_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREENGRASS_GROUP_NAME", traits: {"smithy.api#enumValue" => "GREENGRASS_GROUP_NAME"}))
    SystemInstanceFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceFilterValue, name: "member")
    SystemInstanceFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceFilter, name: "member")
    SystemInstanceSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceSummary, name: "member")
    SystemInstanceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id"))
    SystemInstanceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    SystemInstanceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceDeploymentStatus, name: "status"))
    SystemInstanceSummary.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTarget, name: "target"))
    SystemInstanceSummary.add_member(:greengrass_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "greengrassGroupName"))
    SystemInstanceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    SystemInstanceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    SystemInstanceSummary.add_member(:greengrass_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GreengrassGroupId, name: "greengrassGroupId"))
    SystemInstanceSummary.add_member(:greengrass_group_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GreengrassGroupVersionId, name: "greengrassGroupVersionId"))
    SystemInstanceSummary.type = Types::SystemInstanceSummary
    SystemTemplateDescription.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateSummary, name: "summary"))
    SystemTemplateDescription.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition"))
    SystemTemplateDescription.add_member(:validated_namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "validatedNamespaceVersion"))
    SystemTemplateDescription.type = Types::SystemTemplateDescription
    SystemTemplateFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    SystemTemplateFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateFilterValues, name: "value", traits: {"smithy.api#required" => {}}))
    SystemTemplateFilter.type = Types::SystemTemplateFilter
    SystemTemplateFilterName.add_member(:flow_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_TEMPLATE_ID", traits: {"smithy.api#enumValue" => "FLOW_TEMPLATE_ID"}))
    SystemTemplateFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateFilterValue, name: "member")
    SystemTemplateFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateFilter, name: "member")
    SystemTemplateSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateSummary, name: "member")
    SystemTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id"))
    SystemTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    SystemTemplateSummary.add_member(:revision_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "revisionNumber"))
    SystemTemplateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    SystemTemplateSummary.type = Types::SystemTemplateSummary
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Thing.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingArn, name: "thingArn"))
    Thing.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "thingName"))
    Thing.type = Types::Thing
    Things.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Thing, name: "member")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UndeploySystemInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id"))
    UndeploySystemInstanceRequest.type = Types::UndeploySystemInstanceRequest
    UndeploySystemInstanceResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInstanceSummary, name: "summary"))
    UndeploySystemInstanceResponse.type = Types::UndeploySystemInstanceResponse
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateFlowTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateFlowTemplateRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition", traits: {"smithy.api#required" => {}}))
    UpdateFlowTemplateRequest.add_member(:compatible_namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "compatibleNamespaceVersion"))
    UpdateFlowTemplateRequest.type = Types::UpdateFlowTemplateRequest
    UpdateFlowTemplateResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTemplateSummary, name: "summary"))
    UpdateFlowTemplateResponse.type = Types::UpdateFlowTemplateResponse
    UpdateSystemTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateSystemTemplateRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "definition", traits: {"smithy.api#required" => {}}))
    UpdateSystemTemplateRequest.add_member(:compatible_namespace_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "compatibleNamespaceVersion"))
    UpdateSystemTemplateRequest.type = Types::UpdateSystemTemplateRequest
    UpdateSystemTemplateResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemTemplateSummary, name: "summary"))
    UpdateSystemTemplateResponse.type = Types::UpdateSystemTemplateResponse
    UploadEntityDefinitionsRequest.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionDocument, name: "document"))
    UploadEntityDefinitionsRequest.add_member(:sync_with_public_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncWithPublicNamespace, name: "syncWithPublicNamespace", traits: {"smithy.api#default" => false}))
    UploadEntityDefinitionsRequest.add_member(:deprecate_existing_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecateExistingEntities, name: "deprecateExistingEntities", traits: {"smithy.api#default" => false}))
    UploadEntityDefinitionsRequest.type = Types::UploadEntityDefinitionsRequest
    UploadEntityDefinitionsResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    UploadEntityDefinitionsResponse.type = Types::UploadEntityDefinitionsResponse
    UploadStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    UploadStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    UploadStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Urns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Urn, name: "member")

    IotThingsGraphFrontEndService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotthingsgraph#IotThingsGraphFrontEndService"
      service.name = "IotThingsGraphFrontEndService"
      service.version = "2018-09-06"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTThingsGraph", "arnNamespace" => "iotthingsgraph", "cloudFormationName" => "IoTThingsGraph", "cloudTrailEventSource" => "iotthingsgraph.amazonaws.com", "endpointPrefix" => "iotthingsgraph"}, "aws.auth#sigv4" => {"name" => "iotthingsgraph"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS IoT Things Graph"}
      service.add_operation(:associate_entity_to_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#AssociateEntityToThing"
        operation.name = "AssociateEntityToThing"
        operation.input = AssociateEntityToThingRequest
        operation.output = AssociateEntityToThingResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:create_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#CreateFlowTemplate"
        operation.name = "CreateFlowTemplate"
        operation.input = CreateFlowTemplateRequest
        operation.output = CreateFlowTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:create_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#CreateSystemInstance"
        operation.name = "CreateSystemInstance"
        operation.input = CreateSystemInstanceRequest
        operation.output = CreateSystemInstanceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:create_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#CreateSystemTemplate"
        operation.name = "CreateSystemTemplate"
        operation.input = CreateSystemTemplateRequest
        operation.output = CreateSystemTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:delete_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeleteFlowTemplate"
        operation.name = "DeleteFlowTemplate"
        operation.input = DeleteFlowTemplateRequest
        operation.output = DeleteFlowTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:delete_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeleteNamespace"
        operation.name = "DeleteNamespace"
        operation.input = DeleteNamespaceRequest
        operation.output = DeleteNamespaceResponse
        operation.errors << InternalFailureException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:delete_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeleteSystemInstance"
        operation.name = "DeleteSystemInstance"
        operation.input = DeleteSystemInstanceRequest
        operation.output = DeleteSystemInstanceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:delete_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeleteSystemTemplate"
        operation.name = "DeleteSystemTemplate"
        operation.input = DeleteSystemTemplateRequest
        operation.output = DeleteSystemTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:deploy_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeploySystemInstance"
        operation.name = "DeploySystemInstance"
        operation.input = DeploySystemInstanceRequest
        operation.output = DeploySystemInstanceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:deprecate_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeprecateFlowTemplate"
        operation.name = "DeprecateFlowTemplate"
        operation.input = DeprecateFlowTemplateRequest
        operation.output = DeprecateFlowTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:deprecate_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DeprecateSystemTemplate"
        operation.name = "DeprecateSystemTemplate"
        operation.input = DeprecateSystemTemplateRequest
        operation.output = DeprecateSystemTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:describe_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DescribeNamespace"
        operation.name = "DescribeNamespace"
        operation.input = DescribeNamespaceRequest
        operation.output = DescribeNamespaceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:dissociate_entity_from_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#DissociateEntityFromThing"
        operation.name = "DissociateEntityFromThing"
        operation.input = DissociateEntityFromThingRequest
        operation.output = DissociateEntityFromThingResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetEntities"
        operation.name = "GetEntities"
        operation.input = GetEntitiesRequest
        operation.output = GetEntitiesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetFlowTemplate"
        operation.name = "GetFlowTemplate"
        operation.input = GetFlowTemplateRequest
        operation.output = GetFlowTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_flow_template_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetFlowTemplateRevisions"
        operation.name = "GetFlowTemplateRevisions"
        operation.input = GetFlowTemplateRevisionsRequest
        operation.output = GetFlowTemplateRevisionsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::GetFlowTemplateRevisions.new
      end)
      service.add_operation(:get_namespace_deletion_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetNamespaceDeletionStatus"
        operation.name = "GetNamespaceDeletionStatus"
        operation.input = GetNamespaceDeletionStatusRequest
        operation.output = GetNamespaceDeletionStatusResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetSystemInstance"
        operation.name = "GetSystemInstance"
        operation.input = GetSystemInstanceRequest
        operation.output = GetSystemInstanceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetSystemTemplate"
        operation.name = "GetSystemTemplate"
        operation.input = GetSystemTemplateRequest
        operation.output = GetSystemTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:get_system_template_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetSystemTemplateRevisions"
        operation.name = "GetSystemTemplateRevisions"
        operation.input = GetSystemTemplateRevisionsRequest
        operation.output = GetSystemTemplateRevisionsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::GetSystemTemplateRevisions.new
      end)
      service.add_operation(:get_upload_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#GetUploadStatus"
        operation.name = "GetUploadStatus"
        operation.input = GetUploadStatusRequest
        operation.output = GetUploadStatusResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:list_flow_execution_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#ListFlowExecutionMessages"
        operation.name = "ListFlowExecutionMessages"
        operation.input = ListFlowExecutionMessagesRequest
        operation.output = ListFlowExecutionMessagesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::ListFlowExecutionMessages.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:search_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchEntities"
        operation.name = "SearchEntities"
        operation.input = SearchEntitiesRequest
        operation.output = SearchEntitiesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchEntities.new
      end)
      service.add_operation(:search_flow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchFlowExecutions"
        operation.name = "SearchFlowExecutions"
        operation.input = SearchFlowExecutionsRequest
        operation.output = SearchFlowExecutionsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchFlowExecutions.new
      end)
      service.add_operation(:search_flow_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchFlowTemplates"
        operation.name = "SearchFlowTemplates"
        operation.input = SearchFlowTemplatesRequest
        operation.output = SearchFlowTemplatesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchFlowTemplates.new
      end)
      service.add_operation(:search_system_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchSystemInstances"
        operation.name = "SearchSystemInstances"
        operation.input = SearchSystemInstancesRequest
        operation.output = SearchSystemInstancesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchSystemInstances.new
      end)
      service.add_operation(:search_system_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchSystemTemplates"
        operation.name = "SearchSystemTemplates"
        operation.input = SearchSystemTemplatesRequest
        operation.output = SearchSystemTemplatesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchSystemTemplates.new
      end)
      service.add_operation(:search_things, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#SearchThings"
        operation.name = "SearchThings"
        operation.input = SearchThingsRequest
        operation.output = SearchThingsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
        operation[:paginator] = Paginators::SearchThings.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:undeploy_system_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UndeploySystemInstance"
        operation.name = "UndeploySystemInstance"
        operation.input = UndeploySystemInstanceRequest
        operation.output = UndeploySystemInstanceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:update_flow_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UpdateFlowTemplate"
        operation.name = "UpdateFlowTemplate"
        operation.input = UpdateFlowTemplateRequest
        operation.output = UpdateFlowTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:update_system_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UpdateSystemTemplate"
        operation.name = "UpdateSystemTemplate"
        operation.input = UpdateSystemTemplateRequest
        operation.output = UpdateSystemTemplateResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#deprecated" => {"message" => "since: 2022-08-30"}}
      end)
      service.add_operation(:upload_entity_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotthingsgraph#UploadEntityDefinitions"
        operation.name = "UploadEntityDefinitions"
        operation.input = UploadEntityDefinitionsRequest
        operation.output = UploadEntityDefinitionsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
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
