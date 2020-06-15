# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTThingsGraph
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateEntityToThingRequest = Shapes::StructureShape.new(name: 'AssociateEntityToThingRequest')
    AssociateEntityToThingResponse = Shapes::StructureShape.new(name: 'AssociateEntityToThingResponse')
    CreateFlowTemplateRequest = Shapes::StructureShape.new(name: 'CreateFlowTemplateRequest')
    CreateFlowTemplateResponse = Shapes::StructureShape.new(name: 'CreateFlowTemplateResponse')
    CreateSystemInstanceRequest = Shapes::StructureShape.new(name: 'CreateSystemInstanceRequest')
    CreateSystemInstanceResponse = Shapes::StructureShape.new(name: 'CreateSystemInstanceResponse')
    CreateSystemTemplateRequest = Shapes::StructureShape.new(name: 'CreateSystemTemplateRequest')
    CreateSystemTemplateResponse = Shapes::StructureShape.new(name: 'CreateSystemTemplateResponse')
    DefinitionDocument = Shapes::StructureShape.new(name: 'DefinitionDocument')
    DefinitionLanguage = Shapes::StringShape.new(name: 'DefinitionLanguage')
    DefinitionText = Shapes::StringShape.new(name: 'DefinitionText')
    DeleteFlowTemplateRequest = Shapes::StructureShape.new(name: 'DeleteFlowTemplateRequest')
    DeleteFlowTemplateResponse = Shapes::StructureShape.new(name: 'DeleteFlowTemplateResponse')
    DeleteNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteNamespaceRequest')
    DeleteNamespaceResponse = Shapes::StructureShape.new(name: 'DeleteNamespaceResponse')
    DeleteSystemInstanceRequest = Shapes::StructureShape.new(name: 'DeleteSystemInstanceRequest')
    DeleteSystemInstanceResponse = Shapes::StructureShape.new(name: 'DeleteSystemInstanceResponse')
    DeleteSystemTemplateRequest = Shapes::StructureShape.new(name: 'DeleteSystemTemplateRequest')
    DeleteSystemTemplateResponse = Shapes::StructureShape.new(name: 'DeleteSystemTemplateResponse')
    DependencyRevision = Shapes::StructureShape.new(name: 'DependencyRevision')
    DependencyRevisions = Shapes::ListShape.new(name: 'DependencyRevisions')
    DeploySystemInstanceRequest = Shapes::StructureShape.new(name: 'DeploySystemInstanceRequest')
    DeploySystemInstanceResponse = Shapes::StructureShape.new(name: 'DeploySystemInstanceResponse')
    DeploymentTarget = Shapes::StringShape.new(name: 'DeploymentTarget')
    DeprecateExistingEntities = Shapes::BooleanShape.new(name: 'DeprecateExistingEntities')
    DeprecateFlowTemplateRequest = Shapes::StructureShape.new(name: 'DeprecateFlowTemplateRequest')
    DeprecateFlowTemplateResponse = Shapes::StructureShape.new(name: 'DeprecateFlowTemplateResponse')
    DeprecateSystemTemplateRequest = Shapes::StructureShape.new(name: 'DeprecateSystemTemplateRequest')
    DeprecateSystemTemplateResponse = Shapes::StructureShape.new(name: 'DeprecateSystemTemplateResponse')
    DescribeNamespaceRequest = Shapes::StructureShape.new(name: 'DescribeNamespaceRequest')
    DescribeNamespaceResponse = Shapes::StructureShape.new(name: 'DescribeNamespaceResponse')
    DissociateEntityFromThingRequest = Shapes::StructureShape.new(name: 'DissociateEntityFromThingRequest')
    DissociateEntityFromThingResponse = Shapes::StructureShape.new(name: 'DissociateEntityFromThingResponse')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EntityDescription = Shapes::StructureShape.new(name: 'EntityDescription')
    EntityDescriptions = Shapes::ListShape.new(name: 'EntityDescriptions')
    EntityFilter = Shapes::StructureShape.new(name: 'EntityFilter')
    EntityFilterName = Shapes::StringShape.new(name: 'EntityFilterName')
    EntityFilterValue = Shapes::StringShape.new(name: 'EntityFilterValue')
    EntityFilterValues = Shapes::ListShape.new(name: 'EntityFilterValues')
    EntityFilters = Shapes::ListShape.new(name: 'EntityFilters')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EntityTypes = Shapes::ListShape.new(name: 'EntityTypes')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FlowExecutionEventType = Shapes::StringShape.new(name: 'FlowExecutionEventType')
    FlowExecutionId = Shapes::StringShape.new(name: 'FlowExecutionId')
    FlowExecutionMessage = Shapes::StructureShape.new(name: 'FlowExecutionMessage')
    FlowExecutionMessageId = Shapes::StringShape.new(name: 'FlowExecutionMessageId')
    FlowExecutionMessagePayload = Shapes::StringShape.new(name: 'FlowExecutionMessagePayload')
    FlowExecutionMessages = Shapes::ListShape.new(name: 'FlowExecutionMessages')
    FlowExecutionStatus = Shapes::StringShape.new(name: 'FlowExecutionStatus')
    FlowExecutionSummaries = Shapes::ListShape.new(name: 'FlowExecutionSummaries')
    FlowExecutionSummary = Shapes::StructureShape.new(name: 'FlowExecutionSummary')
    FlowTemplateDescription = Shapes::StructureShape.new(name: 'FlowTemplateDescription')
    FlowTemplateFilter = Shapes::StructureShape.new(name: 'FlowTemplateFilter')
    FlowTemplateFilterName = Shapes::StringShape.new(name: 'FlowTemplateFilterName')
    FlowTemplateFilterValue = Shapes::StringShape.new(name: 'FlowTemplateFilterValue')
    FlowTemplateFilterValues = Shapes::ListShape.new(name: 'FlowTemplateFilterValues')
    FlowTemplateFilters = Shapes::ListShape.new(name: 'FlowTemplateFilters')
    FlowTemplateSummaries = Shapes::ListShape.new(name: 'FlowTemplateSummaries')
    FlowTemplateSummary = Shapes::StructureShape.new(name: 'FlowTemplateSummary')
    GetEntitiesRequest = Shapes::StructureShape.new(name: 'GetEntitiesRequest')
    GetEntitiesResponse = Shapes::StructureShape.new(name: 'GetEntitiesResponse')
    GetFlowTemplateRequest = Shapes::StructureShape.new(name: 'GetFlowTemplateRequest')
    GetFlowTemplateResponse = Shapes::StructureShape.new(name: 'GetFlowTemplateResponse')
    GetFlowTemplateRevisionsRequest = Shapes::StructureShape.new(name: 'GetFlowTemplateRevisionsRequest')
    GetFlowTemplateRevisionsResponse = Shapes::StructureShape.new(name: 'GetFlowTemplateRevisionsResponse')
    GetNamespaceDeletionStatusRequest = Shapes::StructureShape.new(name: 'GetNamespaceDeletionStatusRequest')
    GetNamespaceDeletionStatusResponse = Shapes::StructureShape.new(name: 'GetNamespaceDeletionStatusResponse')
    GetSystemInstanceRequest = Shapes::StructureShape.new(name: 'GetSystemInstanceRequest')
    GetSystemInstanceResponse = Shapes::StructureShape.new(name: 'GetSystemInstanceResponse')
    GetSystemTemplateRequest = Shapes::StructureShape.new(name: 'GetSystemTemplateRequest')
    GetSystemTemplateResponse = Shapes::StructureShape.new(name: 'GetSystemTemplateResponse')
    GetSystemTemplateRevisionsRequest = Shapes::StructureShape.new(name: 'GetSystemTemplateRevisionsRequest')
    GetSystemTemplateRevisionsResponse = Shapes::StructureShape.new(name: 'GetSystemTemplateRevisionsResponse')
    GetUploadStatusRequest = Shapes::StructureShape.new(name: 'GetUploadStatusRequest')
    GetUploadStatusResponse = Shapes::StructureShape.new(name: 'GetUploadStatusResponse')
    GreengrassDeploymentId = Shapes::StringShape.new(name: 'GreengrassDeploymentId')
    GreengrassGroupId = Shapes::StringShape.new(name: 'GreengrassGroupId')
    GreengrassGroupVersionId = Shapes::StringShape.new(name: 'GreengrassGroupVersionId')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListFlowExecutionMessagesRequest = Shapes::StructureShape.new(name: 'ListFlowExecutionMessagesRequest')
    ListFlowExecutionMessagesResponse = Shapes::StructureShape.new(name: 'ListFlowExecutionMessagesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricsConfiguration = Shapes::StructureShape.new(name: 'MetricsConfiguration')
    NamespaceDeletionStatus = Shapes::StringShape.new(name: 'NamespaceDeletionStatus')
    NamespaceDeletionStatusErrorCodes = Shapes::StringShape.new(name: 'NamespaceDeletionStatusErrorCodes')
    NamespaceName = Shapes::StringShape.new(name: 'NamespaceName')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    SearchEntitiesRequest = Shapes::StructureShape.new(name: 'SearchEntitiesRequest')
    SearchEntitiesResponse = Shapes::StructureShape.new(name: 'SearchEntitiesResponse')
    SearchFlowExecutionsRequest = Shapes::StructureShape.new(name: 'SearchFlowExecutionsRequest')
    SearchFlowExecutionsResponse = Shapes::StructureShape.new(name: 'SearchFlowExecutionsResponse')
    SearchFlowTemplatesRequest = Shapes::StructureShape.new(name: 'SearchFlowTemplatesRequest')
    SearchFlowTemplatesResponse = Shapes::StructureShape.new(name: 'SearchFlowTemplatesResponse')
    SearchSystemInstancesRequest = Shapes::StructureShape.new(name: 'SearchSystemInstancesRequest')
    SearchSystemInstancesResponse = Shapes::StructureShape.new(name: 'SearchSystemInstancesResponse')
    SearchSystemTemplatesRequest = Shapes::StructureShape.new(name: 'SearchSystemTemplatesRequest')
    SearchSystemTemplatesResponse = Shapes::StructureShape.new(name: 'SearchSystemTemplatesResponse')
    SearchThingsRequest = Shapes::StructureShape.new(name: 'SearchThingsRequest')
    SearchThingsResponse = Shapes::StructureShape.new(name: 'SearchThingsResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SyncWithPublicNamespace = Shapes::BooleanShape.new(name: 'SyncWithPublicNamespace')
    SystemInstanceDeploymentStatus = Shapes::StringShape.new(name: 'SystemInstanceDeploymentStatus')
    SystemInstanceDescription = Shapes::StructureShape.new(name: 'SystemInstanceDescription')
    SystemInstanceFilter = Shapes::StructureShape.new(name: 'SystemInstanceFilter')
    SystemInstanceFilterName = Shapes::StringShape.new(name: 'SystemInstanceFilterName')
    SystemInstanceFilterValue = Shapes::StringShape.new(name: 'SystemInstanceFilterValue')
    SystemInstanceFilterValues = Shapes::ListShape.new(name: 'SystemInstanceFilterValues')
    SystemInstanceFilters = Shapes::ListShape.new(name: 'SystemInstanceFilters')
    SystemInstanceSummaries = Shapes::ListShape.new(name: 'SystemInstanceSummaries')
    SystemInstanceSummary = Shapes::StructureShape.new(name: 'SystemInstanceSummary')
    SystemTemplateDescription = Shapes::StructureShape.new(name: 'SystemTemplateDescription')
    SystemTemplateFilter = Shapes::StructureShape.new(name: 'SystemTemplateFilter')
    SystemTemplateFilterName = Shapes::StringShape.new(name: 'SystemTemplateFilterName')
    SystemTemplateFilterValue = Shapes::StringShape.new(name: 'SystemTemplateFilterValue')
    SystemTemplateFilterValues = Shapes::ListShape.new(name: 'SystemTemplateFilterValues')
    SystemTemplateFilters = Shapes::ListShape.new(name: 'SystemTemplateFilters')
    SystemTemplateSummaries = Shapes::ListShape.new(name: 'SystemTemplateSummaries')
    SystemTemplateSummary = Shapes::StructureShape.new(name: 'SystemTemplateSummary')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Thing = Shapes::StructureShape.new(name: 'Thing')
    ThingArn = Shapes::StringShape.new(name: 'ThingArn')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    Things = Shapes::ListShape.new(name: 'Things')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UndeploySystemInstanceRequest = Shapes::StructureShape.new(name: 'UndeploySystemInstanceRequest')
    UndeploySystemInstanceResponse = Shapes::StructureShape.new(name: 'UndeploySystemInstanceResponse')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateFlowTemplateRequest = Shapes::StructureShape.new(name: 'UpdateFlowTemplateRequest')
    UpdateFlowTemplateResponse = Shapes::StructureShape.new(name: 'UpdateFlowTemplateResponse')
    UpdateSystemTemplateRequest = Shapes::StructureShape.new(name: 'UpdateSystemTemplateRequest')
    UpdateSystemTemplateResponse = Shapes::StructureShape.new(name: 'UpdateSystemTemplateResponse')
    UploadEntityDefinitionsRequest = Shapes::StructureShape.new(name: 'UploadEntityDefinitionsRequest')
    UploadEntityDefinitionsResponse = Shapes::StructureShape.new(name: 'UploadEntityDefinitionsResponse')
    UploadId = Shapes::StringShape.new(name: 'UploadId')
    UploadStatus = Shapes::StringShape.new(name: 'UploadStatus')
    Urn = Shapes::StringShape.new(name: 'Urn')
    Urns = Shapes::ListShape.new(name: 'Urns')
    Version = Shapes::IntegerShape.new(name: 'Version')

    AssociateEntityToThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location_name: "thingName"))
    AssociateEntityToThingRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "entityId"))
    AssociateEntityToThingRequest.add_member(:namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    AssociateEntityToThingRequest.struct_class = Types::AssociateEntityToThingRequest

    AssociateEntityToThingResponse.struct_class = Types::AssociateEntityToThingResponse

    CreateFlowTemplateRequest.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, required: true, location_name: "definition"))
    CreateFlowTemplateRequest.add_member(:compatible_namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "compatibleNamespaceVersion"))
    CreateFlowTemplateRequest.struct_class = Types::CreateFlowTemplateRequest

    CreateFlowTemplateResponse.add_member(:summary, Shapes::ShapeRef.new(shape: FlowTemplateSummary, location_name: "summary"))
    CreateFlowTemplateResponse.struct_class = Types::CreateFlowTemplateResponse

    CreateSystemInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateSystemInstanceRequest.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, required: true, location_name: "definition"))
    CreateSystemInstanceRequest.add_member(:target, Shapes::ShapeRef.new(shape: DeploymentTarget, required: true, location_name: "target"))
    CreateSystemInstanceRequest.add_member(:greengrass_group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "greengrassGroupName"))
    CreateSystemInstanceRequest.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    CreateSystemInstanceRequest.add_member(:metrics_configuration, Shapes::ShapeRef.new(shape: MetricsConfiguration, location_name: "metricsConfiguration"))
    CreateSystemInstanceRequest.add_member(:flow_actions_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "flowActionsRoleArn"))
    CreateSystemInstanceRequest.struct_class = Types::CreateSystemInstanceRequest

    CreateSystemInstanceResponse.add_member(:summary, Shapes::ShapeRef.new(shape: SystemInstanceSummary, location_name: "summary"))
    CreateSystemInstanceResponse.struct_class = Types::CreateSystemInstanceResponse

    CreateSystemTemplateRequest.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, required: true, location_name: "definition"))
    CreateSystemTemplateRequest.add_member(:compatible_namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "compatibleNamespaceVersion"))
    CreateSystemTemplateRequest.struct_class = Types::CreateSystemTemplateRequest

    CreateSystemTemplateResponse.add_member(:summary, Shapes::ShapeRef.new(shape: SystemTemplateSummary, location_name: "summary"))
    CreateSystemTemplateResponse.struct_class = Types::CreateSystemTemplateResponse

    DefinitionDocument.add_member(:language, Shapes::ShapeRef.new(shape: DefinitionLanguage, required: true, location_name: "language"))
    DefinitionDocument.add_member(:text, Shapes::ShapeRef.new(shape: DefinitionText, required: true, location_name: "text"))
    DefinitionDocument.struct_class = Types::DefinitionDocument

    DeleteFlowTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    DeleteFlowTemplateRequest.struct_class = Types::DeleteFlowTemplateRequest

    DeleteFlowTemplateResponse.struct_class = Types::DeleteFlowTemplateResponse

    DeleteNamespaceRequest.struct_class = Types::DeleteNamespaceRequest

    DeleteNamespaceResponse.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "namespaceArn"))
    DeleteNamespaceResponse.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    DeleteNamespaceResponse.struct_class = Types::DeleteNamespaceResponse

    DeleteSystemInstanceRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    DeleteSystemInstanceRequest.struct_class = Types::DeleteSystemInstanceRequest

    DeleteSystemInstanceResponse.struct_class = Types::DeleteSystemInstanceResponse

    DeleteSystemTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    DeleteSystemTemplateRequest.struct_class = Types::DeleteSystemTemplateRequest

    DeleteSystemTemplateResponse.struct_class = Types::DeleteSystemTemplateResponse

    DependencyRevision.add_member(:id, Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    DependencyRevision.add_member(:revision_number, Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    DependencyRevision.struct_class = Types::DependencyRevision

    DependencyRevisions.member = Shapes::ShapeRef.new(shape: DependencyRevision)

    DeploySystemInstanceRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    DeploySystemInstanceRequest.struct_class = Types::DeploySystemInstanceRequest

    DeploySystemInstanceResponse.add_member(:summary, Shapes::ShapeRef.new(shape: SystemInstanceSummary, required: true, location_name: "summary"))
    DeploySystemInstanceResponse.add_member(:greengrass_deployment_id, Shapes::ShapeRef.new(shape: GreengrassDeploymentId, location_name: "greengrassDeploymentId"))
    DeploySystemInstanceResponse.struct_class = Types::DeploySystemInstanceResponse

    DeprecateFlowTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    DeprecateFlowTemplateRequest.struct_class = Types::DeprecateFlowTemplateRequest

    DeprecateFlowTemplateResponse.struct_class = Types::DeprecateFlowTemplateResponse

    DeprecateSystemTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    DeprecateSystemTemplateRequest.struct_class = Types::DeprecateSystemTemplateRequest

    DeprecateSystemTemplateResponse.struct_class = Types::DeprecateSystemTemplateResponse

    DescribeNamespaceRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    DescribeNamespaceRequest.struct_class = Types::DescribeNamespaceRequest

    DescribeNamespaceResponse.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "namespaceArn"))
    DescribeNamespaceResponse.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    DescribeNamespaceResponse.add_member(:tracking_namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "trackingNamespaceName"))
    DescribeNamespaceResponse.add_member(:tracking_namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "trackingNamespaceVersion"))
    DescribeNamespaceResponse.add_member(:namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    DescribeNamespaceResponse.struct_class = Types::DescribeNamespaceResponse

    DissociateEntityFromThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location_name: "thingName"))
    DissociateEntityFromThingRequest.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "entityType"))
    DissociateEntityFromThingRequest.struct_class = Types::DissociateEntityFromThingRequest

    DissociateEntityFromThingResponse.struct_class = Types::DissociateEntityFromThingResponse

    EntityDescription.add_member(:id, Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    EntityDescription.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EntityDescription.add_member(:type, Shapes::ShapeRef.new(shape: EntityType, location_name: "type"))
    EntityDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    EntityDescription.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition"))
    EntityDescription.struct_class = Types::EntityDescription

    EntityDescriptions.member = Shapes::ShapeRef.new(shape: EntityDescription)

    EntityFilter.add_member(:name, Shapes::ShapeRef.new(shape: EntityFilterName, location_name: "name"))
    EntityFilter.add_member(:value, Shapes::ShapeRef.new(shape: EntityFilterValues, location_name: "value"))
    EntityFilter.struct_class = Types::EntityFilter

    EntityFilterValues.member = Shapes::ShapeRef.new(shape: EntityFilterValue)

    EntityFilters.member = Shapes::ShapeRef.new(shape: EntityFilter)

    EntityTypes.member = Shapes::ShapeRef.new(shape: EntityType)

    FlowExecutionMessage.add_member(:message_id, Shapes::ShapeRef.new(shape: FlowExecutionMessageId, location_name: "messageId"))
    FlowExecutionMessage.add_member(:event_type, Shapes::ShapeRef.new(shape: FlowExecutionEventType, location_name: "eventType"))
    FlowExecutionMessage.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    FlowExecutionMessage.add_member(:payload, Shapes::ShapeRef.new(shape: FlowExecutionMessagePayload, location_name: "payload"))
    FlowExecutionMessage.struct_class = Types::FlowExecutionMessage

    FlowExecutionMessages.member = Shapes::ShapeRef.new(shape: FlowExecutionMessage)

    FlowExecutionSummaries.member = Shapes::ShapeRef.new(shape: FlowExecutionSummary)

    FlowExecutionSummary.add_member(:flow_execution_id, Shapes::ShapeRef.new(shape: FlowExecutionId, location_name: "flowExecutionId"))
    FlowExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: FlowExecutionStatus, location_name: "status"))
    FlowExecutionSummary.add_member(:system_instance_id, Shapes::ShapeRef.new(shape: Urn, location_name: "systemInstanceId"))
    FlowExecutionSummary.add_member(:flow_template_id, Shapes::ShapeRef.new(shape: Urn, location_name: "flowTemplateId"))
    FlowExecutionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    FlowExecutionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    FlowExecutionSummary.struct_class = Types::FlowExecutionSummary

    FlowTemplateDescription.add_member(:summary, Shapes::ShapeRef.new(shape: FlowTemplateSummary, location_name: "summary"))
    FlowTemplateDescription.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition"))
    FlowTemplateDescription.add_member(:validated_namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "validatedNamespaceVersion"))
    FlowTemplateDescription.struct_class = Types::FlowTemplateDescription

    FlowTemplateFilter.add_member(:name, Shapes::ShapeRef.new(shape: FlowTemplateFilterName, required: true, location_name: "name"))
    FlowTemplateFilter.add_member(:value, Shapes::ShapeRef.new(shape: FlowTemplateFilterValues, required: true, location_name: "value"))
    FlowTemplateFilter.struct_class = Types::FlowTemplateFilter

    FlowTemplateFilterValues.member = Shapes::ShapeRef.new(shape: FlowTemplateFilterValue)

    FlowTemplateFilters.member = Shapes::ShapeRef.new(shape: FlowTemplateFilter)

    FlowTemplateSummaries.member = Shapes::ShapeRef.new(shape: FlowTemplateSummary)

    FlowTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    FlowTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    FlowTemplateSummary.add_member(:revision_number, Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    FlowTemplateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    FlowTemplateSummary.struct_class = Types::FlowTemplateSummary

    GetEntitiesRequest.add_member(:ids, Shapes::ShapeRef.new(shape: Urns, required: true, location_name: "ids"))
    GetEntitiesRequest.add_member(:namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    GetEntitiesRequest.struct_class = Types::GetEntitiesRequest

    GetEntitiesResponse.add_member(:descriptions, Shapes::ShapeRef.new(shape: EntityDescriptions, location_name: "descriptions"))
    GetEntitiesResponse.struct_class = Types::GetEntitiesResponse

    GetFlowTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    GetFlowTemplateRequest.add_member(:revision_number, Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    GetFlowTemplateRequest.struct_class = Types::GetFlowTemplateRequest

    GetFlowTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: FlowTemplateDescription, location_name: "description"))
    GetFlowTemplateResponse.struct_class = Types::GetFlowTemplateResponse

    GetFlowTemplateRevisionsRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    GetFlowTemplateRevisionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetFlowTemplateRevisionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetFlowTemplateRevisionsRequest.struct_class = Types::GetFlowTemplateRevisionsRequest

    GetFlowTemplateRevisionsResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: FlowTemplateSummaries, location_name: "summaries"))
    GetFlowTemplateRevisionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetFlowTemplateRevisionsResponse.struct_class = Types::GetFlowTemplateRevisionsResponse

    GetNamespaceDeletionStatusRequest.struct_class = Types::GetNamespaceDeletionStatusRequest

    GetNamespaceDeletionStatusResponse.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "namespaceArn"))
    GetNamespaceDeletionStatusResponse.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    GetNamespaceDeletionStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: NamespaceDeletionStatus, location_name: "status"))
    GetNamespaceDeletionStatusResponse.add_member(:error_code, Shapes::ShapeRef.new(shape: NamespaceDeletionStatusErrorCodes, location_name: "errorCode"))
    GetNamespaceDeletionStatusResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    GetNamespaceDeletionStatusResponse.struct_class = Types::GetNamespaceDeletionStatusResponse

    GetSystemInstanceRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    GetSystemInstanceRequest.struct_class = Types::GetSystemInstanceRequest

    GetSystemInstanceResponse.add_member(:description, Shapes::ShapeRef.new(shape: SystemInstanceDescription, location_name: "description"))
    GetSystemInstanceResponse.struct_class = Types::GetSystemInstanceResponse

    GetSystemTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    GetSystemTemplateRequest.add_member(:revision_number, Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    GetSystemTemplateRequest.struct_class = Types::GetSystemTemplateRequest

    GetSystemTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: SystemTemplateDescription, location_name: "description"))
    GetSystemTemplateResponse.struct_class = Types::GetSystemTemplateResponse

    GetSystemTemplateRevisionsRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    GetSystemTemplateRevisionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetSystemTemplateRevisionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetSystemTemplateRevisionsRequest.struct_class = Types::GetSystemTemplateRevisionsRequest

    GetSystemTemplateRevisionsResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: SystemTemplateSummaries, location_name: "summaries"))
    GetSystemTemplateRevisionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetSystemTemplateRevisionsResponse.struct_class = Types::GetSystemTemplateRevisionsResponse

    GetUploadStatusRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    GetUploadStatusRequest.struct_class = Types::GetUploadStatusRequest

    GetUploadStatusResponse.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    GetUploadStatusResponse.add_member(:upload_status, Shapes::ShapeRef.new(shape: UploadStatus, required: true, location_name: "uploadStatus"))
    GetUploadStatusResponse.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "namespaceArn"))
    GetUploadStatusResponse.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    GetUploadStatusResponse.add_member(:namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    GetUploadStatusResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: StringList, location_name: "failureReason"))
    GetUploadStatusResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdDate"))
    GetUploadStatusResponse.struct_class = Types::GetUploadStatusResponse

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListFlowExecutionMessagesRequest.add_member(:flow_execution_id, Shapes::ShapeRef.new(shape: FlowExecutionId, required: true, location_name: "flowExecutionId"))
    ListFlowExecutionMessagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowExecutionMessagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListFlowExecutionMessagesRequest.struct_class = Types::ListFlowExecutionMessagesRequest

    ListFlowExecutionMessagesResponse.add_member(:messages, Shapes::ShapeRef.new(shape: FlowExecutionMessages, location_name: "messages"))
    ListFlowExecutionMessagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowExecutionMessagesResponse.struct_class = Types::ListFlowExecutionMessagesResponse

    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MetricsConfiguration.add_member(:cloud_metric_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "cloudMetricEnabled"))
    MetricsConfiguration.add_member(:metric_rule_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "metricRuleRoleArn"))
    MetricsConfiguration.struct_class = Types::MetricsConfiguration

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SearchEntitiesRequest.add_member(:entity_types, Shapes::ShapeRef.new(shape: EntityTypes, required: true, location_name: "entityTypes"))
    SearchEntitiesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: EntityFilters, location_name: "filters"))
    SearchEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchEntitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchEntitiesRequest.add_member(:namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    SearchEntitiesRequest.struct_class = Types::SearchEntitiesRequest

    SearchEntitiesResponse.add_member(:descriptions, Shapes::ShapeRef.new(shape: EntityDescriptions, location_name: "descriptions"))
    SearchEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchEntitiesResponse.struct_class = Types::SearchEntitiesResponse

    SearchFlowExecutionsRequest.add_member(:system_instance_id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "systemInstanceId"))
    SearchFlowExecutionsRequest.add_member(:flow_execution_id, Shapes::ShapeRef.new(shape: FlowExecutionId, location_name: "flowExecutionId"))
    SearchFlowExecutionsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    SearchFlowExecutionsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    SearchFlowExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFlowExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchFlowExecutionsRequest.struct_class = Types::SearchFlowExecutionsRequest

    SearchFlowExecutionsResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: FlowExecutionSummaries, location_name: "summaries"))
    SearchFlowExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFlowExecutionsResponse.struct_class = Types::SearchFlowExecutionsResponse

    SearchFlowTemplatesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FlowTemplateFilters, location_name: "filters"))
    SearchFlowTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFlowTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchFlowTemplatesRequest.struct_class = Types::SearchFlowTemplatesRequest

    SearchFlowTemplatesResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: FlowTemplateSummaries, location_name: "summaries"))
    SearchFlowTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchFlowTemplatesResponse.struct_class = Types::SearchFlowTemplatesResponse

    SearchSystemInstancesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SystemInstanceFilters, location_name: "filters"))
    SearchSystemInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSystemInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchSystemInstancesRequest.struct_class = Types::SearchSystemInstancesRequest

    SearchSystemInstancesResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: SystemInstanceSummaries, location_name: "summaries"))
    SearchSystemInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSystemInstancesResponse.struct_class = Types::SearchSystemInstancesResponse

    SearchSystemTemplatesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SystemTemplateFilters, location_name: "filters"))
    SearchSystemTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSystemTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchSystemTemplatesRequest.struct_class = Types::SearchSystemTemplatesRequest

    SearchSystemTemplatesResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: SystemTemplateSummaries, location_name: "summaries"))
    SearchSystemTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSystemTemplatesResponse.struct_class = Types::SearchSystemTemplatesResponse

    SearchThingsRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "entityId"))
    SearchThingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchThingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchThingsRequest.add_member(:namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "namespaceVersion"))
    SearchThingsRequest.struct_class = Types::SearchThingsRequest

    SearchThingsResponse.add_member(:things, Shapes::ShapeRef.new(shape: Things, location_name: "things"))
    SearchThingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchThingsResponse.struct_class = Types::SearchThingsResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SystemInstanceDescription.add_member(:summary, Shapes::ShapeRef.new(shape: SystemInstanceSummary, location_name: "summary"))
    SystemInstanceDescription.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition"))
    SystemInstanceDescription.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    SystemInstanceDescription.add_member(:metrics_configuration, Shapes::ShapeRef.new(shape: MetricsConfiguration, location_name: "metricsConfiguration"))
    SystemInstanceDescription.add_member(:validated_namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "validatedNamespaceVersion"))
    SystemInstanceDescription.add_member(:validated_dependency_revisions, Shapes::ShapeRef.new(shape: DependencyRevisions, location_name: "validatedDependencyRevisions"))
    SystemInstanceDescription.add_member(:flow_actions_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "flowActionsRoleArn"))
    SystemInstanceDescription.struct_class = Types::SystemInstanceDescription

    SystemInstanceFilter.add_member(:name, Shapes::ShapeRef.new(shape: SystemInstanceFilterName, location_name: "name"))
    SystemInstanceFilter.add_member(:value, Shapes::ShapeRef.new(shape: SystemInstanceFilterValues, location_name: "value"))
    SystemInstanceFilter.struct_class = Types::SystemInstanceFilter

    SystemInstanceFilterValues.member = Shapes::ShapeRef.new(shape: SystemInstanceFilterValue)

    SystemInstanceFilters.member = Shapes::ShapeRef.new(shape: SystemInstanceFilter)

    SystemInstanceSummaries.member = Shapes::ShapeRef.new(shape: SystemInstanceSummary)

    SystemInstanceSummary.add_member(:id, Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    SystemInstanceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SystemInstanceSummary.add_member(:status, Shapes::ShapeRef.new(shape: SystemInstanceDeploymentStatus, location_name: "status"))
    SystemInstanceSummary.add_member(:target, Shapes::ShapeRef.new(shape: DeploymentTarget, location_name: "target"))
    SystemInstanceSummary.add_member(:greengrass_group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "greengrassGroupName"))
    SystemInstanceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SystemInstanceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    SystemInstanceSummary.add_member(:greengrass_group_id, Shapes::ShapeRef.new(shape: GreengrassGroupId, location_name: "greengrassGroupId"))
    SystemInstanceSummary.add_member(:greengrass_group_version_id, Shapes::ShapeRef.new(shape: GreengrassGroupVersionId, location_name: "greengrassGroupVersionId"))
    SystemInstanceSummary.struct_class = Types::SystemInstanceSummary

    SystemTemplateDescription.add_member(:summary, Shapes::ShapeRef.new(shape: SystemTemplateSummary, location_name: "summary"))
    SystemTemplateDescription.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "definition"))
    SystemTemplateDescription.add_member(:validated_namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "validatedNamespaceVersion"))
    SystemTemplateDescription.struct_class = Types::SystemTemplateDescription

    SystemTemplateFilter.add_member(:name, Shapes::ShapeRef.new(shape: SystemTemplateFilterName, required: true, location_name: "name"))
    SystemTemplateFilter.add_member(:value, Shapes::ShapeRef.new(shape: SystemTemplateFilterValues, required: true, location_name: "value"))
    SystemTemplateFilter.struct_class = Types::SystemTemplateFilter

    SystemTemplateFilterValues.member = Shapes::ShapeRef.new(shape: SystemTemplateFilterValue)

    SystemTemplateFilters.member = Shapes::ShapeRef.new(shape: SystemTemplateFilter)

    SystemTemplateSummaries.member = Shapes::ShapeRef.new(shape: SystemTemplateSummary)

    SystemTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    SystemTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SystemTemplateSummary.add_member(:revision_number, Shapes::ShapeRef.new(shape: Version, location_name: "revisionNumber"))
    SystemTemplateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SystemTemplateSummary.struct_class = Types::SystemTemplateSummary

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Thing.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    Thing.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    Thing.struct_class = Types::Thing

    Things.member = Shapes::ShapeRef.new(shape: Thing)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UndeploySystemInstanceRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, location_name: "id"))
    UndeploySystemInstanceRequest.struct_class = Types::UndeploySystemInstanceRequest

    UndeploySystemInstanceResponse.add_member(:summary, Shapes::ShapeRef.new(shape: SystemInstanceSummary, location_name: "summary"))
    UndeploySystemInstanceResponse.struct_class = Types::UndeploySystemInstanceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateFlowTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    UpdateFlowTemplateRequest.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, required: true, location_name: "definition"))
    UpdateFlowTemplateRequest.add_member(:compatible_namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "compatibleNamespaceVersion"))
    UpdateFlowTemplateRequest.struct_class = Types::UpdateFlowTemplateRequest

    UpdateFlowTemplateResponse.add_member(:summary, Shapes::ShapeRef.new(shape: FlowTemplateSummary, location_name: "summary"))
    UpdateFlowTemplateResponse.struct_class = Types::UpdateFlowTemplateResponse

    UpdateSystemTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: Urn, required: true, location_name: "id"))
    UpdateSystemTemplateRequest.add_member(:definition, Shapes::ShapeRef.new(shape: DefinitionDocument, required: true, location_name: "definition"))
    UpdateSystemTemplateRequest.add_member(:compatible_namespace_version, Shapes::ShapeRef.new(shape: Version, location_name: "compatibleNamespaceVersion"))
    UpdateSystemTemplateRequest.struct_class = Types::UpdateSystemTemplateRequest

    UpdateSystemTemplateResponse.add_member(:summary, Shapes::ShapeRef.new(shape: SystemTemplateSummary, location_name: "summary"))
    UpdateSystemTemplateResponse.struct_class = Types::UpdateSystemTemplateResponse

    UploadEntityDefinitionsRequest.add_member(:document, Shapes::ShapeRef.new(shape: DefinitionDocument, location_name: "document"))
    UploadEntityDefinitionsRequest.add_member(:sync_with_public_namespace, Shapes::ShapeRef.new(shape: SyncWithPublicNamespace, location_name: "syncWithPublicNamespace"))
    UploadEntityDefinitionsRequest.add_member(:deprecate_existing_entities, Shapes::ShapeRef.new(shape: DeprecateExistingEntities, location_name: "deprecateExistingEntities"))
    UploadEntityDefinitionsRequest.struct_class = Types::UploadEntityDefinitionsRequest

    UploadEntityDefinitionsResponse.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    UploadEntityDefinitionsResponse.struct_class = Types::UploadEntityDefinitionsResponse

    Urns.member = Shapes::ShapeRef.new(shape: Urn)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-06"

      api.metadata = {
        "apiVersion" => "2018-09-06",
        "endpointPrefix" => "iotthingsgraph",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS IoT Things Graph",
        "serviceId" => "IoTThingsGraph",
        "signatureVersion" => "v4",
        "signingName" => "iotthingsgraph",
        "targetPrefix" => "IotThingsGraphFrontEndService",
        "uid" => "iotthingsgraph-2018-09-06",
      }

      api.add_operation(:associate_entity_to_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateEntityToThing"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateEntityToThingRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateEntityToThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_flow_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlowTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_system_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSystemInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSystemInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSystemInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_system_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSystemTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSystemTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSystemTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_flow_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlowTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_system_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSystemInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSystemInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSystemInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_system_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSystemTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSystemTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSystemTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:deploy_system_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeploySystemInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeploySystemInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeploySystemInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:deprecate_flow_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeprecateFlowTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeprecateFlowTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeprecateFlowTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deprecate_system_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeprecateSystemTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeprecateSystemTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeprecateSystemTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:dissociate_entity_from_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DissociateEntityFromThing"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DissociateEntityFromThingRequest)
        o.output = Shapes::ShapeRef.new(shape: DissociateEntityFromThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_flow_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFlowTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFlowTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFlowTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_flow_template_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFlowTemplateRevisions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFlowTemplateRevisionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFlowTemplateRevisionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_namespace_deletion_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNamespaceDeletionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNamespaceDeletionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNamespaceDeletionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_system_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSystemInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSystemInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSystemInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_system_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSystemTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSystemTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSystemTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_system_template_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSystemTemplateRevisions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSystemTemplateRevisionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSystemTemplateRevisionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_upload_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUploadStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUploadStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUploadStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_flow_execution_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlowExecutionMessages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFlowExecutionMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowExecutionMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_flow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchFlowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchFlowExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchFlowExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_flow_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchFlowTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchFlowTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchFlowTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_system_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchSystemInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchSystemInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchSystemInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_system_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchSystemTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchSystemTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchSystemTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_things, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchThings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchThingsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchThingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:undeploy_system_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UndeploySystemInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UndeploySystemInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: UndeploySystemInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_flow_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_system_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSystemTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSystemTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSystemTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:upload_entity_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UploadEntityDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UploadEntityDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UploadEntityDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
