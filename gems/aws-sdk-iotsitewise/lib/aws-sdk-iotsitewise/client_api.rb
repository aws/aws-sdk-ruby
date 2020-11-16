# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTSiteWise
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessPolicySummaries = Shapes::ListShape.new(name: 'AccessPolicySummaries')
    AccessPolicySummary = Shapes::StructureShape.new(name: 'AccessPolicySummary')
    AggregateType = Shapes::StringShape.new(name: 'AggregateType')
    AggregateTypes = Shapes::ListShape.new(name: 'AggregateTypes')
    AggregatedDoubleValue = Shapes::FloatShape.new(name: 'AggregatedDoubleValue')
    AggregatedValue = Shapes::StructureShape.new(name: 'AggregatedValue')
    AggregatedValues = Shapes::ListShape.new(name: 'AggregatedValues')
    Aggregates = Shapes::StructureShape.new(name: 'Aggregates')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AssetErrorCode = Shapes::StringShape.new(name: 'AssetErrorCode')
    AssetErrorDetails = Shapes::StructureShape.new(name: 'AssetErrorDetails')
    AssetErrorMessage = Shapes::StringShape.new(name: 'AssetErrorMessage')
    AssetHierarchies = Shapes::ListShape.new(name: 'AssetHierarchies')
    AssetHierarchy = Shapes::StructureShape.new(name: 'AssetHierarchy')
    AssetIDs = Shapes::ListShape.new(name: 'AssetIDs')
    AssetModelHierarchies = Shapes::ListShape.new(name: 'AssetModelHierarchies')
    AssetModelHierarchy = Shapes::StructureShape.new(name: 'AssetModelHierarchy')
    AssetModelHierarchyDefinition = Shapes::StructureShape.new(name: 'AssetModelHierarchyDefinition')
    AssetModelHierarchyDefinitions = Shapes::ListShape.new(name: 'AssetModelHierarchyDefinitions')
    AssetModelProperties = Shapes::ListShape.new(name: 'AssetModelProperties')
    AssetModelProperty = Shapes::StructureShape.new(name: 'AssetModelProperty')
    AssetModelPropertyDefinition = Shapes::StructureShape.new(name: 'AssetModelPropertyDefinition')
    AssetModelPropertyDefinitions = Shapes::ListShape.new(name: 'AssetModelPropertyDefinitions')
    AssetModelState = Shapes::StringShape.new(name: 'AssetModelState')
    AssetModelStatus = Shapes::StructureShape.new(name: 'AssetModelStatus')
    AssetModelSummaries = Shapes::ListShape.new(name: 'AssetModelSummaries')
    AssetModelSummary = Shapes::StructureShape.new(name: 'AssetModelSummary')
    AssetProperties = Shapes::ListShape.new(name: 'AssetProperties')
    AssetProperty = Shapes::StructureShape.new(name: 'AssetProperty')
    AssetPropertyAlias = Shapes::StringShape.new(name: 'AssetPropertyAlias')
    AssetPropertyValue = Shapes::StructureShape.new(name: 'AssetPropertyValue')
    AssetPropertyValueHistory = Shapes::ListShape.new(name: 'AssetPropertyValueHistory')
    AssetPropertyValues = Shapes::ListShape.new(name: 'AssetPropertyValues')
    AssetState = Shapes::StringShape.new(name: 'AssetState')
    AssetStatus = Shapes::StructureShape.new(name: 'AssetStatus')
    AssetSummaries = Shapes::ListShape.new(name: 'AssetSummaries')
    AssetSummary = Shapes::StructureShape.new(name: 'AssetSummary')
    AssociateAssetsRequest = Shapes::StructureShape.new(name: 'AssociateAssetsRequest')
    AssociatedAssetsSummaries = Shapes::ListShape.new(name: 'AssociatedAssetsSummaries')
    AssociatedAssetsSummary = Shapes::StructureShape.new(name: 'AssociatedAssetsSummary')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AuthMode = Shapes::StringShape.new(name: 'AuthMode')
    BatchAssociateProjectAssetsErrors = Shapes::ListShape.new(name: 'BatchAssociateProjectAssetsErrors')
    BatchAssociateProjectAssetsRequest = Shapes::StructureShape.new(name: 'BatchAssociateProjectAssetsRequest')
    BatchAssociateProjectAssetsResponse = Shapes::StructureShape.new(name: 'BatchAssociateProjectAssetsResponse')
    BatchDisassociateProjectAssetsErrors = Shapes::ListShape.new(name: 'BatchDisassociateProjectAssetsErrors')
    BatchDisassociateProjectAssetsRequest = Shapes::StructureShape.new(name: 'BatchDisassociateProjectAssetsRequest')
    BatchDisassociateProjectAssetsResponse = Shapes::StructureShape.new(name: 'BatchDisassociateProjectAssetsResponse')
    BatchPutAssetPropertyError = Shapes::StructureShape.new(name: 'BatchPutAssetPropertyError')
    BatchPutAssetPropertyErrorEntries = Shapes::ListShape.new(name: 'BatchPutAssetPropertyErrorEntries')
    BatchPutAssetPropertyErrorEntry = Shapes::StructureShape.new(name: 'BatchPutAssetPropertyErrorEntry')
    BatchPutAssetPropertyErrors = Shapes::ListShape.new(name: 'BatchPutAssetPropertyErrors')
    BatchPutAssetPropertyValueErrorCode = Shapes::StringShape.new(name: 'BatchPutAssetPropertyValueErrorCode')
    BatchPutAssetPropertyValueRequest = Shapes::StructureShape.new(name: 'BatchPutAssetPropertyValueRequest')
    BatchPutAssetPropertyValueResponse = Shapes::StructureShape.new(name: 'BatchPutAssetPropertyValueResponse')
    CapabilityConfiguration = Shapes::StringShape.new(name: 'CapabilityConfiguration')
    CapabilityNamespace = Shapes::StringShape.new(name: 'CapabilityNamespace')
    CapabilitySyncStatus = Shapes::StringShape.new(name: 'CapabilitySyncStatus')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictingOperationException = Shapes::StructureShape.new(name: 'ConflictingOperationException')
    CreateAccessPolicyRequest = Shapes::StructureShape.new(name: 'CreateAccessPolicyRequest')
    CreateAccessPolicyResponse = Shapes::StructureShape.new(name: 'CreateAccessPolicyResponse')
    CreateAssetModelRequest = Shapes::StructureShape.new(name: 'CreateAssetModelRequest')
    CreateAssetModelResponse = Shapes::StructureShape.new(name: 'CreateAssetModelResponse')
    CreateAssetRequest = Shapes::StructureShape.new(name: 'CreateAssetRequest')
    CreateAssetResponse = Shapes::StructureShape.new(name: 'CreateAssetResponse')
    CreateDashboardRequest = Shapes::StructureShape.new(name: 'CreateDashboardRequest')
    CreateDashboardResponse = Shapes::StructureShape.new(name: 'CreateDashboardResponse')
    CreateGatewayRequest = Shapes::StructureShape.new(name: 'CreateGatewayRequest')
    CreateGatewayResponse = Shapes::StructureShape.new(name: 'CreateGatewayResponse')
    CreatePortalRequest = Shapes::StructureShape.new(name: 'CreatePortalRequest')
    CreatePortalResponse = Shapes::StructureShape.new(name: 'CreatePortalResponse')
    CreatePresignedPortalUrlRequest = Shapes::StructureShape.new(name: 'CreatePresignedPortalUrlRequest')
    CreatePresignedPortalUrlResponse = Shapes::StructureShape.new(name: 'CreatePresignedPortalUrlResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    DashboardDefinition = Shapes::StringShape.new(name: 'DashboardDefinition')
    DashboardSummaries = Shapes::ListShape.new(name: 'DashboardSummaries')
    DashboardSummary = Shapes::StructureShape.new(name: 'DashboardSummary')
    DefaultValue = Shapes::StringShape.new(name: 'DefaultValue')
    DeleteAccessPolicyRequest = Shapes::StructureShape.new(name: 'DeleteAccessPolicyRequest')
    DeleteAccessPolicyResponse = Shapes::StructureShape.new(name: 'DeleteAccessPolicyResponse')
    DeleteAssetModelRequest = Shapes::StructureShape.new(name: 'DeleteAssetModelRequest')
    DeleteAssetModelResponse = Shapes::StructureShape.new(name: 'DeleteAssetModelResponse')
    DeleteAssetRequest = Shapes::StructureShape.new(name: 'DeleteAssetRequest')
    DeleteAssetResponse = Shapes::StructureShape.new(name: 'DeleteAssetResponse')
    DeleteDashboardRequest = Shapes::StructureShape.new(name: 'DeleteDashboardRequest')
    DeleteDashboardResponse = Shapes::StructureShape.new(name: 'DeleteDashboardResponse')
    DeleteGatewayRequest = Shapes::StructureShape.new(name: 'DeleteGatewayRequest')
    DeletePortalRequest = Shapes::StructureShape.new(name: 'DeletePortalRequest')
    DeletePortalResponse = Shapes::StructureShape.new(name: 'DeletePortalResponse')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResponse = Shapes::StructureShape.new(name: 'DeleteProjectResponse')
    DescribeAccessPolicyRequest = Shapes::StructureShape.new(name: 'DescribeAccessPolicyRequest')
    DescribeAccessPolicyResponse = Shapes::StructureShape.new(name: 'DescribeAccessPolicyResponse')
    DescribeAssetModelRequest = Shapes::StructureShape.new(name: 'DescribeAssetModelRequest')
    DescribeAssetModelResponse = Shapes::StructureShape.new(name: 'DescribeAssetModelResponse')
    DescribeAssetPropertyRequest = Shapes::StructureShape.new(name: 'DescribeAssetPropertyRequest')
    DescribeAssetPropertyResponse = Shapes::StructureShape.new(name: 'DescribeAssetPropertyResponse')
    DescribeAssetRequest = Shapes::StructureShape.new(name: 'DescribeAssetRequest')
    DescribeAssetResponse = Shapes::StructureShape.new(name: 'DescribeAssetResponse')
    DescribeDashboardRequest = Shapes::StructureShape.new(name: 'DescribeDashboardRequest')
    DescribeDashboardResponse = Shapes::StructureShape.new(name: 'DescribeDashboardResponse')
    DescribeGatewayCapabilityConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeGatewayCapabilityConfigurationRequest')
    DescribeGatewayCapabilityConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeGatewayCapabilityConfigurationResponse')
    DescribeGatewayRequest = Shapes::StructureShape.new(name: 'DescribeGatewayRequest')
    DescribeGatewayResponse = Shapes::StructureShape.new(name: 'DescribeGatewayResponse')
    DescribeLoggingOptionsRequest = Shapes::StructureShape.new(name: 'DescribeLoggingOptionsRequest')
    DescribeLoggingOptionsResponse = Shapes::StructureShape.new(name: 'DescribeLoggingOptionsResponse')
    DescribePortalRequest = Shapes::StructureShape.new(name: 'DescribePortalRequest')
    DescribePortalResponse = Shapes::StructureShape.new(name: 'DescribePortalResponse')
    DescribeProjectRequest = Shapes::StructureShape.new(name: 'DescribeProjectRequest')
    DescribeProjectResponse = Shapes::StructureShape.new(name: 'DescribeProjectResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateAssetsRequest = Shapes::StructureShape.new(name: 'DisassociateAssetsRequest')
    Email = Shapes::StringShape.new(name: 'Email')
    EntryId = Shapes::StringShape.new(name: 'EntryId')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Expression = Shapes::StringShape.new(name: 'Expression')
    ExpressionVariable = Shapes::StructureShape.new(name: 'ExpressionVariable')
    ExpressionVariables = Shapes::ListShape.new(name: 'ExpressionVariables')
    GatewayCapabilitySummaries = Shapes::ListShape.new(name: 'GatewayCapabilitySummaries')
    GatewayCapabilitySummary = Shapes::StructureShape.new(name: 'GatewayCapabilitySummary')
    GatewayPlatform = Shapes::StructureShape.new(name: 'GatewayPlatform')
    GatewaySummaries = Shapes::ListShape.new(name: 'GatewaySummaries')
    GatewaySummary = Shapes::StructureShape.new(name: 'GatewaySummary')
    GetAssetPropertyAggregatesRequest = Shapes::StructureShape.new(name: 'GetAssetPropertyAggregatesRequest')
    GetAssetPropertyAggregatesResponse = Shapes::StructureShape.new(name: 'GetAssetPropertyAggregatesResponse')
    GetAssetPropertyValueHistoryRequest = Shapes::StructureShape.new(name: 'GetAssetPropertyValueHistoryRequest')
    GetAssetPropertyValueHistoryResponse = Shapes::StructureShape.new(name: 'GetAssetPropertyValueHistoryResponse')
    GetAssetPropertyValueRequest = Shapes::StructureShape.new(name: 'GetAssetPropertyValueRequest')
    GetAssetPropertyValueResponse = Shapes::StructureShape.new(name: 'GetAssetPropertyValueResponse')
    Greengrass = Shapes::StructureShape.new(name: 'Greengrass')
    GroupIdentity = Shapes::StructureShape.new(name: 'GroupIdentity')
    IAMUserIdentity = Shapes::StructureShape.new(name: 'IAMUserIdentity')
    ID = Shapes::StringShape.new(name: 'ID')
    IDs = Shapes::ListShape.new(name: 'IDs')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    IdentityId = Shapes::StringShape.new(name: 'IdentityId')
    IdentityType = Shapes::StringShape.new(name: 'IdentityType')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageFile = Shapes::StructureShape.new(name: 'ImageFile')
    ImageFileData = Shapes::BlobShape.new(name: 'ImageFileData')
    ImageFileType = Shapes::StringShape.new(name: 'ImageFileType')
    ImageLocation = Shapes::StructureShape.new(name: 'ImageLocation')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    Interval = Shapes::StringShape.new(name: 'Interval')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAccessPoliciesRequest = Shapes::StructureShape.new(name: 'ListAccessPoliciesRequest')
    ListAccessPoliciesResponse = Shapes::StructureShape.new(name: 'ListAccessPoliciesResponse')
    ListAssetModelsRequest = Shapes::StructureShape.new(name: 'ListAssetModelsRequest')
    ListAssetModelsResponse = Shapes::StructureShape.new(name: 'ListAssetModelsResponse')
    ListAssetsFilter = Shapes::StringShape.new(name: 'ListAssetsFilter')
    ListAssetsRequest = Shapes::StructureShape.new(name: 'ListAssetsRequest')
    ListAssetsResponse = Shapes::StructureShape.new(name: 'ListAssetsResponse')
    ListAssociatedAssetsRequest = Shapes::StructureShape.new(name: 'ListAssociatedAssetsRequest')
    ListAssociatedAssetsResponse = Shapes::StructureShape.new(name: 'ListAssociatedAssetsResponse')
    ListDashboardsRequest = Shapes::StructureShape.new(name: 'ListDashboardsRequest')
    ListDashboardsResponse = Shapes::StructureShape.new(name: 'ListDashboardsResponse')
    ListGatewaysRequest = Shapes::StructureShape.new(name: 'ListGatewaysRequest')
    ListGatewaysResponse = Shapes::StructureShape.new(name: 'ListGatewaysResponse')
    ListPortalsRequest = Shapes::StructureShape.new(name: 'ListPortalsRequest')
    ListPortalsResponse = Shapes::StructureShape.new(name: 'ListPortalsResponse')
    ListProjectAssetsRequest = Shapes::StructureShape.new(name: 'ListProjectAssetsRequest')
    ListProjectAssetsResponse = Shapes::StructureShape.new(name: 'ListProjectAssetsResponse')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsResponse = Shapes::StructureShape.new(name: 'ListProjectsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LoggingLevel = Shapes::StringShape.new(name: 'LoggingLevel')
    LoggingOptions = Shapes::StructureShape.new(name: 'LoggingOptions')
    Macro = Shapes::StringShape.new(name: 'Macro')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Measurement = Shapes::StructureShape.new(name: 'Measurement')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricWindow = Shapes::StructureShape.new(name: 'MetricWindow')
    MonitorErrorCode = Shapes::StringShape.new(name: 'MonitorErrorCode')
    MonitorErrorDetails = Shapes::StructureShape.new(name: 'MonitorErrorDetails')
    MonitorErrorMessage = Shapes::StringShape.new(name: 'MonitorErrorMessage')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OffsetInNanos = Shapes::IntegerShape.new(name: 'OffsetInNanos')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PortalClientId = Shapes::StringShape.new(name: 'PortalClientId')
    PortalResource = Shapes::StructureShape.new(name: 'PortalResource')
    PortalState = Shapes::StringShape.new(name: 'PortalState')
    PortalStatus = Shapes::StructureShape.new(name: 'PortalStatus')
    PortalSummaries = Shapes::ListShape.new(name: 'PortalSummaries')
    PortalSummary = Shapes::StructureShape.new(name: 'PortalSummary')
    ProjectResource = Shapes::StructureShape.new(name: 'ProjectResource')
    ProjectSummaries = Shapes::ListShape.new(name: 'ProjectSummaries')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    Property = Shapes::StructureShape.new(name: 'Property')
    PropertyAlias = Shapes::StringShape.new(name: 'PropertyAlias')
    PropertyDataType = Shapes::StringShape.new(name: 'PropertyDataType')
    PropertyNotification = Shapes::StructureShape.new(name: 'PropertyNotification')
    PropertyNotificationState = Shapes::StringShape.new(name: 'PropertyNotificationState')
    PropertyNotificationTopic = Shapes::StringShape.new(name: 'PropertyNotificationTopic')
    PropertyType = Shapes::StructureShape.new(name: 'PropertyType')
    PropertyUnit = Shapes::StringShape.new(name: 'PropertyUnit')
    PropertyValueBooleanValue = Shapes::BooleanShape.new(name: 'PropertyValueBooleanValue')
    PropertyValueDoubleValue = Shapes::FloatShape.new(name: 'PropertyValueDoubleValue')
    PropertyValueIntegerValue = Shapes::IntegerShape.new(name: 'PropertyValueIntegerValue')
    PropertyValueStringValue = Shapes::StringShape.new(name: 'PropertyValueStringValue')
    PutAssetPropertyValueEntries = Shapes::ListShape.new(name: 'PutAssetPropertyValueEntries')
    PutAssetPropertyValueEntry = Shapes::StructureShape.new(name: 'PutAssetPropertyValueEntry')
    PutLoggingOptionsRequest = Shapes::StructureShape.new(name: 'PutLoggingOptionsRequest')
    PutLoggingOptionsResponse = Shapes::StructureShape.new(name: 'PutLoggingOptionsResponse')
    Qualities = Shapes::ListShape.new(name: 'Qualities')
    Quality = Shapes::StringShape.new(name: 'Quality')
    Resolution = Shapes::StringShape.new(name: 'Resolution')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SSOApplicationId = Shapes::StringShape.new(name: 'SSOApplicationId')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SessionDurationSeconds = Shapes::IntegerShape.new(name: 'SessionDurationSeconds')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeInNanos = Shapes::StructureShape.new(name: 'TimeInNanos')
    TimeInSeconds = Shapes::IntegerShape.new(name: 'TimeInSeconds')
    TimeOrdering = Shapes::StringShape.new(name: 'TimeOrdering')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timestamps = Shapes::ListShape.new(name: 'Timestamps')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    Transform = Shapes::StructureShape.new(name: 'Transform')
    TraversalDirection = Shapes::StringShape.new(name: 'TraversalDirection')
    TumblingWindow = Shapes::StructureShape.new(name: 'TumblingWindow')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccessPolicyRequest = Shapes::StructureShape.new(name: 'UpdateAccessPolicyRequest')
    UpdateAccessPolicyResponse = Shapes::StructureShape.new(name: 'UpdateAccessPolicyResponse')
    UpdateAssetModelRequest = Shapes::StructureShape.new(name: 'UpdateAssetModelRequest')
    UpdateAssetModelResponse = Shapes::StructureShape.new(name: 'UpdateAssetModelResponse')
    UpdateAssetPropertyRequest = Shapes::StructureShape.new(name: 'UpdateAssetPropertyRequest')
    UpdateAssetRequest = Shapes::StructureShape.new(name: 'UpdateAssetRequest')
    UpdateAssetResponse = Shapes::StructureShape.new(name: 'UpdateAssetResponse')
    UpdateDashboardRequest = Shapes::StructureShape.new(name: 'UpdateDashboardRequest')
    UpdateDashboardResponse = Shapes::StructureShape.new(name: 'UpdateDashboardResponse')
    UpdateGatewayCapabilityConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateGatewayCapabilityConfigurationRequest')
    UpdateGatewayCapabilityConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateGatewayCapabilityConfigurationResponse')
    UpdateGatewayRequest = Shapes::StructureShape.new(name: 'UpdateGatewayRequest')
    UpdatePortalRequest = Shapes::StructureShape.new(name: 'UpdatePortalRequest')
    UpdatePortalResponse = Shapes::StructureShape.new(name: 'UpdatePortalResponse')
    UpdateProjectRequest = Shapes::StructureShape.new(name: 'UpdateProjectRequest')
    UpdateProjectResponse = Shapes::StructureShape.new(name: 'UpdateProjectResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserIdentity = Shapes::StructureShape.new(name: 'UserIdentity')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    VariableValue = Shapes::StructureShape.new(name: 'VariableValue')
    Variant = Shapes::StructureShape.new(name: 'Variant')

    AccessPolicySummaries.member = Shapes::ShapeRef.new(shape: AccessPolicySummary)

    AccessPolicySummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AccessPolicySummary.add_member(:identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "identity"))
    AccessPolicySummary.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    AccessPolicySummary.add_member(:permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "permission"))
    AccessPolicySummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    AccessPolicySummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    AccessPolicySummary.struct_class = Types::AccessPolicySummary

    AggregateTypes.member = Shapes::ShapeRef.new(shape: AggregateType)

    AggregatedValue.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    AggregatedValue.add_member(:quality, Shapes::ShapeRef.new(shape: Quality, location_name: "quality"))
    AggregatedValue.add_member(:value, Shapes::ShapeRef.new(shape: Aggregates, required: true, location_name: "value"))
    AggregatedValue.struct_class = Types::AggregatedValue

    AggregatedValues.member = Shapes::ShapeRef.new(shape: AggregatedValue)

    Aggregates.add_member(:average, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "average"))
    Aggregates.add_member(:count, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "count"))
    Aggregates.add_member(:maximum, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "maximum"))
    Aggregates.add_member(:minimum, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "minimum"))
    Aggregates.add_member(:sum, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "sum"))
    Aggregates.add_member(:standard_deviation, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "standardDeviation"))
    Aggregates.struct_class = Types::Aggregates

    AssetErrorDetails.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    AssetErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: AssetErrorCode, required: true, location_name: "code"))
    AssetErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: AssetErrorMessage, required: true, location_name: "message"))
    AssetErrorDetails.struct_class = Types::AssetErrorDetails

    AssetHierarchies.member = Shapes::ShapeRef.new(shape: AssetHierarchy)

    AssetHierarchy.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetHierarchy.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetHierarchy.struct_class = Types::AssetHierarchy

    AssetIDs.member = Shapes::ShapeRef.new(shape: ID)

    AssetModelHierarchies.member = Shapes::ShapeRef.new(shape: AssetModelHierarchy)

    AssetModelHierarchy.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetModelHierarchy.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelHierarchy.add_member(:child_asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "childAssetModelId"))
    AssetModelHierarchy.struct_class = Types::AssetModelHierarchy

    AssetModelHierarchyDefinition.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelHierarchyDefinition.add_member(:child_asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "childAssetModelId"))
    AssetModelHierarchyDefinition.struct_class = Types::AssetModelHierarchyDefinition

    AssetModelHierarchyDefinitions.member = Shapes::ShapeRef.new(shape: AssetModelHierarchyDefinition)

    AssetModelProperties.member = Shapes::ShapeRef.new(shape: AssetModelProperty)

    AssetModelProperty.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetModelProperty.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelProperty.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    AssetModelProperty.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    AssetModelProperty.add_member(:type, Shapes::ShapeRef.new(shape: PropertyType, required: true, location_name: "type"))
    AssetModelProperty.struct_class = Types::AssetModelProperty

    AssetModelPropertyDefinition.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelPropertyDefinition.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    AssetModelPropertyDefinition.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    AssetModelPropertyDefinition.add_member(:type, Shapes::ShapeRef.new(shape: PropertyType, required: true, location_name: "type"))
    AssetModelPropertyDefinition.struct_class = Types::AssetModelPropertyDefinition

    AssetModelPropertyDefinitions.member = Shapes::ShapeRef.new(shape: AssetModelPropertyDefinition)

    AssetModelStatus.add_member(:state, Shapes::ShapeRef.new(shape: AssetModelState, required: true, location_name: "state"))
    AssetModelStatus.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    AssetModelStatus.struct_class = Types::AssetModelStatus

    AssetModelSummaries.member = Shapes::ShapeRef.new(shape: AssetModelSummary)

    AssetModelSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetModelSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    AssetModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AssetModelSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    AssetModelSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    AssetModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "status"))
    AssetModelSummary.struct_class = Types::AssetModelSummary

    AssetProperties.member = Shapes::ShapeRef.new(shape: AssetProperty)

    AssetProperty.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetProperty.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetProperty.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "alias"))
    AssetProperty.add_member(:notification, Shapes::ShapeRef.new(shape: PropertyNotification, location_name: "notification"))
    AssetProperty.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    AssetProperty.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    AssetProperty.struct_class = Types::AssetProperty

    AssetPropertyValue.add_member(:value, Shapes::ShapeRef.new(shape: Variant, required: true, location_name: "value"))
    AssetPropertyValue.add_member(:timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "timestamp"))
    AssetPropertyValue.add_member(:quality, Shapes::ShapeRef.new(shape: Quality, location_name: "quality"))
    AssetPropertyValue.struct_class = Types::AssetPropertyValue

    AssetPropertyValueHistory.member = Shapes::ShapeRef.new(shape: AssetPropertyValue)

    AssetPropertyValues.member = Shapes::ShapeRef.new(shape: AssetPropertyValue)

    AssetStatus.add_member(:state, Shapes::ShapeRef.new(shape: AssetState, required: true, location_name: "state"))
    AssetStatus.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    AssetStatus.struct_class = Types::AssetStatus

    AssetSummaries.member = Shapes::ShapeRef.new(shape: AssetSummary)

    AssetSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    AssetSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetSummary.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    AssetSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    AssetSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    AssetSummary.add_member(:status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "status"))
    AssetSummary.add_member(:hierarchies, Shapes::ShapeRef.new(shape: AssetHierarchies, required: true, location_name: "hierarchies"))
    AssetSummary.struct_class = Types::AssetSummary

    AssociateAssetsRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetId"))
    AssociateAssetsRequest.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "hierarchyId"))
    AssociateAssetsRequest.add_member(:child_asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "childAssetId"))
    AssociateAssetsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    AssociateAssetsRequest.struct_class = Types::AssociateAssetsRequest

    AssociatedAssetsSummaries.member = Shapes::ShapeRef.new(shape: AssociatedAssetsSummary)

    AssociatedAssetsSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssociatedAssetsSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    AssociatedAssetsSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssociatedAssetsSummary.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    AssociatedAssetsSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    AssociatedAssetsSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    AssociatedAssetsSummary.add_member(:status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "status"))
    AssociatedAssetsSummary.add_member(:hierarchies, Shapes::ShapeRef.new(shape: AssetHierarchies, required: true, location_name: "hierarchies"))
    AssociatedAssetsSummary.struct_class = Types::AssociatedAssetsSummary

    Attribute.add_member(:default_value, Shapes::ShapeRef.new(shape: DefaultValue, location_name: "defaultValue"))
    Attribute.struct_class = Types::Attribute

    BatchAssociateProjectAssetsErrors.member = Shapes::ShapeRef.new(shape: AssetErrorDetails)

    BatchAssociateProjectAssetsRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    BatchAssociateProjectAssetsRequest.add_member(:asset_ids, Shapes::ShapeRef.new(shape: IDs, required: true, location_name: "assetIds"))
    BatchAssociateProjectAssetsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    BatchAssociateProjectAssetsRequest.struct_class = Types::BatchAssociateProjectAssetsRequest

    BatchAssociateProjectAssetsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsErrors, location_name: "errors"))
    BatchAssociateProjectAssetsResponse.struct_class = Types::BatchAssociateProjectAssetsResponse

    BatchDisassociateProjectAssetsErrors.member = Shapes::ShapeRef.new(shape: AssetErrorDetails)

    BatchDisassociateProjectAssetsRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    BatchDisassociateProjectAssetsRequest.add_member(:asset_ids, Shapes::ShapeRef.new(shape: IDs, required: true, location_name: "assetIds"))
    BatchDisassociateProjectAssetsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    BatchDisassociateProjectAssetsRequest.struct_class = Types::BatchDisassociateProjectAssetsRequest

    BatchDisassociateProjectAssetsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsErrors, location_name: "errors"))
    BatchDisassociateProjectAssetsResponse.struct_class = Types::BatchDisassociateProjectAssetsResponse

    BatchPutAssetPropertyError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueErrorCode, required: true, location_name: "errorCode"))
    BatchPutAssetPropertyError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "errorMessage"))
    BatchPutAssetPropertyError.add_member(:timestamps, Shapes::ShapeRef.new(shape: Timestamps, required: true, location_name: "timestamps"))
    BatchPutAssetPropertyError.struct_class = Types::BatchPutAssetPropertyError

    BatchPutAssetPropertyErrorEntries.member = Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrorEntry)

    BatchPutAssetPropertyErrorEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchPutAssetPropertyErrorEntry.add_member(:errors, Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrors, required: true, location_name: "errors"))
    BatchPutAssetPropertyErrorEntry.struct_class = Types::BatchPutAssetPropertyErrorEntry

    BatchPutAssetPropertyErrors.member = Shapes::ShapeRef.new(shape: BatchPutAssetPropertyError)

    BatchPutAssetPropertyValueRequest.add_member(:entries, Shapes::ShapeRef.new(shape: PutAssetPropertyValueEntries, required: true, location_name: "entries"))
    BatchPutAssetPropertyValueRequest.struct_class = Types::BatchPutAssetPropertyValueRequest

    BatchPutAssetPropertyValueResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrorEntries, required: true, location_name: "errorEntries"))
    BatchPutAssetPropertyValueResponse.struct_class = Types::BatchPutAssetPropertyValueResponse

    ConflictingOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictingOperationException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictingOperationException.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ConflictingOperationException.struct_class = Types::ConflictingOperationException

    CreateAccessPolicyRequest.add_member(:access_policy_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "accessPolicyIdentity"))
    CreateAccessPolicyRequest.add_member(:access_policy_resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "accessPolicyResource"))
    CreateAccessPolicyRequest.add_member(:access_policy_permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "accessPolicyPermission"))
    CreateAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAccessPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAccessPolicyRequest.struct_class = Types::CreateAccessPolicyRequest

    CreateAccessPolicyResponse.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "accessPolicyId"))
    CreateAccessPolicyResponse.add_member(:access_policy_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "accessPolicyArn"))
    CreateAccessPolicyResponse.struct_class = Types::CreateAccessPolicyResponse

    CreateAssetModelRequest.add_member(:asset_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelName"))
    CreateAssetModelRequest.add_member(:asset_model_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetModelDescription"))
    CreateAssetModelRequest.add_member(:asset_model_properties, Shapes::ShapeRef.new(shape: AssetModelPropertyDefinitions, location_name: "assetModelProperties"))
    CreateAssetModelRequest.add_member(:asset_model_hierarchies, Shapes::ShapeRef.new(shape: AssetModelHierarchyDefinitions, location_name: "assetModelHierarchies"))
    CreateAssetModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAssetModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAssetModelRequest.struct_class = Types::CreateAssetModelRequest

    CreateAssetModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    CreateAssetModelResponse.add_member(:asset_model_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetModelArn"))
    CreateAssetModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    CreateAssetModelResponse.struct_class = Types::CreateAssetModelResponse

    CreateAssetRequest.add_member(:asset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetName"))
    CreateAssetRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    CreateAssetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAssetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAssetRequest.struct_class = Types::CreateAssetRequest

    CreateAssetResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    CreateAssetResponse.add_member(:asset_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetArn"))
    CreateAssetResponse.add_member(:asset_status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "assetStatus"))
    CreateAssetResponse.struct_class = Types::CreateAssetResponse

    CreateDashboardRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "projectId"))
    CreateDashboardRequest.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "dashboardName"))
    CreateDashboardRequest.add_member(:dashboard_description, Shapes::ShapeRef.new(shape: Description, location_name: "dashboardDescription"))
    CreateDashboardRequest.add_member(:dashboard_definition, Shapes::ShapeRef.new(shape: DashboardDefinition, required: true, location_name: "dashboardDefinition"))
    CreateDashboardRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDashboardRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDashboardRequest.struct_class = Types::CreateDashboardRequest

    CreateDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "dashboardId"))
    CreateDashboardResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "dashboardArn"))
    CreateDashboardResponse.struct_class = Types::CreateDashboardResponse

    CreateGatewayRequest.add_member(:gateway_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "gatewayName"))
    CreateGatewayRequest.add_member(:gateway_platform, Shapes::ShapeRef.new(shape: GatewayPlatform, required: true, location_name: "gatewayPlatform"))
    CreateGatewayRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateGatewayRequest.struct_class = Types::CreateGatewayRequest

    CreateGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "gatewayId"))
    CreateGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "gatewayArn"))
    CreateGatewayResponse.struct_class = Types::CreateGatewayResponse

    CreatePortalRequest.add_member(:portal_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "portalName"))
    CreatePortalRequest.add_member(:portal_description, Shapes::ShapeRef.new(shape: Description, location_name: "portalDescription"))
    CreatePortalRequest.add_member(:portal_contact_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "portalContactEmail"))
    CreatePortalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePortalRequest.add_member(:portal_logo_image_file, Shapes::ShapeRef.new(shape: ImageFile, location_name: "portalLogoImageFile"))
    CreatePortalRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "roleArn"))
    CreatePortalRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePortalRequest.add_member(:portal_auth_mode, Shapes::ShapeRef.new(shape: AuthMode, location_name: "portalAuthMode"))
    CreatePortalRequest.struct_class = Types::CreatePortalRequest

    CreatePortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "portalId"))
    CreatePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    CreatePortalResponse.add_member(:portal_start_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "portalStartUrl"))
    CreatePortalResponse.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "portalStatus"))
    CreatePortalResponse.add_member(:sso_application_id, Shapes::ShapeRef.new(shape: SSOApplicationId, required: true, location_name: "ssoApplicationId"))
    CreatePortalResponse.struct_class = Types::CreatePortalResponse

    CreatePresignedPortalUrlRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "portalId"))
    CreatePresignedPortalUrlRequest.add_member(:session_duration_seconds, Shapes::ShapeRef.new(shape: SessionDurationSeconds, location: "querystring", location_name: "sessionDurationSeconds"))
    CreatePresignedPortalUrlRequest.struct_class = Types::CreatePresignedPortalUrlRequest

    CreatePresignedPortalUrlResponse.add_member(:presigned_portal_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "presignedPortalUrl"))
    CreatePresignedPortalUrlResponse.struct_class = Types::CreatePresignedPortalUrlResponse

    CreateProjectRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "portalId"))
    CreateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "projectName"))
    CreateProjectRequest.add_member(:project_description, Shapes::ShapeRef.new(shape: Description, location_name: "projectDescription"))
    CreateProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateProjectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "projectId"))
    CreateProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "projectArn"))
    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    DashboardSummaries.member = Shapes::ShapeRef.new(shape: DashboardSummary)

    DashboardSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    DashboardSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DashboardSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DashboardSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    DashboardSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    DashboardSummary.struct_class = Types::DashboardSummary

    DeleteAccessPolicyRequest.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "accessPolicyId"))
    DeleteAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAccessPolicyRequest.struct_class = Types::DeleteAccessPolicyRequest

    DeleteAccessPolicyResponse.struct_class = Types::DeleteAccessPolicyResponse

    DeleteAssetModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetModelId"))
    DeleteAssetModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAssetModelRequest.struct_class = Types::DeleteAssetModelRequest

    DeleteAssetModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    DeleteAssetModelResponse.struct_class = Types::DeleteAssetModelResponse

    DeleteAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetId"))
    DeleteAssetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAssetRequest.struct_class = Types::DeleteAssetRequest

    DeleteAssetResponse.add_member(:asset_status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "assetStatus"))
    DeleteAssetResponse.struct_class = Types::DeleteAssetResponse

    DeleteDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "dashboardId"))
    DeleteDashboardRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteDashboardRequest.struct_class = Types::DeleteDashboardRequest

    DeleteDashboardResponse.struct_class = Types::DeleteDashboardResponse

    DeleteGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    DeleteGatewayRequest.struct_class = Types::DeleteGatewayRequest

    DeletePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "portalId"))
    DeletePortalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeletePortalRequest.struct_class = Types::DeletePortalRequest

    DeletePortalResponse.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "portalStatus"))
    DeletePortalResponse.struct_class = Types::DeletePortalResponse

    DeleteProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    DeleteProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResponse.struct_class = Types::DeleteProjectResponse

    DescribeAccessPolicyRequest.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "accessPolicyId"))
    DescribeAccessPolicyRequest.struct_class = Types::DescribeAccessPolicyRequest

    DescribeAccessPolicyResponse.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "accessPolicyId"))
    DescribeAccessPolicyResponse.add_member(:access_policy_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "accessPolicyArn"))
    DescribeAccessPolicyResponse.add_member(:access_policy_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "accessPolicyIdentity"))
    DescribeAccessPolicyResponse.add_member(:access_policy_resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "accessPolicyResource"))
    DescribeAccessPolicyResponse.add_member(:access_policy_permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "accessPolicyPermission"))
    DescribeAccessPolicyResponse.add_member(:access_policy_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "accessPolicyCreationDate"))
    DescribeAccessPolicyResponse.add_member(:access_policy_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "accessPolicyLastUpdateDate"))
    DescribeAccessPolicyResponse.struct_class = Types::DescribeAccessPolicyResponse

    DescribeAssetModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetModelId"))
    DescribeAssetModelRequest.struct_class = Types::DescribeAssetModelRequest

    DescribeAssetModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DescribeAssetModelResponse.add_member(:asset_model_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetModelArn"))
    DescribeAssetModelResponse.add_member(:asset_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelName"))
    DescribeAssetModelResponse.add_member(:asset_model_description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "assetModelDescription"))
    DescribeAssetModelResponse.add_member(:asset_model_properties, Shapes::ShapeRef.new(shape: AssetModelProperties, required: true, location_name: "assetModelProperties"))
    DescribeAssetModelResponse.add_member(:asset_model_hierarchies, Shapes::ShapeRef.new(shape: AssetModelHierarchies, required: true, location_name: "assetModelHierarchies"))
    DescribeAssetModelResponse.add_member(:asset_model_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "assetModelCreationDate"))
    DescribeAssetModelResponse.add_member(:asset_model_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "assetModelLastUpdateDate"))
    DescribeAssetModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    DescribeAssetModelResponse.struct_class = Types::DescribeAssetModelResponse

    DescribeAssetPropertyRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetId"))
    DescribeAssetPropertyRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "propertyId"))
    DescribeAssetPropertyRequest.struct_class = Types::DescribeAssetPropertyRequest

    DescribeAssetPropertyResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    DescribeAssetPropertyResponse.add_member(:asset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetName"))
    DescribeAssetPropertyResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DescribeAssetPropertyResponse.add_member(:asset_property, Shapes::ShapeRef.new(shape: Property, required: true, location_name: "assetProperty"))
    DescribeAssetPropertyResponse.struct_class = Types::DescribeAssetPropertyResponse

    DescribeAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetId"))
    DescribeAssetRequest.struct_class = Types::DescribeAssetRequest

    DescribeAssetResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    DescribeAssetResponse.add_member(:asset_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetArn"))
    DescribeAssetResponse.add_member(:asset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetName"))
    DescribeAssetResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DescribeAssetResponse.add_member(:asset_properties, Shapes::ShapeRef.new(shape: AssetProperties, required: true, location_name: "assetProperties"))
    DescribeAssetResponse.add_member(:asset_hierarchies, Shapes::ShapeRef.new(shape: AssetHierarchies, required: true, location_name: "assetHierarchies"))
    DescribeAssetResponse.add_member(:asset_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "assetCreationDate"))
    DescribeAssetResponse.add_member(:asset_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "assetLastUpdateDate"))
    DescribeAssetResponse.add_member(:asset_status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "assetStatus"))
    DescribeAssetResponse.struct_class = Types::DescribeAssetResponse

    DescribeDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "dashboardId"))
    DescribeDashboardRequest.struct_class = Types::DescribeDashboardRequest

    DescribeDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "dashboardId"))
    DescribeDashboardResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "dashboardArn"))
    DescribeDashboardResponse.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "dashboardName"))
    DescribeDashboardResponse.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "projectId"))
    DescribeDashboardResponse.add_member(:dashboard_description, Shapes::ShapeRef.new(shape: Description, location_name: "dashboardDescription"))
    DescribeDashboardResponse.add_member(:dashboard_definition, Shapes::ShapeRef.new(shape: DashboardDefinition, required: true, location_name: "dashboardDefinition"))
    DescribeDashboardResponse.add_member(:dashboard_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "dashboardCreationDate"))
    DescribeDashboardResponse.add_member(:dashboard_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "dashboardLastUpdateDate"))
    DescribeDashboardResponse.struct_class = Types::DescribeDashboardResponse

    DescribeGatewayCapabilityConfigurationRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    DescribeGatewayCapabilityConfigurationRequest.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location: "uri", location_name: "capabilityNamespace"))
    DescribeGatewayCapabilityConfigurationRequest.struct_class = Types::DescribeGatewayCapabilityConfigurationRequest

    DescribeGatewayCapabilityConfigurationResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "gatewayId"))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location_name: "capabilityNamespace"))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, required: true, location_name: "capabilityConfiguration"))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_sync_status, Shapes::ShapeRef.new(shape: CapabilitySyncStatus, required: true, location_name: "capabilitySyncStatus"))
    DescribeGatewayCapabilityConfigurationResponse.struct_class = Types::DescribeGatewayCapabilityConfigurationResponse

    DescribeGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    DescribeGatewayRequest.struct_class = Types::DescribeGatewayRequest

    DescribeGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "gatewayId"))
    DescribeGatewayResponse.add_member(:gateway_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "gatewayName"))
    DescribeGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "gatewayArn"))
    DescribeGatewayResponse.add_member(:gateway_platform, Shapes::ShapeRef.new(shape: GatewayPlatform, location_name: "gatewayPlatform"))
    DescribeGatewayResponse.add_member(:gateway_capability_summaries, Shapes::ShapeRef.new(shape: GatewayCapabilitySummaries, required: true, location_name: "gatewayCapabilitySummaries"))
    DescribeGatewayResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    DescribeGatewayResponse.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    DescribeGatewayResponse.struct_class = Types::DescribeGatewayResponse

    DescribeLoggingOptionsRequest.struct_class = Types::DescribeLoggingOptionsRequest

    DescribeLoggingOptionsResponse.add_member(:logging_options, Shapes::ShapeRef.new(shape: LoggingOptions, required: true, location_name: "loggingOptions"))
    DescribeLoggingOptionsResponse.struct_class = Types::DescribeLoggingOptionsResponse

    DescribePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "portalId"))
    DescribePortalRequest.struct_class = Types::DescribePortalRequest

    DescribePortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "portalId"))
    DescribePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    DescribePortalResponse.add_member(:portal_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "portalName"))
    DescribePortalResponse.add_member(:portal_description, Shapes::ShapeRef.new(shape: Description, location_name: "portalDescription"))
    DescribePortalResponse.add_member(:portal_client_id, Shapes::ShapeRef.new(shape: PortalClientId, required: true, location_name: "portalClientId"))
    DescribePortalResponse.add_member(:portal_start_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "portalStartUrl"))
    DescribePortalResponse.add_member(:portal_contact_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "portalContactEmail"))
    DescribePortalResponse.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "portalStatus"))
    DescribePortalResponse.add_member(:portal_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "portalCreationDate"))
    DescribePortalResponse.add_member(:portal_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "portalLastUpdateDate"))
    DescribePortalResponse.add_member(:portal_logo_image_location, Shapes::ShapeRef.new(shape: ImageLocation, location_name: "portalLogoImageLocation"))
    DescribePortalResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "roleArn"))
    DescribePortalResponse.add_member(:portal_auth_mode, Shapes::ShapeRef.new(shape: AuthMode, location_name: "portalAuthMode"))
    DescribePortalResponse.struct_class = Types::DescribePortalResponse

    DescribeProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    DescribeProjectRequest.struct_class = Types::DescribeProjectRequest

    DescribeProjectResponse.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "projectId"))
    DescribeProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "projectArn"))
    DescribeProjectResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "projectName"))
    DescribeProjectResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "portalId"))
    DescribeProjectResponse.add_member(:project_description, Shapes::ShapeRef.new(shape: Description, location_name: "projectDescription"))
    DescribeProjectResponse.add_member(:project_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "projectCreationDate"))
    DescribeProjectResponse.add_member(:project_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "projectLastUpdateDate"))
    DescribeProjectResponse.struct_class = Types::DescribeProjectResponse

    DisassociateAssetsRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetId"))
    DisassociateAssetsRequest.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "hierarchyId"))
    DisassociateAssetsRequest.add_member(:child_asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "childAssetId"))
    DisassociateAssetsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DisassociateAssetsRequest.struct_class = Types::DisassociateAssetsRequest

    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "code"))
    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ExpressionVariable.add_member(:name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "name"))
    ExpressionVariable.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    ExpressionVariable.struct_class = Types::ExpressionVariable

    ExpressionVariables.member = Shapes::ShapeRef.new(shape: ExpressionVariable)

    GatewayCapabilitySummaries.member = Shapes::ShapeRef.new(shape: GatewayCapabilitySummary)

    GatewayCapabilitySummary.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location_name: "capabilityNamespace"))
    GatewayCapabilitySummary.add_member(:capability_sync_status, Shapes::ShapeRef.new(shape: CapabilitySyncStatus, required: true, location_name: "capabilitySyncStatus"))
    GatewayCapabilitySummary.struct_class = Types::GatewayCapabilitySummary

    GatewayPlatform.add_member(:greengrass, Shapes::ShapeRef.new(shape: Greengrass, required: true, location_name: "greengrass"))
    GatewayPlatform.struct_class = Types::GatewayPlatform

    GatewaySummaries.member = Shapes::ShapeRef.new(shape: GatewaySummary)

    GatewaySummary.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "gatewayId"))
    GatewaySummary.add_member(:gateway_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "gatewayName"))
    GatewaySummary.add_member(:gateway_capability_summaries, Shapes::ShapeRef.new(shape: GatewayCapabilitySummaries, location_name: "gatewayCapabilitySummaries"))
    GatewaySummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    GatewaySummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    GatewaySummary.struct_class = Types::GatewaySummary

    GetAssetPropertyAggregatesRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "assetId"))
    GetAssetPropertyAggregatesRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "propertyId"))
    GetAssetPropertyAggregatesRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location: "querystring", location_name: "propertyAlias"))
    GetAssetPropertyAggregatesRequest.add_member(:aggregate_types, Shapes::ShapeRef.new(shape: AggregateTypes, required: true, location: "querystring", location_name: "aggregateTypes"))
    GetAssetPropertyAggregatesRequest.add_member(:resolution, Shapes::ShapeRef.new(shape: Resolution, required: true, location: "querystring", location_name: "resolution"))
    GetAssetPropertyAggregatesRequest.add_member(:qualities, Shapes::ShapeRef.new(shape: Qualities, location: "querystring", location_name: "qualities"))
    GetAssetPropertyAggregatesRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startDate"))
    GetAssetPropertyAggregatesRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endDate"))
    GetAssetPropertyAggregatesRequest.add_member(:time_ordering, Shapes::ShapeRef.new(shape: TimeOrdering, location: "querystring", location_name: "timeOrdering"))
    GetAssetPropertyAggregatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetAssetPropertyAggregatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetAssetPropertyAggregatesRequest.struct_class = Types::GetAssetPropertyAggregatesRequest

    GetAssetPropertyAggregatesResponse.add_member(:aggregated_values, Shapes::ShapeRef.new(shape: AggregatedValues, required: true, location_name: "aggregatedValues"))
    GetAssetPropertyAggregatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAssetPropertyAggregatesResponse.struct_class = Types::GetAssetPropertyAggregatesResponse

    GetAssetPropertyValueHistoryRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "assetId"))
    GetAssetPropertyValueHistoryRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "propertyId"))
    GetAssetPropertyValueHistoryRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location: "querystring", location_name: "propertyAlias"))
    GetAssetPropertyValueHistoryRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startDate"))
    GetAssetPropertyValueHistoryRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endDate"))
    GetAssetPropertyValueHistoryRequest.add_member(:qualities, Shapes::ShapeRef.new(shape: Qualities, location: "querystring", location_name: "qualities"))
    GetAssetPropertyValueHistoryRequest.add_member(:time_ordering, Shapes::ShapeRef.new(shape: TimeOrdering, location: "querystring", location_name: "timeOrdering"))
    GetAssetPropertyValueHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetAssetPropertyValueHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetAssetPropertyValueHistoryRequest.struct_class = Types::GetAssetPropertyValueHistoryRequest

    GetAssetPropertyValueHistoryResponse.add_member(:asset_property_value_history, Shapes::ShapeRef.new(shape: AssetPropertyValueHistory, required: true, location_name: "assetPropertyValueHistory"))
    GetAssetPropertyValueHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAssetPropertyValueHistoryResponse.struct_class = Types::GetAssetPropertyValueHistoryResponse

    GetAssetPropertyValueRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "assetId"))
    GetAssetPropertyValueRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "propertyId"))
    GetAssetPropertyValueRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location: "querystring", location_name: "propertyAlias"))
    GetAssetPropertyValueRequest.struct_class = Types::GetAssetPropertyValueRequest

    GetAssetPropertyValueResponse.add_member(:property_value, Shapes::ShapeRef.new(shape: AssetPropertyValue, location_name: "propertyValue"))
    GetAssetPropertyValueResponse.struct_class = Types::GetAssetPropertyValueResponse

    Greengrass.add_member(:group_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "groupArn"))
    Greengrass.struct_class = Types::Greengrass

    GroupIdentity.add_member(:id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "id"))
    GroupIdentity.struct_class = Types::GroupIdentity

    IAMUserIdentity.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    IAMUserIdentity.struct_class = Types::IAMUserIdentity

    IDs.member = Shapes::ShapeRef.new(shape: ID)

    Identity.add_member(:user, Shapes::ShapeRef.new(shape: UserIdentity, location_name: "user"))
    Identity.add_member(:group, Shapes::ShapeRef.new(shape: GroupIdentity, location_name: "group"))
    Identity.add_member(:iam_user, Shapes::ShapeRef.new(shape: IAMUserIdentity, location_name: "iamUser"))
    Identity.struct_class = Types::Identity

    Image.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    Image.add_member(:file, Shapes::ShapeRef.new(shape: ImageFile, location_name: "file"))
    Image.struct_class = Types::Image

    ImageFile.add_member(:data, Shapes::ShapeRef.new(shape: ImageFileData, required: true, location_name: "data"))
    ImageFile.add_member(:type, Shapes::ShapeRef.new(shape: ImageFileType, required: true, location_name: "type"))
    ImageFile.struct_class = Types::ImageFile

    ImageLocation.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    ImageLocation.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    ImageLocation.struct_class = Types::ImageLocation

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAccessPoliciesRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location: "querystring", location_name: "identityType"))
    ListAccessPoliciesRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location: "querystring", location_name: "identityId"))
    ListAccessPoliciesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
    ListAccessPoliciesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "resourceId"))
    ListAccessPoliciesRequest.add_member(:iam_arn, Shapes::ShapeRef.new(shape: ARN, location: "querystring", location_name: "iamArn"))
    ListAccessPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAccessPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAccessPoliciesRequest.struct_class = Types::ListAccessPoliciesRequest

    ListAccessPoliciesResponse.add_member(:access_policy_summaries, Shapes::ShapeRef.new(shape: AccessPolicySummaries, required: true, location_name: "accessPolicySummaries"))
    ListAccessPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccessPoliciesResponse.struct_class = Types::ListAccessPoliciesResponse

    ListAssetModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssetModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetModelsRequest.struct_class = Types::ListAssetModelsRequest

    ListAssetModelsResponse.add_member(:asset_model_summaries, Shapes::ShapeRef.new(shape: AssetModelSummaries, required: true, location_name: "assetModelSummaries"))
    ListAssetModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetModelsResponse.struct_class = Types::ListAssetModelsResponse

    ListAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetsRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "assetModelId"))
    ListAssetsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListAssetsFilter, location: "querystring", location_name: "filter"))
    ListAssetsRequest.struct_class = Types::ListAssetsRequest

    ListAssetsResponse.add_member(:asset_summaries, Shapes::ShapeRef.new(shape: AssetSummaries, required: true, location_name: "assetSummaries"))
    ListAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetsResponse.struct_class = Types::ListAssetsResponse

    ListAssociatedAssetsRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetId"))
    ListAssociatedAssetsRequest.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "hierarchyId"))
    ListAssociatedAssetsRequest.add_member(:traversal_direction, Shapes::ShapeRef.new(shape: TraversalDirection, location: "querystring", location_name: "traversalDirection"))
    ListAssociatedAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssociatedAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssociatedAssetsRequest.struct_class = Types::ListAssociatedAssetsRequest

    ListAssociatedAssetsResponse.add_member(:asset_summaries, Shapes::ShapeRef.new(shape: AssociatedAssetsSummaries, required: true, location_name: "assetSummaries"))
    ListAssociatedAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssociatedAssetsResponse.struct_class = Types::ListAssociatedAssetsResponse

    ListDashboardsRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "querystring", location_name: "projectId"))
    ListDashboardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDashboardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDashboardsRequest.struct_class = Types::ListDashboardsRequest

    ListDashboardsResponse.add_member(:dashboard_summaries, Shapes::ShapeRef.new(shape: DashboardSummaries, required: true, location_name: "dashboardSummaries"))
    ListDashboardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDashboardsResponse.struct_class = Types::ListDashboardsResponse

    ListGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewaysRequest.struct_class = Types::ListGatewaysRequest

    ListGatewaysResponse.add_member(:gateway_summaries, Shapes::ShapeRef.new(shape: GatewaySummaries, required: true, location_name: "gatewaySummaries"))
    ListGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListGatewaysResponse.struct_class = Types::ListGatewaysResponse

    ListPortalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPortalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPortalsRequest.struct_class = Types::ListPortalsRequest

    ListPortalsResponse.add_member(:portal_summaries, Shapes::ShapeRef.new(shape: PortalSummaries, location_name: "portalSummaries"))
    ListPortalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPortalsResponse.struct_class = Types::ListPortalsResponse

    ListProjectAssetsRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    ListProjectAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProjectAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProjectAssetsRequest.struct_class = Types::ListProjectAssetsRequest

    ListProjectAssetsResponse.add_member(:asset_ids, Shapes::ShapeRef.new(shape: AssetIDs, required: true, location_name: "assetIds"))
    ListProjectAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProjectAssetsResponse.struct_class = Types::ListProjectAssetsResponse

    ListProjectsRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "querystring", location_name: "portalId"))
    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResponse.add_member(:project_summaries, Shapes::ShapeRef.new(shape: ProjectSummaries, required: true, location_name: "projectSummaries"))
    ListProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProjectsResponse.struct_class = Types::ListProjectsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingOptions.add_member(:level, Shapes::ShapeRef.new(shape: LoggingLevel, required: true, location_name: "level"))
    LoggingOptions.struct_class = Types::LoggingOptions

    Measurement.struct_class = Types::Measurement

    Metric.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "expression"))
    Metric.add_member(:variables, Shapes::ShapeRef.new(shape: ExpressionVariables, required: true, location_name: "variables"))
    Metric.add_member(:window, Shapes::ShapeRef.new(shape: MetricWindow, required: true, location_name: "window"))
    Metric.struct_class = Types::Metric

    MetricWindow.add_member(:tumbling, Shapes::ShapeRef.new(shape: TumblingWindow, location_name: "tumbling"))
    MetricWindow.struct_class = Types::MetricWindow

    MonitorErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: MonitorErrorCode, location_name: "code"))
    MonitorErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: MonitorErrorMessage, location_name: "message"))
    MonitorErrorDetails.struct_class = Types::MonitorErrorDetails

    PortalResource.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    PortalResource.struct_class = Types::PortalResource

    PortalStatus.add_member(:state, Shapes::ShapeRef.new(shape: PortalState, required: true, location_name: "state"))
    PortalStatus.add_member(:error, Shapes::ShapeRef.new(shape: MonitorErrorDetails, location_name: "error"))
    PortalStatus.struct_class = Types::PortalStatus

    PortalSummaries.member = Shapes::ShapeRef.new(shape: PortalSummary)

    PortalSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    PortalSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    PortalSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PortalSummary.add_member(:start_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "startUrl"))
    PortalSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    PortalSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    PortalSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "roleArn"))
    PortalSummary.add_member(:status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "status"))
    PortalSummary.struct_class = Types::PortalSummary

    ProjectResource.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    ProjectResource.struct_class = Types::ProjectResource

    ProjectSummaries.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    ProjectSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    ProjectSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ProjectSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ProjectSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    ProjectSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    ProjectSummary.struct_class = Types::ProjectSummary

    Property.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    Property.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    Property.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "alias"))
    Property.add_member(:notification, Shapes::ShapeRef.new(shape: PropertyNotification, location_name: "notification"))
    Property.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    Property.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    Property.add_member(:type, Shapes::ShapeRef.new(shape: PropertyType, location_name: "type"))
    Property.struct_class = Types::Property

    PropertyNotification.add_member(:topic, Shapes::ShapeRef.new(shape: PropertyNotificationTopic, required: true, location_name: "topic"))
    PropertyNotification.add_member(:state, Shapes::ShapeRef.new(shape: PropertyNotificationState, required: true, location_name: "state"))
    PropertyNotification.struct_class = Types::PropertyNotification

    PropertyType.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, location_name: "attribute"))
    PropertyType.add_member(:measurement, Shapes::ShapeRef.new(shape: Measurement, location_name: "measurement"))
    PropertyType.add_member(:transform, Shapes::ShapeRef.new(shape: Transform, location_name: "transform"))
    PropertyType.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, location_name: "metric"))
    PropertyType.struct_class = Types::PropertyType

    PutAssetPropertyValueEntries.member = Shapes::ShapeRef.new(shape: PutAssetPropertyValueEntry)

    PutAssetPropertyValueEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    PutAssetPropertyValueEntry.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    PutAssetPropertyValueEntry.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location_name: "propertyId"))
    PutAssetPropertyValueEntry.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    PutAssetPropertyValueEntry.add_member(:property_values, Shapes::ShapeRef.new(shape: AssetPropertyValues, required: true, location_name: "propertyValues"))
    PutAssetPropertyValueEntry.struct_class = Types::PutAssetPropertyValueEntry

    PutLoggingOptionsRequest.add_member(:logging_options, Shapes::ShapeRef.new(shape: LoggingOptions, required: true, location_name: "loggingOptions"))
    PutLoggingOptionsRequest.struct_class = Types::PutLoggingOptionsRequest

    PutLoggingOptionsResponse.struct_class = Types::PutLoggingOptionsResponse

    Qualities.member = Shapes::ShapeRef.new(shape: Quality)

    Resource.add_member(:portal, Shapes::ShapeRef.new(shape: PortalResource, location_name: "portal"))
    Resource.add_member(:project, Shapes::ShapeRef.new(shape: ProjectResource, location_name: "project"))
    Resource.struct_class = Types::Resource

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceAlreadyExistsException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceAlreadyExistsException.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeInNanos.add_member(:time_in_seconds, Shapes::ShapeRef.new(shape: TimeInSeconds, required: true, location_name: "timeInSeconds"))
    TimeInNanos.add_member(:offset_in_nanos, Shapes::ShapeRef.new(shape: OffsetInNanos, location_name: "offsetInNanos"))
    TimeInNanos.struct_class = Types::TimeInNanos

    Timestamps.member = Shapes::ShapeRef.new(shape: TimeInNanos)

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    Transform.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "expression"))
    Transform.add_member(:variables, Shapes::ShapeRef.new(shape: ExpressionVariables, required: true, location_name: "variables"))
    Transform.struct_class = Types::Transform

    TumblingWindow.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, required: true, location_name: "interval"))
    TumblingWindow.struct_class = Types::TumblingWindow

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAccessPolicyRequest.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "accessPolicyId"))
    UpdateAccessPolicyRequest.add_member(:access_policy_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "accessPolicyIdentity"))
    UpdateAccessPolicyRequest.add_member(:access_policy_resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "accessPolicyResource"))
    UpdateAccessPolicyRequest.add_member(:access_policy_permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "accessPolicyPermission"))
    UpdateAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateAccessPolicyRequest.struct_class = Types::UpdateAccessPolicyRequest

    UpdateAccessPolicyResponse.struct_class = Types::UpdateAccessPolicyResponse

    UpdateAssetModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetModelId"))
    UpdateAssetModelRequest.add_member(:asset_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelName"))
    UpdateAssetModelRequest.add_member(:asset_model_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetModelDescription"))
    UpdateAssetModelRequest.add_member(:asset_model_properties, Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: "assetModelProperties"))
    UpdateAssetModelRequest.add_member(:asset_model_hierarchies, Shapes::ShapeRef.new(shape: AssetModelHierarchies, location_name: "assetModelHierarchies"))
    UpdateAssetModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateAssetModelRequest.struct_class = Types::UpdateAssetModelRequest

    UpdateAssetModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    UpdateAssetModelResponse.struct_class = Types::UpdateAssetModelResponse

    UpdateAssetPropertyRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetId"))
    UpdateAssetPropertyRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "propertyId"))
    UpdateAssetPropertyRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "propertyAlias"))
    UpdateAssetPropertyRequest.add_member(:property_notification_state, Shapes::ShapeRef.new(shape: PropertyNotificationState, location_name: "propertyNotificationState"))
    UpdateAssetPropertyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateAssetPropertyRequest.struct_class = Types::UpdateAssetPropertyRequest

    UpdateAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetId"))
    UpdateAssetRequest.add_member(:asset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetName"))
    UpdateAssetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateAssetRequest.struct_class = Types::UpdateAssetRequest

    UpdateAssetResponse.add_member(:asset_status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "assetStatus"))
    UpdateAssetResponse.struct_class = Types::UpdateAssetResponse

    UpdateDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "dashboardId"))
    UpdateDashboardRequest.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "dashboardName"))
    UpdateDashboardRequest.add_member(:dashboard_description, Shapes::ShapeRef.new(shape: Description, location_name: "dashboardDescription"))
    UpdateDashboardRequest.add_member(:dashboard_definition, Shapes::ShapeRef.new(shape: DashboardDefinition, required: true, location_name: "dashboardDefinition"))
    UpdateDashboardRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateDashboardRequest.struct_class = Types::UpdateDashboardRequest

    UpdateDashboardResponse.struct_class = Types::UpdateDashboardResponse

    UpdateGatewayCapabilityConfigurationRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    UpdateGatewayCapabilityConfigurationRequest.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location_name: "capabilityNamespace"))
    UpdateGatewayCapabilityConfigurationRequest.add_member(:capability_configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, required: true, location_name: "capabilityConfiguration"))
    UpdateGatewayCapabilityConfigurationRequest.struct_class = Types::UpdateGatewayCapabilityConfigurationRequest

    UpdateGatewayCapabilityConfigurationResponse.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location_name: "capabilityNamespace"))
    UpdateGatewayCapabilityConfigurationResponse.add_member(:capability_sync_status, Shapes::ShapeRef.new(shape: CapabilitySyncStatus, required: true, location_name: "capabilitySyncStatus"))
    UpdateGatewayCapabilityConfigurationResponse.struct_class = Types::UpdateGatewayCapabilityConfigurationResponse

    UpdateGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    UpdateGatewayRequest.add_member(:gateway_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "gatewayName"))
    UpdateGatewayRequest.struct_class = Types::UpdateGatewayRequest

    UpdatePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "portalId"))
    UpdatePortalRequest.add_member(:portal_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "portalName"))
    UpdatePortalRequest.add_member(:portal_description, Shapes::ShapeRef.new(shape: Description, location_name: "portalDescription"))
    UpdatePortalRequest.add_member(:portal_contact_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "portalContactEmail"))
    UpdatePortalRequest.add_member(:portal_logo_image, Shapes::ShapeRef.new(shape: Image, location_name: "portalLogoImage"))
    UpdatePortalRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "roleArn"))
    UpdatePortalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdatePortalRequest.struct_class = Types::UpdatePortalRequest

    UpdatePortalResponse.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "portalStatus"))
    UpdatePortalResponse.struct_class = Types::UpdatePortalResponse

    UpdateProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    UpdateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "projectName"))
    UpdateProjectRequest.add_member(:project_description, Shapes::ShapeRef.new(shape: Description, location_name: "projectDescription"))
    UpdateProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateProjectRequest.struct_class = Types::UpdateProjectRequest

    UpdateProjectResponse.struct_class = Types::UpdateProjectResponse

    UserIdentity.add_member(:id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "id"))
    UserIdentity.struct_class = Types::UserIdentity

    VariableValue.add_member(:property_id, Shapes::ShapeRef.new(shape: Macro, required: true, location_name: "propertyId"))
    VariableValue.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: Macro, location_name: "hierarchyId"))
    VariableValue.struct_class = Types::VariableValue

    Variant.add_member(:string_value, Shapes::ShapeRef.new(shape: PropertyValueStringValue, location_name: "stringValue"))
    Variant.add_member(:integer_value, Shapes::ShapeRef.new(shape: PropertyValueIntegerValue, location_name: "integerValue"))
    Variant.add_member(:double_value, Shapes::ShapeRef.new(shape: PropertyValueDoubleValue, location_name: "doubleValue"))
    Variant.add_member(:boolean_value, Shapes::ShapeRef.new(shape: PropertyValueBooleanValue, location_name: "booleanValue"))
    Variant.struct_class = Types::Variant


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-02"

      api.metadata = {
        "apiVersion" => "2019-12-02",
        "endpointPrefix" => "iotsitewise",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT SiteWise",
        "serviceId" => "IoTSiteWise",
        "signatureVersion" => "v4",
        "signingName" => "iotsitewise",
        "uid" => "iotsitewise-2019-12-02",
      }

      api.add_operation(:associate_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAssets"
        o.http_method = "POST"
        o.http_request_uri = "/assets/{assetId}/associate"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:batch_associate_project_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateProjectAssets"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{projectId}/assets/associate"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:batch_disassociate_project_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateProjectAssets"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{projectId}/assets/disassociate"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_put_asset_property_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutAssetPropertyValue"
        o.http_method = "POST"
        o.http_request_uri = "/properties"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/access-policies"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAsset"
        o.http_method = "POST"
        o.http_request_uri = "/assets"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_asset_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssetModel"
        o.http_method = "POST"
        o.http_request_uri = "/asset-models"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAssetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/dashboards"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGateway"
        o.http_method = "POST"
        o.http_request_uri = "/20200301/gateways"
        o.endpoint_pattern = {
          "hostPrefix" => "edge.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortal"
        o.http_method = "POST"
        o.http_request_uri = "/portals"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_presigned_portal_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePresignedPortalUrl"
        o.http_method = "GET"
        o.http_request_uri = "/portals/{portalId}/presigned-url"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreatePresignedPortalUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePresignedPortalUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/projects"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/access-policies/{accessPolicyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAsset"
        o.http_method = "DELETE"
        o.http_request_uri = "/assets/{assetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_asset_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssetModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/asset-models/{assetModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDashboard"
        o.http_method = "DELETE"
        o.http_request_uri = "/dashboards/{dashboardId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/20200301/gateways/{gatewayId}"
        o.endpoint_pattern = {
          "hostPrefix" => "edge.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortal"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeletePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{projectId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccessPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/access-policies/{accessPolicyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAsset"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_asset_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetModel"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models/{assetModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_asset_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetProperty"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}/properties/{propertyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetPropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetPropertyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDashboard"
        o.http_method = "GET"
        o.http_request_uri = "/dashboards/{dashboardId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGateway"
        o.http_method = "GET"
        o.http_request_uri = "/20200301/gateways/{gatewayId}"
        o.endpoint_pattern = {
          "hostPrefix" => "edge.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_gateway_capability_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGatewayCapabilityConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}"
        o.endpoint_pattern = {
          "hostPrefix" => "edge.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayCapabilityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayCapabilityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoggingOptions"
        o.http_method = "GET"
        o.http_request_uri = "/logging"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePortal"
        o.http_method = "GET"
        o.http_request_uri = "/portals/{portalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProject"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{projectId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAssets"
        o.http_method = "POST"
        o.http_request_uri = "/assets/{assetId}/disassociate"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:get_asset_property_aggregates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssetPropertyAggregates"
        o.http_method = "GET"
        o.http_request_uri = "/properties/aggregates"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAssetPropertyAggregatesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssetPropertyAggregatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_asset_property_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssetPropertyValue"
        o.http_method = "GET"
        o.http_request_uri = "/properties/latest"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAssetPropertyValueRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssetPropertyValueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_asset_property_value_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssetPropertyValueHistory"
        o.http_method = "GET"
        o.http_request_uri = "/properties/history"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAssetPropertyValueHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssetPropertyValueHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_access_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/access-policies"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAccessPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPoliciesResponse)
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

      api.add_operation(:list_asset_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetModels"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssetModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetModelsResponse)
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

      api.add_operation(:list_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssets"
        o.http_method = "GET"
        o.http_request_uri = "/assets"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associated_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedAssets"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}/hierarchies"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dashboards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDashboards"
        o.http_method = "GET"
        o.http_request_uri = "/dashboards"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDashboardsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDashboardsResponse)
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

      api.add_operation(:list_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGateways"
        o.http_method = "GET"
        o.http_request_uri = "/20200301/gateways"
        o.endpoint_pattern = {
          "hostPrefix" => "edge.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewaysResponse)
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

      api.add_operation(:list_portals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortals"
        o.http_method = "GET"
        o.http_request_uri = "/portals"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListPortalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPortalsResponse)
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

      api.add_operation(:list_project_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjectAssets"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{projectId}/assets"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListProjectAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectAssetsResponse)
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

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "GET"
        o.http_request_uri = "/projects"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResponse)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLoggingOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/logging"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/access-policies/{accessPolicyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAsset"
        o.http_method = "PUT"
        o.http_request_uri = "/assets/{assetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_asset_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssetModel"
        o.http_method = "PUT"
        o.http_request_uri = "/asset-models/{assetModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAssetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_asset_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssetProperty"
        o.http_method = "PUT"
        o.http_request_uri = "/assets/{assetId}/properties/{propertyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "model.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAssetPropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDashboard"
        o.http_method = "PUT"
        o.http_request_uri = "/dashboards/{dashboardId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGateway"
        o.http_method = "PUT"
        o.http_request_uri = "/20200301/gateways/{gatewayId}"
        o.endpoint_pattern = {
          "hostPrefix" => "edge.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_gateway_capability_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayCapabilityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/20200301/gateways/{gatewayId}/capability"
        o.endpoint_pattern = {
          "hostPrefix" => "edge.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayCapabilityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayCapabilityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePortal"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "PUT"
        o.http_request_uri = "/projects/{projectId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
