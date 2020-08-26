# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Appflow
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessKeyId = Shapes::StringShape.new(name: 'AccessKeyId')
    AccessToken = Shapes::StringShape.new(name: 'AccessToken')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AggregationConfig = Shapes::StructureShape.new(name: 'AggregationConfig')
    AggregationType = Shapes::StringShape.new(name: 'AggregationType')
    AmplitudeConnectorOperator = Shapes::StringShape.new(name: 'AmplitudeConnectorOperator')
    AmplitudeConnectorProfileCredentials = Shapes::StructureShape.new(name: 'AmplitudeConnectorProfileCredentials')
    AmplitudeConnectorProfileProperties = Shapes::StructureShape.new(name: 'AmplitudeConnectorProfileProperties')
    AmplitudeMetadata = Shapes::StructureShape.new(name: 'AmplitudeMetadata')
    AmplitudeSourceProperties = Shapes::StructureShape.new(name: 'AmplitudeSourceProperties')
    ApiKey = Shapes::StringShape.new(name: 'ApiKey')
    ApiSecretKey = Shapes::StringShape.new(name: 'ApiSecretKey')
    ApiToken = Shapes::StringShape.new(name: 'ApiToken')
    ApplicationKey = Shapes::StringShape.new(name: 'ApplicationKey')
    AuthCode = Shapes::StringShape.new(name: 'AuthCode')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    BucketPrefix = Shapes::StringShape.new(name: 'BucketPrefix')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientSecret = Shapes::StringShape.new(name: 'ClientSecret')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionMode = Shapes::StringShape.new(name: 'ConnectionMode')
    ConnectorAuthenticationException = Shapes::StructureShape.new(name: 'ConnectorAuthenticationException')
    ConnectorConfiguration = Shapes::StructureShape.new(name: 'ConnectorConfiguration')
    ConnectorConfigurationsMap = Shapes::MapShape.new(name: 'ConnectorConfigurationsMap')
    ConnectorEntity = Shapes::StructureShape.new(name: 'ConnectorEntity')
    ConnectorEntityField = Shapes::StructureShape.new(name: 'ConnectorEntityField')
    ConnectorEntityFieldList = Shapes::ListShape.new(name: 'ConnectorEntityFieldList')
    ConnectorEntityList = Shapes::ListShape.new(name: 'ConnectorEntityList')
    ConnectorEntityMap = Shapes::MapShape.new(name: 'ConnectorEntityMap')
    ConnectorMetadata = Shapes::StructureShape.new(name: 'ConnectorMetadata')
    ConnectorOAuthRequest = Shapes::StructureShape.new(name: 'ConnectorOAuthRequest')
    ConnectorOperator = Shapes::StructureShape.new(name: 'ConnectorOperator')
    ConnectorProfile = Shapes::StructureShape.new(name: 'ConnectorProfile')
    ConnectorProfileArn = Shapes::StringShape.new(name: 'ConnectorProfileArn')
    ConnectorProfileConfig = Shapes::StructureShape.new(name: 'ConnectorProfileConfig')
    ConnectorProfileCredentials = Shapes::StructureShape.new(name: 'ConnectorProfileCredentials')
    ConnectorProfileDetailList = Shapes::ListShape.new(name: 'ConnectorProfileDetailList')
    ConnectorProfileName = Shapes::StringShape.new(name: 'ConnectorProfileName')
    ConnectorProfileNameList = Shapes::ListShape.new(name: 'ConnectorProfileNameList')
    ConnectorProfileProperties = Shapes::StructureShape.new(name: 'ConnectorProfileProperties')
    ConnectorServerException = Shapes::StructureShape.new(name: 'ConnectorServerException')
    ConnectorType = Shapes::StringShape.new(name: 'ConnectorType')
    ConnectorTypeList = Shapes::ListShape.new(name: 'ConnectorTypeList')
    CreateConnectorProfileRequest = Shapes::StructureShape.new(name: 'CreateConnectorProfileRequest')
    CreateConnectorProfileResponse = Shapes::StructureShape.new(name: 'CreateConnectorProfileResponse')
    CreateFlowRequest = Shapes::StructureShape.new(name: 'CreateFlowRequest')
    CreateFlowResponse = Shapes::StructureShape.new(name: 'CreateFlowResponse')
    CreatedBy = Shapes::StringShape.new(name: 'CreatedBy')
    DataPullMode = Shapes::StringShape.new(name: 'DataPullMode')
    DatabaseUrl = Shapes::StringShape.new(name: 'DatabaseUrl')
    DatadogConnectorOperator = Shapes::StringShape.new(name: 'DatadogConnectorOperator')
    DatadogConnectorProfileCredentials = Shapes::StructureShape.new(name: 'DatadogConnectorProfileCredentials')
    DatadogConnectorProfileProperties = Shapes::StructureShape.new(name: 'DatadogConnectorProfileProperties')
    DatadogMetadata = Shapes::StructureShape.new(name: 'DatadogMetadata')
    DatadogSourceProperties = Shapes::StructureShape.new(name: 'DatadogSourceProperties')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteConnectorProfileRequest = Shapes::StructureShape.new(name: 'DeleteConnectorProfileRequest')
    DeleteConnectorProfileResponse = Shapes::StructureShape.new(name: 'DeleteConnectorProfileResponse')
    DeleteFlowRequest = Shapes::StructureShape.new(name: 'DeleteFlowRequest')
    DeleteFlowResponse = Shapes::StructureShape.new(name: 'DeleteFlowResponse')
    DescribeConnectorEntityRequest = Shapes::StructureShape.new(name: 'DescribeConnectorEntityRequest')
    DescribeConnectorEntityResponse = Shapes::StructureShape.new(name: 'DescribeConnectorEntityResponse')
    DescribeConnectorProfilesRequest = Shapes::StructureShape.new(name: 'DescribeConnectorProfilesRequest')
    DescribeConnectorProfilesResponse = Shapes::StructureShape.new(name: 'DescribeConnectorProfilesResponse')
    DescribeConnectorsRequest = Shapes::StructureShape.new(name: 'DescribeConnectorsRequest')
    DescribeConnectorsResponse = Shapes::StructureShape.new(name: 'DescribeConnectorsResponse')
    DescribeFlowExecutionRecordsRequest = Shapes::StructureShape.new(name: 'DescribeFlowExecutionRecordsRequest')
    DescribeFlowExecutionRecordsResponse = Shapes::StructureShape.new(name: 'DescribeFlowExecutionRecordsResponse')
    DescribeFlowRequest = Shapes::StructureShape.new(name: 'DescribeFlowRequest')
    DescribeFlowResponse = Shapes::StructureShape.new(name: 'DescribeFlowResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DestinationConnectorProperties = Shapes::StructureShape.new(name: 'DestinationConnectorProperties')
    DestinationField = Shapes::StringShape.new(name: 'DestinationField')
    DestinationFieldProperties = Shapes::StructureShape.new(name: 'DestinationFieldProperties')
    DestinationFlowConfig = Shapes::StructureShape.new(name: 'DestinationFlowConfig')
    DestinationFlowConfigList = Shapes::ListShape.new(name: 'DestinationFlowConfigList')
    DynatraceConnectorOperator = Shapes::StringShape.new(name: 'DynatraceConnectorOperator')
    DynatraceConnectorProfileCredentials = Shapes::StructureShape.new(name: 'DynatraceConnectorProfileCredentials')
    DynatraceConnectorProfileProperties = Shapes::StructureShape.new(name: 'DynatraceConnectorProfileProperties')
    DynatraceMetadata = Shapes::StructureShape.new(name: 'DynatraceMetadata')
    DynatraceSourceProperties = Shapes::StructureShape.new(name: 'DynatraceSourceProperties')
    EntitiesPath = Shapes::StringShape.new(name: 'EntitiesPath')
    ErrorHandlingConfig = Shapes::StructureShape.new(name: 'ErrorHandlingConfig')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventBridgeDestinationProperties = Shapes::StructureShape.new(name: 'EventBridgeDestinationProperties')
    EventBridgeMetadata = Shapes::StructureShape.new(name: 'EventBridgeMetadata')
    ExecutionDetails = Shapes::StructureShape.new(name: 'ExecutionDetails')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    ExecutionMessage = Shapes::StringShape.new(name: 'ExecutionMessage')
    ExecutionRecord = Shapes::StructureShape.new(name: 'ExecutionRecord')
    ExecutionResult = Shapes::StructureShape.new(name: 'ExecutionResult')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    FieldType = Shapes::StringShape.new(name: 'FieldType')
    FieldTypeDetails = Shapes::StructureShape.new(name: 'FieldTypeDetails')
    FileType = Shapes::StringShape.new(name: 'FileType')
    FilterOperatorList = Shapes::ListShape.new(name: 'FilterOperatorList')
    FlowArn = Shapes::StringShape.new(name: 'FlowArn')
    FlowDefinition = Shapes::StructureShape.new(name: 'FlowDefinition')
    FlowDescription = Shapes::StringShape.new(name: 'FlowDescription')
    FlowExecutionList = Shapes::ListShape.new(name: 'FlowExecutionList')
    FlowList = Shapes::ListShape.new(name: 'FlowList')
    FlowName = Shapes::StringShape.new(name: 'FlowName')
    FlowStatus = Shapes::StringShape.new(name: 'FlowStatus')
    FlowStatusMessage = Shapes::StringShape.new(name: 'FlowStatusMessage')
    GoogleAnalyticsConnectorOperator = Shapes::StringShape.new(name: 'GoogleAnalyticsConnectorOperator')
    GoogleAnalyticsConnectorProfileCredentials = Shapes::StructureShape.new(name: 'GoogleAnalyticsConnectorProfileCredentials')
    GoogleAnalyticsConnectorProfileProperties = Shapes::StructureShape.new(name: 'GoogleAnalyticsConnectorProfileProperties')
    GoogleAnalyticsMetadata = Shapes::StructureShape.new(name: 'GoogleAnalyticsMetadata')
    GoogleAnalyticsSourceProperties = Shapes::StructureShape.new(name: 'GoogleAnalyticsSourceProperties')
    Group = Shapes::StringShape.new(name: 'Group')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    InforNexusConnectorOperator = Shapes::StringShape.new(name: 'InforNexusConnectorOperator')
    InforNexusConnectorProfileCredentials = Shapes::StructureShape.new(name: 'InforNexusConnectorProfileCredentials')
    InforNexusConnectorProfileProperties = Shapes::StructureShape.new(name: 'InforNexusConnectorProfileProperties')
    InforNexusMetadata = Shapes::StructureShape.new(name: 'InforNexusMetadata')
    InforNexusSourceProperties = Shapes::StructureShape.new(name: 'InforNexusSourceProperties')
    InstanceUrl = Shapes::StringShape.new(name: 'InstanceUrl')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KMSArn = Shapes::StringShape.new(name: 'KMSArn')
    Key = Shapes::StringShape.new(name: 'Key')
    Label = Shapes::StringShape.new(name: 'Label')
    ListConnectorEntitiesRequest = Shapes::StructureShape.new(name: 'ListConnectorEntitiesRequest')
    ListConnectorEntitiesResponse = Shapes::StructureShape.new(name: 'ListConnectorEntitiesResponse')
    ListFlowsRequest = Shapes::StructureShape.new(name: 'ListFlowsRequest')
    ListFlowsResponse = Shapes::StructureShape.new(name: 'ListFlowsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MarketoConnectorOperator = Shapes::StringShape.new(name: 'MarketoConnectorOperator')
    MarketoConnectorProfileCredentials = Shapes::StructureShape.new(name: 'MarketoConnectorProfileCredentials')
    MarketoConnectorProfileProperties = Shapes::StructureShape.new(name: 'MarketoConnectorProfileProperties')
    MarketoMetadata = Shapes::StructureShape.new(name: 'MarketoMetadata')
    MarketoSourceProperties = Shapes::StructureShape.new(name: 'MarketoSourceProperties')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MostRecentExecutionMessage = Shapes::StringShape.new(name: 'MostRecentExecutionMessage')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OAuthScope = Shapes::StringShape.new(name: 'OAuthScope')
    OAuthScopeList = Shapes::ListShape.new(name: 'OAuthScopeList')
    Object = Shapes::StringShape.new(name: 'Object')
    Operator = Shapes::StringShape.new(name: 'Operator')
    OperatorPropertiesKeys = Shapes::StringShape.new(name: 'OperatorPropertiesKeys')
    Password = Shapes::StringShape.new(name: 'Password')
    PrefixConfig = Shapes::StructureShape.new(name: 'PrefixConfig')
    PrefixFormat = Shapes::StringShape.new(name: 'PrefixFormat')
    PrefixType = Shapes::StringShape.new(name: 'PrefixType')
    PrivateLinkServiceName = Shapes::StringShape.new(name: 'PrivateLinkServiceName')
    Property = Shapes::StringShape.new(name: 'Property')
    RedirectUri = Shapes::StringShape.new(name: 'RedirectUri')
    RedshiftConnectorProfileCredentials = Shapes::StructureShape.new(name: 'RedshiftConnectorProfileCredentials')
    RedshiftConnectorProfileProperties = Shapes::StructureShape.new(name: 'RedshiftConnectorProfileProperties')
    RedshiftDestinationProperties = Shapes::StructureShape.new(name: 'RedshiftDestinationProperties')
    RedshiftMetadata = Shapes::StructureShape.new(name: 'RedshiftMetadata')
    RefreshToken = Shapes::StringShape.new(name: 'RefreshToken')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3ConnectorOperator = Shapes::StringShape.new(name: 'S3ConnectorOperator')
    S3DestinationProperties = Shapes::StructureShape.new(name: 'S3DestinationProperties')
    S3Metadata = Shapes::StructureShape.new(name: 'S3Metadata')
    S3OutputFormatConfig = Shapes::StructureShape.new(name: 'S3OutputFormatConfig')
    S3SourceProperties = Shapes::StructureShape.new(name: 'S3SourceProperties')
    SalesforceConnectorOperator = Shapes::StringShape.new(name: 'SalesforceConnectorOperator')
    SalesforceConnectorProfileCredentials = Shapes::StructureShape.new(name: 'SalesforceConnectorProfileCredentials')
    SalesforceConnectorProfileProperties = Shapes::StructureShape.new(name: 'SalesforceConnectorProfileProperties')
    SalesforceDestinationProperties = Shapes::StructureShape.new(name: 'SalesforceDestinationProperties')
    SalesforceMetadata = Shapes::StructureShape.new(name: 'SalesforceMetadata')
    SalesforceSourceProperties = Shapes::StructureShape.new(name: 'SalesforceSourceProperties')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduleFrequencyType = Shapes::StringShape.new(name: 'ScheduleFrequencyType')
    ScheduledTriggerProperties = Shapes::StructureShape.new(name: 'ScheduledTriggerProperties')
    SchedulingFrequencyTypeList = Shapes::ListShape.new(name: 'SchedulingFrequencyTypeList')
    SecretKey = Shapes::StringShape.new(name: 'SecretKey')
    ServiceNowConnectorOperator = Shapes::StringShape.new(name: 'ServiceNowConnectorOperator')
    ServiceNowConnectorProfileCredentials = Shapes::StructureShape.new(name: 'ServiceNowConnectorProfileCredentials')
    ServiceNowConnectorProfileProperties = Shapes::StructureShape.new(name: 'ServiceNowConnectorProfileProperties')
    ServiceNowMetadata = Shapes::StructureShape.new(name: 'ServiceNowMetadata')
    ServiceNowSourceProperties = Shapes::StructureShape.new(name: 'ServiceNowSourceProperties')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SingularConnectorOperator = Shapes::StringShape.new(name: 'SingularConnectorOperator')
    SingularConnectorProfileCredentials = Shapes::StructureShape.new(name: 'SingularConnectorProfileCredentials')
    SingularConnectorProfileProperties = Shapes::StructureShape.new(name: 'SingularConnectorProfileProperties')
    SingularMetadata = Shapes::StructureShape.new(name: 'SingularMetadata')
    SingularSourceProperties = Shapes::StructureShape.new(name: 'SingularSourceProperties')
    SlackConnectorOperator = Shapes::StringShape.new(name: 'SlackConnectorOperator')
    SlackConnectorProfileCredentials = Shapes::StructureShape.new(name: 'SlackConnectorProfileCredentials')
    SlackConnectorProfileProperties = Shapes::StructureShape.new(name: 'SlackConnectorProfileProperties')
    SlackMetadata = Shapes::StructureShape.new(name: 'SlackMetadata')
    SlackSourceProperties = Shapes::StructureShape.new(name: 'SlackSourceProperties')
    SnowflakeConnectorProfileCredentials = Shapes::StructureShape.new(name: 'SnowflakeConnectorProfileCredentials')
    SnowflakeConnectorProfileProperties = Shapes::StructureShape.new(name: 'SnowflakeConnectorProfileProperties')
    SnowflakeDestinationProperties = Shapes::StructureShape.new(name: 'SnowflakeDestinationProperties')
    SnowflakeMetadata = Shapes::StructureShape.new(name: 'SnowflakeMetadata')
    SourceConnectorProperties = Shapes::StructureShape.new(name: 'SourceConnectorProperties')
    SourceFieldProperties = Shapes::StructureShape.new(name: 'SourceFieldProperties')
    SourceFields = Shapes::ListShape.new(name: 'SourceFields')
    SourceFlowConfig = Shapes::StructureShape.new(name: 'SourceFlowConfig')
    Stage = Shapes::StringShape.new(name: 'Stage')
    StartFlowRequest = Shapes::StructureShape.new(name: 'StartFlowRequest')
    StartFlowResponse = Shapes::StructureShape.new(name: 'StartFlowResponse')
    StopFlowRequest = Shapes::StructureShape.new(name: 'StopFlowRequest')
    StopFlowResponse = Shapes::StructureShape.new(name: 'StopFlowResponse')
    String = Shapes::StringShape.new(name: 'String')
    SupportedFieldTypeDetails = Shapes::StructureShape.new(name: 'SupportedFieldTypeDetails')
    SupportedValueList = Shapes::ListShape.new(name: 'SupportedValueList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Task = Shapes::StructureShape.new(name: 'Task')
    TaskPropertiesMap = Shapes::MapShape.new(name: 'TaskPropertiesMap')
    TaskType = Shapes::StringShape.new(name: 'TaskType')
    Tasks = Shapes::ListShape.new(name: 'Tasks')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TrendmicroConnectorOperator = Shapes::StringShape.new(name: 'TrendmicroConnectorOperator')
    TrendmicroConnectorProfileCredentials = Shapes::StructureShape.new(name: 'TrendmicroConnectorProfileCredentials')
    TrendmicroConnectorProfileProperties = Shapes::StructureShape.new(name: 'TrendmicroConnectorProfileProperties')
    TrendmicroMetadata = Shapes::StructureShape.new(name: 'TrendmicroMetadata')
    TrendmicroSourceProperties = Shapes::StructureShape.new(name: 'TrendmicroSourceProperties')
    TriggerConfig = Shapes::StructureShape.new(name: 'TriggerConfig')
    TriggerProperties = Shapes::StructureShape.new(name: 'TriggerProperties')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    TriggerTypeList = Shapes::ListShape.new(name: 'TriggerTypeList')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConnectorProfileRequest = Shapes::StructureShape.new(name: 'UpdateConnectorProfileRequest')
    UpdateConnectorProfileResponse = Shapes::StructureShape.new(name: 'UpdateConnectorProfileResponse')
    UpdateFlowRequest = Shapes::StructureShape.new(name: 'UpdateFlowRequest')
    UpdateFlowResponse = Shapes::StructureShape.new(name: 'UpdateFlowResponse')
    UpdatedBy = Shapes::StringShape.new(name: 'UpdatedBy')
    Username = Shapes::StringShape.new(name: 'Username')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    VeevaConnectorOperator = Shapes::StringShape.new(name: 'VeevaConnectorOperator')
    VeevaConnectorProfileCredentials = Shapes::StructureShape.new(name: 'VeevaConnectorProfileCredentials')
    VeevaConnectorProfileProperties = Shapes::StructureShape.new(name: 'VeevaConnectorProfileProperties')
    VeevaMetadata = Shapes::StructureShape.new(name: 'VeevaMetadata')
    VeevaSourceProperties = Shapes::StructureShape.new(name: 'VeevaSourceProperties')
    Warehouse = Shapes::StringShape.new(name: 'Warehouse')
    ZendeskConnectorOperator = Shapes::StringShape.new(name: 'ZendeskConnectorOperator')
    ZendeskConnectorProfileCredentials = Shapes::StructureShape.new(name: 'ZendeskConnectorProfileCredentials')
    ZendeskConnectorProfileProperties = Shapes::StructureShape.new(name: 'ZendeskConnectorProfileProperties')
    ZendeskMetadata = Shapes::StructureShape.new(name: 'ZendeskMetadata')
    ZendeskSourceProperties = Shapes::StructureShape.new(name: 'ZendeskSourceProperties')

    AggregationConfig.add_member(:aggregation_type, Shapes::ShapeRef.new(shape: AggregationType, location_name: "aggregationType"))
    AggregationConfig.struct_class = Types::AggregationConfig

    AmplitudeConnectorProfileCredentials.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKey, required: true, location_name: "apiKey"))
    AmplitudeConnectorProfileCredentials.add_member(:secret_key, Shapes::ShapeRef.new(shape: SecretKey, required: true, location_name: "secretKey"))
    AmplitudeConnectorProfileCredentials.struct_class = Types::AmplitudeConnectorProfileCredentials

    AmplitudeConnectorProfileProperties.struct_class = Types::AmplitudeConnectorProfileProperties

    AmplitudeMetadata.struct_class = Types::AmplitudeMetadata

    AmplitudeSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    AmplitudeSourceProperties.struct_class = Types::AmplitudeSourceProperties

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectorAuthenticationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConnectorAuthenticationException.struct_class = Types::ConnectorAuthenticationException

    ConnectorConfiguration.add_member(:can_use_as_source, Shapes::ShapeRef.new(shape: Boolean, location_name: "canUseAsSource"))
    ConnectorConfiguration.add_member(:can_use_as_destination, Shapes::ShapeRef.new(shape: Boolean, location_name: "canUseAsDestination"))
    ConnectorConfiguration.add_member(:supported_destination_connectors, Shapes::ShapeRef.new(shape: ConnectorTypeList, location_name: "supportedDestinationConnectors"))
    ConnectorConfiguration.add_member(:supported_scheduling_frequencies, Shapes::ShapeRef.new(shape: SchedulingFrequencyTypeList, location_name: "supportedSchedulingFrequencies"))
    ConnectorConfiguration.add_member(:is_private_link_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrivateLinkEnabled"))
    ConnectorConfiguration.add_member(:is_private_link_endpoint_url_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrivateLinkEndpointUrlRequired"))
    ConnectorConfiguration.add_member(:supported_trigger_types, Shapes::ShapeRef.new(shape: TriggerTypeList, location_name: "supportedTriggerTypes"))
    ConnectorConfiguration.add_member(:connector_metadata, Shapes::ShapeRef.new(shape: ConnectorMetadata, location_name: "connectorMetadata"))
    ConnectorConfiguration.struct_class = Types::ConnectorConfiguration

    ConnectorConfigurationsMap.key = Shapes::ShapeRef.new(shape: ConnectorType)
    ConnectorConfigurationsMap.value = Shapes::ShapeRef.new(shape: ConnectorConfiguration)

    ConnectorEntity.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ConnectorEntity.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "label"))
    ConnectorEntity.add_member(:has_nested_entities, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasNestedEntities"))
    ConnectorEntity.struct_class = Types::ConnectorEntity

    ConnectorEntityField.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "identifier"))
    ConnectorEntityField.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "label"))
    ConnectorEntityField.add_member(:supported_field_type_details, Shapes::ShapeRef.new(shape: SupportedFieldTypeDetails, location_name: "supportedFieldTypeDetails"))
    ConnectorEntityField.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ConnectorEntityField.add_member(:source_properties, Shapes::ShapeRef.new(shape: SourceFieldProperties, location_name: "sourceProperties"))
    ConnectorEntityField.add_member(:destination_properties, Shapes::ShapeRef.new(shape: DestinationFieldProperties, location_name: "destinationProperties"))
    ConnectorEntityField.struct_class = Types::ConnectorEntityField

    ConnectorEntityFieldList.member = Shapes::ShapeRef.new(shape: ConnectorEntityField)

    ConnectorEntityList.member = Shapes::ShapeRef.new(shape: ConnectorEntity)

    ConnectorEntityMap.key = Shapes::ShapeRef.new(shape: Group)
    ConnectorEntityMap.value = Shapes::ShapeRef.new(shape: ConnectorEntityList)

    ConnectorMetadata.add_member(:amplitude, Shapes::ShapeRef.new(shape: AmplitudeMetadata, location_name: "Amplitude"))
    ConnectorMetadata.add_member(:datadog, Shapes::ShapeRef.new(shape: DatadogMetadata, location_name: "Datadog"))
    ConnectorMetadata.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceMetadata, location_name: "Dynatrace"))
    ConnectorMetadata.add_member(:google_analytics, Shapes::ShapeRef.new(shape: GoogleAnalyticsMetadata, location_name: "GoogleAnalytics"))
    ConnectorMetadata.add_member(:infor_nexus, Shapes::ShapeRef.new(shape: InforNexusMetadata, location_name: "InforNexus"))
    ConnectorMetadata.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoMetadata, location_name: "Marketo"))
    ConnectorMetadata.add_member(:redshift, Shapes::ShapeRef.new(shape: RedshiftMetadata, location_name: "Redshift"))
    ConnectorMetadata.add_member(:s3, Shapes::ShapeRef.new(shape: S3Metadata, location_name: "S3"))
    ConnectorMetadata.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceMetadata, location_name: "Salesforce"))
    ConnectorMetadata.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowMetadata, location_name: "ServiceNow"))
    ConnectorMetadata.add_member(:singular, Shapes::ShapeRef.new(shape: SingularMetadata, location_name: "Singular"))
    ConnectorMetadata.add_member(:slack, Shapes::ShapeRef.new(shape: SlackMetadata, location_name: "Slack"))
    ConnectorMetadata.add_member(:snowflake, Shapes::ShapeRef.new(shape: SnowflakeMetadata, location_name: "Snowflake"))
    ConnectorMetadata.add_member(:trendmicro, Shapes::ShapeRef.new(shape: TrendmicroMetadata, location_name: "Trendmicro"))
    ConnectorMetadata.add_member(:veeva, Shapes::ShapeRef.new(shape: VeevaMetadata, location_name: "Veeva"))
    ConnectorMetadata.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskMetadata, location_name: "Zendesk"))
    ConnectorMetadata.add_member(:event_bridge, Shapes::ShapeRef.new(shape: EventBridgeMetadata, location_name: "EventBridge"))
    ConnectorMetadata.struct_class = Types::ConnectorMetadata

    ConnectorOAuthRequest.add_member(:auth_code, Shapes::ShapeRef.new(shape: AuthCode, location_name: "authCode"))
    ConnectorOAuthRequest.add_member(:redirect_uri, Shapes::ShapeRef.new(shape: RedirectUri, location_name: "redirectUri"))
    ConnectorOAuthRequest.struct_class = Types::ConnectorOAuthRequest

    ConnectorOperator.add_member(:amplitude, Shapes::ShapeRef.new(shape: AmplitudeConnectorOperator, location_name: "Amplitude"))
    ConnectorOperator.add_member(:datadog, Shapes::ShapeRef.new(shape: DatadogConnectorOperator, location_name: "Datadog"))
    ConnectorOperator.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceConnectorOperator, location_name: "Dynatrace"))
    ConnectorOperator.add_member(:google_analytics, Shapes::ShapeRef.new(shape: GoogleAnalyticsConnectorOperator, location_name: "GoogleAnalytics"))
    ConnectorOperator.add_member(:infor_nexus, Shapes::ShapeRef.new(shape: InforNexusConnectorOperator, location_name: "InforNexus"))
    ConnectorOperator.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoConnectorOperator, location_name: "Marketo"))
    ConnectorOperator.add_member(:s3, Shapes::ShapeRef.new(shape: S3ConnectorOperator, location_name: "S3"))
    ConnectorOperator.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceConnectorOperator, location_name: "Salesforce"))
    ConnectorOperator.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowConnectorOperator, location_name: "ServiceNow"))
    ConnectorOperator.add_member(:singular, Shapes::ShapeRef.new(shape: SingularConnectorOperator, location_name: "Singular"))
    ConnectorOperator.add_member(:slack, Shapes::ShapeRef.new(shape: SlackConnectorOperator, location_name: "Slack"))
    ConnectorOperator.add_member(:trendmicro, Shapes::ShapeRef.new(shape: TrendmicroConnectorOperator, location_name: "Trendmicro"))
    ConnectorOperator.add_member(:veeva, Shapes::ShapeRef.new(shape: VeevaConnectorOperator, location_name: "Veeva"))
    ConnectorOperator.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskConnectorOperator, location_name: "Zendesk"))
    ConnectorOperator.struct_class = Types::ConnectorOperator

    ConnectorProfile.add_member(:connector_profile_arn, Shapes::ShapeRef.new(shape: ConnectorProfileArn, location_name: "connectorProfileArn"))
    ConnectorProfile.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    ConnectorProfile.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    ConnectorProfile.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, location_name: "connectionMode"))
    ConnectorProfile.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "credentialsArn"))
    ConnectorProfile.add_member(:connector_profile_properties, Shapes::ShapeRef.new(shape: ConnectorProfileProperties, location_name: "connectorProfileProperties"))
    ConnectorProfile.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    ConnectorProfile.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedAt"))
    ConnectorProfile.struct_class = Types::ConnectorProfile

    ConnectorProfileConfig.add_member(:connector_profile_properties, Shapes::ShapeRef.new(shape: ConnectorProfileProperties, required: true, location_name: "connectorProfileProperties"))
    ConnectorProfileConfig.add_member(:connector_profile_credentials, Shapes::ShapeRef.new(shape: ConnectorProfileCredentials, required: true, location_name: "connectorProfileCredentials"))
    ConnectorProfileConfig.struct_class = Types::ConnectorProfileConfig

    ConnectorProfileCredentials.add_member(:amplitude, Shapes::ShapeRef.new(shape: AmplitudeConnectorProfileCredentials, location_name: "Amplitude"))
    ConnectorProfileCredentials.add_member(:datadog, Shapes::ShapeRef.new(shape: DatadogConnectorProfileCredentials, location_name: "Datadog"))
    ConnectorProfileCredentials.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceConnectorProfileCredentials, location_name: "Dynatrace"))
    ConnectorProfileCredentials.add_member(:google_analytics, Shapes::ShapeRef.new(shape: GoogleAnalyticsConnectorProfileCredentials, location_name: "GoogleAnalytics"))
    ConnectorProfileCredentials.add_member(:infor_nexus, Shapes::ShapeRef.new(shape: InforNexusConnectorProfileCredentials, location_name: "InforNexus"))
    ConnectorProfileCredentials.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoConnectorProfileCredentials, location_name: "Marketo"))
    ConnectorProfileCredentials.add_member(:redshift, Shapes::ShapeRef.new(shape: RedshiftConnectorProfileCredentials, location_name: "Redshift"))
    ConnectorProfileCredentials.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceConnectorProfileCredentials, location_name: "Salesforce"))
    ConnectorProfileCredentials.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowConnectorProfileCredentials, location_name: "ServiceNow"))
    ConnectorProfileCredentials.add_member(:singular, Shapes::ShapeRef.new(shape: SingularConnectorProfileCredentials, location_name: "Singular"))
    ConnectorProfileCredentials.add_member(:slack, Shapes::ShapeRef.new(shape: SlackConnectorProfileCredentials, location_name: "Slack"))
    ConnectorProfileCredentials.add_member(:snowflake, Shapes::ShapeRef.new(shape: SnowflakeConnectorProfileCredentials, location_name: "Snowflake"))
    ConnectorProfileCredentials.add_member(:trendmicro, Shapes::ShapeRef.new(shape: TrendmicroConnectorProfileCredentials, location_name: "Trendmicro"))
    ConnectorProfileCredentials.add_member(:veeva, Shapes::ShapeRef.new(shape: VeevaConnectorProfileCredentials, location_name: "Veeva"))
    ConnectorProfileCredentials.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskConnectorProfileCredentials, location_name: "Zendesk"))
    ConnectorProfileCredentials.struct_class = Types::ConnectorProfileCredentials

    ConnectorProfileDetailList.member = Shapes::ShapeRef.new(shape: ConnectorProfile)

    ConnectorProfileNameList.member = Shapes::ShapeRef.new(shape: ConnectorProfileName)

    ConnectorProfileProperties.add_member(:amplitude, Shapes::ShapeRef.new(shape: AmplitudeConnectorProfileProperties, location_name: "Amplitude"))
    ConnectorProfileProperties.add_member(:datadog, Shapes::ShapeRef.new(shape: DatadogConnectorProfileProperties, location_name: "Datadog"))
    ConnectorProfileProperties.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceConnectorProfileProperties, location_name: "Dynatrace"))
    ConnectorProfileProperties.add_member(:google_analytics, Shapes::ShapeRef.new(shape: GoogleAnalyticsConnectorProfileProperties, location_name: "GoogleAnalytics"))
    ConnectorProfileProperties.add_member(:infor_nexus, Shapes::ShapeRef.new(shape: InforNexusConnectorProfileProperties, location_name: "InforNexus"))
    ConnectorProfileProperties.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoConnectorProfileProperties, location_name: "Marketo"))
    ConnectorProfileProperties.add_member(:redshift, Shapes::ShapeRef.new(shape: RedshiftConnectorProfileProperties, location_name: "Redshift"))
    ConnectorProfileProperties.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceConnectorProfileProperties, location_name: "Salesforce"))
    ConnectorProfileProperties.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowConnectorProfileProperties, location_name: "ServiceNow"))
    ConnectorProfileProperties.add_member(:singular, Shapes::ShapeRef.new(shape: SingularConnectorProfileProperties, location_name: "Singular"))
    ConnectorProfileProperties.add_member(:slack, Shapes::ShapeRef.new(shape: SlackConnectorProfileProperties, location_name: "Slack"))
    ConnectorProfileProperties.add_member(:snowflake, Shapes::ShapeRef.new(shape: SnowflakeConnectorProfileProperties, location_name: "Snowflake"))
    ConnectorProfileProperties.add_member(:trendmicro, Shapes::ShapeRef.new(shape: TrendmicroConnectorProfileProperties, location_name: "Trendmicro"))
    ConnectorProfileProperties.add_member(:veeva, Shapes::ShapeRef.new(shape: VeevaConnectorProfileProperties, location_name: "Veeva"))
    ConnectorProfileProperties.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskConnectorProfileProperties, location_name: "Zendesk"))
    ConnectorProfileProperties.struct_class = Types::ConnectorProfileProperties

    ConnectorServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConnectorServerException.struct_class = Types::ConnectorServerException

    ConnectorTypeList.member = Shapes::ShapeRef.new(shape: ConnectorType)

    CreateConnectorProfileRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, required: true, location_name: "connectorProfileName"))
    CreateConnectorProfileRequest.add_member(:kms_arn, Shapes::ShapeRef.new(shape: KMSArn, location_name: "kmsArn"))
    CreateConnectorProfileRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, required: true, location_name: "connectorType"))
    CreateConnectorProfileRequest.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, required: true, location_name: "connectionMode"))
    CreateConnectorProfileRequest.add_member(:connector_profile_config, Shapes::ShapeRef.new(shape: ConnectorProfileConfig, required: true, location_name: "connectorProfileConfig"))
    CreateConnectorProfileRequest.struct_class = Types::CreateConnectorProfileRequest

    CreateConnectorProfileResponse.add_member(:connector_profile_arn, Shapes::ShapeRef.new(shape: ConnectorProfileArn, location_name: "connectorProfileArn"))
    CreateConnectorProfileResponse.struct_class = Types::CreateConnectorProfileResponse

    CreateFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    CreateFlowRequest.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    CreateFlowRequest.add_member(:kms_arn, Shapes::ShapeRef.new(shape: KMSArn, location_name: "kmsArn"))
    CreateFlowRequest.add_member(:trigger_config, Shapes::ShapeRef.new(shape: TriggerConfig, required: true, location_name: "triggerConfig"))
    CreateFlowRequest.add_member(:source_flow_config, Shapes::ShapeRef.new(shape: SourceFlowConfig, required: true, location_name: "sourceFlowConfig"))
    CreateFlowRequest.add_member(:destination_flow_config_list, Shapes::ShapeRef.new(shape: DestinationFlowConfigList, required: true, location_name: "destinationFlowConfigList"))
    CreateFlowRequest.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, required: true, location_name: "tasks"))
    CreateFlowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFlowRequest.struct_class = Types::CreateFlowRequest

    CreateFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    CreateFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    CreateFlowResponse.struct_class = Types::CreateFlowResponse

    DatadogConnectorProfileCredentials.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKey, required: true, location_name: "apiKey"))
    DatadogConnectorProfileCredentials.add_member(:application_key, Shapes::ShapeRef.new(shape: ApplicationKey, required: true, location_name: "applicationKey"))
    DatadogConnectorProfileCredentials.struct_class = Types::DatadogConnectorProfileCredentials

    DatadogConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    DatadogConnectorProfileProperties.struct_class = Types::DatadogConnectorProfileProperties

    DatadogMetadata.struct_class = Types::DatadogMetadata

    DatadogSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    DatadogSourceProperties.struct_class = Types::DatadogSourceProperties

    DeleteConnectorProfileRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, required: true, location_name: "connectorProfileName"))
    DeleteConnectorProfileRequest.add_member(:force_delete, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceDelete"))
    DeleteConnectorProfileRequest.struct_class = Types::DeleteConnectorProfileRequest

    DeleteConnectorProfileResponse.struct_class = Types::DeleteConnectorProfileResponse

    DeleteFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    DeleteFlowRequest.add_member(:force_delete, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceDelete"))
    DeleteFlowRequest.struct_class = Types::DeleteFlowRequest

    DeleteFlowResponse.struct_class = Types::DeleteFlowResponse

    DescribeConnectorEntityRequest.add_member(:connector_entity_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "connectorEntityName"))
    DescribeConnectorEntityRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    DescribeConnectorEntityRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    DescribeConnectorEntityRequest.struct_class = Types::DescribeConnectorEntityRequest

    DescribeConnectorEntityResponse.add_member(:connector_entity_fields, Shapes::ShapeRef.new(shape: ConnectorEntityFieldList, required: true, location_name: "connectorEntityFields"))
    DescribeConnectorEntityResponse.struct_class = Types::DescribeConnectorEntityResponse

    DescribeConnectorProfilesRequest.add_member(:connector_profile_names, Shapes::ShapeRef.new(shape: ConnectorProfileNameList, location_name: "connectorProfileNames"))
    DescribeConnectorProfilesRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    DescribeConnectorProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeConnectorProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConnectorProfilesRequest.struct_class = Types::DescribeConnectorProfilesRequest

    DescribeConnectorProfilesResponse.add_member(:connector_profile_details, Shapes::ShapeRef.new(shape: ConnectorProfileDetailList, location_name: "connectorProfileDetails"))
    DescribeConnectorProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConnectorProfilesResponse.struct_class = Types::DescribeConnectorProfilesResponse

    DescribeConnectorsRequest.add_member(:connector_types, Shapes::ShapeRef.new(shape: ConnectorTypeList, location_name: "connectorTypes"))
    DescribeConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConnectorsRequest.struct_class = Types::DescribeConnectorsRequest

    DescribeConnectorsResponse.add_member(:connector_configurations, Shapes::ShapeRef.new(shape: ConnectorConfigurationsMap, location_name: "connectorConfigurations"))
    DescribeConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConnectorsResponse.struct_class = Types::DescribeConnectorsResponse

    DescribeFlowExecutionRecordsRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    DescribeFlowExecutionRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeFlowExecutionRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeFlowExecutionRecordsRequest.struct_class = Types::DescribeFlowExecutionRecordsRequest

    DescribeFlowExecutionRecordsResponse.add_member(:flow_executions, Shapes::ShapeRef.new(shape: FlowExecutionList, location_name: "flowExecutions"))
    DescribeFlowExecutionRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeFlowExecutionRecordsResponse.struct_class = Types::DescribeFlowExecutionRecordsResponse

    DescribeFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    DescribeFlowRequest.struct_class = Types::DescribeFlowRequest

    DescribeFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    DescribeFlowResponse.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    DescribeFlowResponse.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, location_name: "flowName"))
    DescribeFlowResponse.add_member(:kms_arn, Shapes::ShapeRef.new(shape: KMSArn, location_name: "kmsArn"))
    DescribeFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    DescribeFlowResponse.add_member(:flow_status_message, Shapes::ShapeRef.new(shape: FlowStatusMessage, location_name: "flowStatusMessage"))
    DescribeFlowResponse.add_member(:source_flow_config, Shapes::ShapeRef.new(shape: SourceFlowConfig, location_name: "sourceFlowConfig"))
    DescribeFlowResponse.add_member(:destination_flow_config_list, Shapes::ShapeRef.new(shape: DestinationFlowConfigList, location_name: "destinationFlowConfigList"))
    DescribeFlowResponse.add_member(:last_run_execution_details, Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: "lastRunExecutionDetails"))
    DescribeFlowResponse.add_member(:trigger_config, Shapes::ShapeRef.new(shape: TriggerConfig, location_name: "triggerConfig"))
    DescribeFlowResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, location_name: "tasks"))
    DescribeFlowResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    DescribeFlowResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedAt"))
    DescribeFlowResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    DescribeFlowResponse.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "lastUpdatedBy"))
    DescribeFlowResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeFlowResponse.struct_class = Types::DescribeFlowResponse

    DestinationConnectorProperties.add_member(:redshift, Shapes::ShapeRef.new(shape: RedshiftDestinationProperties, location_name: "Redshift"))
    DestinationConnectorProperties.add_member(:s3, Shapes::ShapeRef.new(shape: S3DestinationProperties, location_name: "S3"))
    DestinationConnectorProperties.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceDestinationProperties, location_name: "Salesforce"))
    DestinationConnectorProperties.add_member(:snowflake, Shapes::ShapeRef.new(shape: SnowflakeDestinationProperties, location_name: "Snowflake"))
    DestinationConnectorProperties.add_member(:event_bridge, Shapes::ShapeRef.new(shape: EventBridgeDestinationProperties, location_name: "EventBridge"))
    DestinationConnectorProperties.struct_class = Types::DestinationConnectorProperties

    DestinationFieldProperties.add_member(:is_creatable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCreatable"))
    DestinationFieldProperties.add_member(:is_nullable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isNullable"))
    DestinationFieldProperties.add_member(:is_upsertable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isUpsertable"))
    DestinationFieldProperties.struct_class = Types::DestinationFieldProperties

    DestinationFlowConfig.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, required: true, location_name: "connectorType"))
    DestinationFlowConfig.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    DestinationFlowConfig.add_member(:destination_connector_properties, Shapes::ShapeRef.new(shape: DestinationConnectorProperties, required: true, location_name: "destinationConnectorProperties"))
    DestinationFlowConfig.struct_class = Types::DestinationFlowConfig

    DestinationFlowConfigList.member = Shapes::ShapeRef.new(shape: DestinationFlowConfig)

    DynatraceConnectorProfileCredentials.add_member(:api_token, Shapes::ShapeRef.new(shape: ApiToken, required: true, location_name: "apiToken"))
    DynatraceConnectorProfileCredentials.struct_class = Types::DynatraceConnectorProfileCredentials

    DynatraceConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    DynatraceConnectorProfileProperties.struct_class = Types::DynatraceConnectorProfileProperties

    DynatraceMetadata.struct_class = Types::DynatraceMetadata

    DynatraceSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    DynatraceSourceProperties.struct_class = Types::DynatraceSourceProperties

    ErrorHandlingConfig.add_member(:fail_on_first_destination_error, Shapes::ShapeRef.new(shape: Boolean, location_name: "failOnFirstDestinationError"))
    ErrorHandlingConfig.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    ErrorHandlingConfig.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName"))
    ErrorHandlingConfig.struct_class = Types::ErrorHandlingConfig

    ErrorInfo.add_member(:put_failures_count, Shapes::ShapeRef.new(shape: Long, location_name: "putFailuresCount"))
    ErrorInfo.add_member(:execution_message, Shapes::ShapeRef.new(shape: ExecutionMessage, location_name: "executionMessage"))
    ErrorInfo.struct_class = Types::ErrorInfo

    EventBridgeDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    EventBridgeDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    EventBridgeDestinationProperties.struct_class = Types::EventBridgeDestinationProperties

    EventBridgeMetadata.struct_class = Types::EventBridgeMetadata

    ExecutionDetails.add_member(:most_recent_execution_message, Shapes::ShapeRef.new(shape: MostRecentExecutionMessage, location_name: "mostRecentExecutionMessage"))
    ExecutionDetails.add_member(:most_recent_execution_time, Shapes::ShapeRef.new(shape: Date, location_name: "mostRecentExecutionTime"))
    ExecutionDetails.add_member(:most_recent_execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "mostRecentExecutionStatus"))
    ExecutionDetails.struct_class = Types::ExecutionDetails

    ExecutionRecord.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    ExecutionRecord.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "executionStatus"))
    ExecutionRecord.add_member(:execution_result, Shapes::ShapeRef.new(shape: ExecutionResult, location_name: "executionResult"))
    ExecutionRecord.add_member(:started_at, Shapes::ShapeRef.new(shape: Date, location_name: "startedAt"))
    ExecutionRecord.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedAt"))
    ExecutionRecord.struct_class = Types::ExecutionRecord

    ExecutionResult.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "errorInfo"))
    ExecutionResult.add_member(:bytes_processed, Shapes::ShapeRef.new(shape: Long, location_name: "bytesProcessed"))
    ExecutionResult.add_member(:bytes_written, Shapes::ShapeRef.new(shape: Long, location_name: "bytesWritten"))
    ExecutionResult.add_member(:records_processed, Shapes::ShapeRef.new(shape: Long, location_name: "recordsProcessed"))
    ExecutionResult.struct_class = Types::ExecutionResult

    FieldTypeDetails.add_member(:field_type, Shapes::ShapeRef.new(shape: FieldType, required: true, location_name: "fieldType"))
    FieldTypeDetails.add_member(:filter_operators, Shapes::ShapeRef.new(shape: FilterOperatorList, required: true, location_name: "filterOperators"))
    FieldTypeDetails.add_member(:supported_values, Shapes::ShapeRef.new(shape: SupportedValueList, location_name: "supportedValues"))
    FieldTypeDetails.struct_class = Types::FieldTypeDetails

    FilterOperatorList.member = Shapes::ShapeRef.new(shape: Operator)

    FlowDefinition.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    FlowDefinition.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    FlowDefinition.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, location_name: "flowName"))
    FlowDefinition.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    FlowDefinition.add_member(:source_connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "sourceConnectorType"))
    FlowDefinition.add_member(:destination_connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "destinationConnectorType"))
    FlowDefinition.add_member(:trigger_type, Shapes::ShapeRef.new(shape: TriggerType, location_name: "triggerType"))
    FlowDefinition.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    FlowDefinition.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedAt"))
    FlowDefinition.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    FlowDefinition.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: UpdatedBy, location_name: "lastUpdatedBy"))
    FlowDefinition.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    FlowDefinition.add_member(:last_run_execution_details, Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: "lastRunExecutionDetails"))
    FlowDefinition.struct_class = Types::FlowDefinition

    FlowExecutionList.member = Shapes::ShapeRef.new(shape: ExecutionRecord)

    FlowList.member = Shapes::ShapeRef.new(shape: FlowDefinition)

    GoogleAnalyticsConnectorProfileCredentials.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    GoogleAnalyticsConnectorProfileCredentials.struct_class = Types::GoogleAnalyticsConnectorProfileCredentials

    GoogleAnalyticsConnectorProfileProperties.struct_class = Types::GoogleAnalyticsConnectorProfileProperties

    GoogleAnalyticsMetadata.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: OAuthScopeList, location_name: "oAuthScopes"))
    GoogleAnalyticsMetadata.struct_class = Types::GoogleAnalyticsMetadata

    GoogleAnalyticsSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    GoogleAnalyticsSourceProperties.struct_class = Types::GoogleAnalyticsSourceProperties

    InforNexusConnectorProfileCredentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyId, required: true, location_name: "accessKeyId"))
    InforNexusConnectorProfileCredentials.add_member(:user_id, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "userId"))
    InforNexusConnectorProfileCredentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "secretAccessKey"))
    InforNexusConnectorProfileCredentials.add_member(:datakey, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "datakey"))
    InforNexusConnectorProfileCredentials.struct_class = Types::InforNexusConnectorProfileCredentials

    InforNexusConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    InforNexusConnectorProfileProperties.struct_class = Types::InforNexusConnectorProfileProperties

    InforNexusMetadata.struct_class = Types::InforNexusMetadata

    InforNexusSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    InforNexusSourceProperties.struct_class = Types::InforNexusSourceProperties

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListConnectorEntitiesRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    ListConnectorEntitiesRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    ListConnectorEntitiesRequest.add_member(:entities_path, Shapes::ShapeRef.new(shape: EntitiesPath, location_name: "entitiesPath"))
    ListConnectorEntitiesRequest.struct_class = Types::ListConnectorEntitiesRequest

    ListConnectorEntitiesResponse.add_member(:connector_entity_map, Shapes::ShapeRef.new(shape: ConnectorEntityMap, required: true, location_name: "connectorEntityMap"))
    ListConnectorEntitiesResponse.struct_class = Types::ListConnectorEntitiesResponse

    ListFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowsRequest.struct_class = Types::ListFlowsRequest

    ListFlowsResponse.add_member(:flows, Shapes::ShapeRef.new(shape: FlowList, location_name: "flows"))
    ListFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowsResponse.struct_class = Types::ListFlowsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MarketoConnectorProfileCredentials.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    MarketoConnectorProfileCredentials.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    MarketoConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    MarketoConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    MarketoConnectorProfileCredentials.struct_class = Types::MarketoConnectorProfileCredentials

    MarketoConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    MarketoConnectorProfileProperties.struct_class = Types::MarketoConnectorProfileProperties

    MarketoMetadata.struct_class = Types::MarketoMetadata

    MarketoSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    MarketoSourceProperties.struct_class = Types::MarketoSourceProperties

    OAuthScopeList.member = Shapes::ShapeRef.new(shape: OAuthScope)

    PrefixConfig.add_member(:prefix_type, Shapes::ShapeRef.new(shape: PrefixType, location_name: "prefixType"))
    PrefixConfig.add_member(:prefix_format, Shapes::ShapeRef.new(shape: PrefixFormat, location_name: "prefixFormat"))
    PrefixConfig.struct_class = Types::PrefixConfig

    RedshiftConnectorProfileCredentials.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "username"))
    RedshiftConnectorProfileCredentials.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "password"))
    RedshiftConnectorProfileCredentials.struct_class = Types::RedshiftConnectorProfileCredentials

    RedshiftConnectorProfileProperties.add_member(:database_url, Shapes::ShapeRef.new(shape: DatabaseUrl, required: true, location_name: "databaseUrl"))
    RedshiftConnectorProfileProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    RedshiftConnectorProfileProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    RedshiftConnectorProfileProperties.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    RedshiftConnectorProfileProperties.struct_class = Types::RedshiftConnectorProfileProperties

    RedshiftDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    RedshiftDestinationProperties.add_member(:intermediate_bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "intermediateBucketName"))
    RedshiftDestinationProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    RedshiftDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    RedshiftDestinationProperties.struct_class = Types::RedshiftDestinationProperties

    RedshiftMetadata.struct_class = Types::RedshiftMetadata

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DestinationProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3DestinationProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    S3DestinationProperties.add_member(:s3_output_format_config, Shapes::ShapeRef.new(shape: S3OutputFormatConfig, location_name: "s3OutputFormatConfig"))
    S3DestinationProperties.struct_class = Types::S3DestinationProperties

    S3Metadata.struct_class = Types::S3Metadata

    S3OutputFormatConfig.add_member(:file_type, Shapes::ShapeRef.new(shape: FileType, location_name: "fileType"))
    S3OutputFormatConfig.add_member(:prefix_config, Shapes::ShapeRef.new(shape: PrefixConfig, location_name: "prefixConfig"))
    S3OutputFormatConfig.add_member(:aggregation_config, Shapes::ShapeRef.new(shape: AggregationConfig, location_name: "aggregationConfig"))
    S3OutputFormatConfig.struct_class = Types::S3OutputFormatConfig

    S3SourceProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3SourceProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    S3SourceProperties.struct_class = Types::S3SourceProperties

    SalesforceConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    SalesforceConnectorProfileCredentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    SalesforceConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    SalesforceConnectorProfileCredentials.struct_class = Types::SalesforceConnectorProfileCredentials

    SalesforceConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, location_name: "instanceUrl"))
    SalesforceConnectorProfileProperties.add_member(:is_sandbox_environment, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSandboxEnvironment"))
    SalesforceConnectorProfileProperties.struct_class = Types::SalesforceConnectorProfileProperties

    SalesforceDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    SalesforceDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    SalesforceDestinationProperties.struct_class = Types::SalesforceDestinationProperties

    SalesforceMetadata.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: OAuthScopeList, location_name: "oAuthScopes"))
    SalesforceMetadata.struct_class = Types::SalesforceMetadata

    SalesforceSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    SalesforceSourceProperties.add_member(:enable_dynamic_field_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableDynamicFieldUpdate"))
    SalesforceSourceProperties.add_member(:include_deleted_records, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeDeletedRecords"))
    SalesforceSourceProperties.struct_class = Types::SalesforceSourceProperties

    ScheduledTriggerProperties.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "scheduleExpression"))
    ScheduledTriggerProperties.add_member(:data_pull_mode, Shapes::ShapeRef.new(shape: DataPullMode, location_name: "dataPullMode"))
    ScheduledTriggerProperties.add_member(:schedule_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "scheduleStartTime"))
    ScheduledTriggerProperties.add_member(:schedule_end_time, Shapes::ShapeRef.new(shape: Date, location_name: "scheduleEndTime"))
    ScheduledTriggerProperties.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "timezone"))
    ScheduledTriggerProperties.struct_class = Types::ScheduledTriggerProperties

    SchedulingFrequencyTypeList.member = Shapes::ShapeRef.new(shape: ScheduleFrequencyType)

    ServiceNowConnectorProfileCredentials.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "username"))
    ServiceNowConnectorProfileCredentials.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "password"))
    ServiceNowConnectorProfileCredentials.struct_class = Types::ServiceNowConnectorProfileCredentials

    ServiceNowConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    ServiceNowConnectorProfileProperties.struct_class = Types::ServiceNowConnectorProfileProperties

    ServiceNowMetadata.struct_class = Types::ServiceNowMetadata

    ServiceNowSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    ServiceNowSourceProperties.struct_class = Types::ServiceNowSourceProperties

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SingularConnectorProfileCredentials.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKey, required: true, location_name: "apiKey"))
    SingularConnectorProfileCredentials.struct_class = Types::SingularConnectorProfileCredentials

    SingularConnectorProfileProperties.struct_class = Types::SingularConnectorProfileProperties

    SingularMetadata.struct_class = Types::SingularMetadata

    SingularSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    SingularSourceProperties.struct_class = Types::SingularSourceProperties

    SlackConnectorProfileCredentials.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    SlackConnectorProfileCredentials.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    SlackConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    SlackConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    SlackConnectorProfileCredentials.struct_class = Types::SlackConnectorProfileCredentials

    SlackConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    SlackConnectorProfileProperties.struct_class = Types::SlackConnectorProfileProperties

    SlackMetadata.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: OAuthScopeList, location_name: "oAuthScopes"))
    SlackMetadata.struct_class = Types::SlackMetadata

    SlackSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    SlackSourceProperties.struct_class = Types::SlackSourceProperties

    SnowflakeConnectorProfileCredentials.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "username"))
    SnowflakeConnectorProfileCredentials.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "password"))
    SnowflakeConnectorProfileCredentials.struct_class = Types::SnowflakeConnectorProfileCredentials

    SnowflakeConnectorProfileProperties.add_member(:warehouse, Shapes::ShapeRef.new(shape: Warehouse, required: true, location_name: "warehouse"))
    SnowflakeConnectorProfileProperties.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, required: true, location_name: "stage"))
    SnowflakeConnectorProfileProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    SnowflakeConnectorProfileProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    SnowflakeConnectorProfileProperties.add_member(:private_link_service_name, Shapes::ShapeRef.new(shape: PrivateLinkServiceName, location_name: "privateLinkServiceName"))
    SnowflakeConnectorProfileProperties.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, location_name: "accountName"))
    SnowflakeConnectorProfileProperties.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    SnowflakeConnectorProfileProperties.struct_class = Types::SnowflakeConnectorProfileProperties

    SnowflakeDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    SnowflakeDestinationProperties.add_member(:intermediate_bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "intermediateBucketName"))
    SnowflakeDestinationProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    SnowflakeDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    SnowflakeDestinationProperties.struct_class = Types::SnowflakeDestinationProperties

    SnowflakeMetadata.add_member(:supported_regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "supportedRegions"))
    SnowflakeMetadata.struct_class = Types::SnowflakeMetadata

    SourceConnectorProperties.add_member(:amplitude, Shapes::ShapeRef.new(shape: AmplitudeSourceProperties, location_name: "Amplitude"))
    SourceConnectorProperties.add_member(:datadog, Shapes::ShapeRef.new(shape: DatadogSourceProperties, location_name: "Datadog"))
    SourceConnectorProperties.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceSourceProperties, location_name: "Dynatrace"))
    SourceConnectorProperties.add_member(:google_analytics, Shapes::ShapeRef.new(shape: GoogleAnalyticsSourceProperties, location_name: "GoogleAnalytics"))
    SourceConnectorProperties.add_member(:infor_nexus, Shapes::ShapeRef.new(shape: InforNexusSourceProperties, location_name: "InforNexus"))
    SourceConnectorProperties.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoSourceProperties, location_name: "Marketo"))
    SourceConnectorProperties.add_member(:s3, Shapes::ShapeRef.new(shape: S3SourceProperties, location_name: "S3"))
    SourceConnectorProperties.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceSourceProperties, location_name: "Salesforce"))
    SourceConnectorProperties.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowSourceProperties, location_name: "ServiceNow"))
    SourceConnectorProperties.add_member(:singular, Shapes::ShapeRef.new(shape: SingularSourceProperties, location_name: "Singular"))
    SourceConnectorProperties.add_member(:slack, Shapes::ShapeRef.new(shape: SlackSourceProperties, location_name: "Slack"))
    SourceConnectorProperties.add_member(:trendmicro, Shapes::ShapeRef.new(shape: TrendmicroSourceProperties, location_name: "Trendmicro"))
    SourceConnectorProperties.add_member(:veeva, Shapes::ShapeRef.new(shape: VeevaSourceProperties, location_name: "Veeva"))
    SourceConnectorProperties.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskSourceProperties, location_name: "Zendesk"))
    SourceConnectorProperties.struct_class = Types::SourceConnectorProperties

    SourceFieldProperties.add_member(:is_retrievable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRetrievable"))
    SourceFieldProperties.add_member(:is_queryable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isQueryable"))
    SourceFieldProperties.struct_class = Types::SourceFieldProperties

    SourceFields.member = Shapes::ShapeRef.new(shape: String)

    SourceFlowConfig.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, required: true, location_name: "connectorType"))
    SourceFlowConfig.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    SourceFlowConfig.add_member(:source_connector_properties, Shapes::ShapeRef.new(shape: SourceConnectorProperties, required: true, location_name: "sourceConnectorProperties"))
    SourceFlowConfig.struct_class = Types::SourceFlowConfig

    StartFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    StartFlowRequest.struct_class = Types::StartFlowRequest

    StartFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    StartFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    StartFlowResponse.struct_class = Types::StartFlowResponse

    StopFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    StopFlowRequest.struct_class = Types::StopFlowRequest

    StopFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    StopFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    StopFlowResponse.struct_class = Types::StopFlowResponse

    SupportedFieldTypeDetails.add_member(:v1, Shapes::ShapeRef.new(shape: FieldTypeDetails, required: true, location_name: "v1"))
    SupportedFieldTypeDetails.struct_class = Types::SupportedFieldTypeDetails

    SupportedValueList.member = Shapes::ShapeRef.new(shape: Value)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Task.add_member(:source_fields, Shapes::ShapeRef.new(shape: SourceFields, required: true, location_name: "sourceFields"))
    Task.add_member(:connector_operator, Shapes::ShapeRef.new(shape: ConnectorOperator, location_name: "connectorOperator"))
    Task.add_member(:destination_field, Shapes::ShapeRef.new(shape: DestinationField, location_name: "destinationField"))
    Task.add_member(:task_type, Shapes::ShapeRef.new(shape: TaskType, required: true, location_name: "taskType"))
    Task.add_member(:task_properties, Shapes::ShapeRef.new(shape: TaskPropertiesMap, location_name: "taskProperties"))
    Task.struct_class = Types::Task

    TaskPropertiesMap.key = Shapes::ShapeRef.new(shape: OperatorPropertiesKeys)
    TaskPropertiesMap.value = Shapes::ShapeRef.new(shape: Property)

    Tasks.member = Shapes::ShapeRef.new(shape: Task)

    TrendmicroConnectorProfileCredentials.add_member(:api_secret_key, Shapes::ShapeRef.new(shape: ApiSecretKey, required: true, location_name: "apiSecretKey"))
    TrendmicroConnectorProfileCredentials.struct_class = Types::TrendmicroConnectorProfileCredentials

    TrendmicroConnectorProfileProperties.struct_class = Types::TrendmicroConnectorProfileProperties

    TrendmicroMetadata.struct_class = Types::TrendmicroMetadata

    TrendmicroSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    TrendmicroSourceProperties.struct_class = Types::TrendmicroSourceProperties

    TriggerConfig.add_member(:trigger_type, Shapes::ShapeRef.new(shape: TriggerType, required: true, location_name: "triggerType"))
    TriggerConfig.add_member(:trigger_properties, Shapes::ShapeRef.new(shape: TriggerProperties, location_name: "triggerProperties"))
    TriggerConfig.struct_class = Types::TriggerConfig

    TriggerProperties.add_member(:scheduled, Shapes::ShapeRef.new(shape: ScheduledTriggerProperties, location_name: "Scheduled"))
    TriggerProperties.struct_class = Types::TriggerProperties

    TriggerTypeList.member = Shapes::ShapeRef.new(shape: TriggerType)

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConnectorProfileRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, required: true, location_name: "connectorProfileName"))
    UpdateConnectorProfileRequest.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, required: true, location_name: "connectionMode"))
    UpdateConnectorProfileRequest.add_member(:connector_profile_config, Shapes::ShapeRef.new(shape: ConnectorProfileConfig, required: true, location_name: "connectorProfileConfig"))
    UpdateConnectorProfileRequest.struct_class = Types::UpdateConnectorProfileRequest

    UpdateConnectorProfileResponse.add_member(:connector_profile_arn, Shapes::ShapeRef.new(shape: ConnectorProfileArn, location_name: "connectorProfileArn"))
    UpdateConnectorProfileResponse.struct_class = Types::UpdateConnectorProfileResponse

    UpdateFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    UpdateFlowRequest.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    UpdateFlowRequest.add_member(:trigger_config, Shapes::ShapeRef.new(shape: TriggerConfig, required: true, location_name: "triggerConfig"))
    UpdateFlowRequest.add_member(:source_flow_config, Shapes::ShapeRef.new(shape: SourceFlowConfig, location_name: "sourceFlowConfig"))
    UpdateFlowRequest.add_member(:destination_flow_config_list, Shapes::ShapeRef.new(shape: DestinationFlowConfigList, required: true, location_name: "destinationFlowConfigList"))
    UpdateFlowRequest.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, required: true, location_name: "tasks"))
    UpdateFlowRequest.struct_class = Types::UpdateFlowRequest

    UpdateFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    UpdateFlowResponse.struct_class = Types::UpdateFlowResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VeevaConnectorProfileCredentials.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "username"))
    VeevaConnectorProfileCredentials.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "password"))
    VeevaConnectorProfileCredentials.struct_class = Types::VeevaConnectorProfileCredentials

    VeevaConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    VeevaConnectorProfileProperties.struct_class = Types::VeevaConnectorProfileProperties

    VeevaMetadata.struct_class = Types::VeevaMetadata

    VeevaSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    VeevaSourceProperties.struct_class = Types::VeevaSourceProperties

    ZendeskConnectorProfileCredentials.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    ZendeskConnectorProfileCredentials.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    ZendeskConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    ZendeskConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    ZendeskConnectorProfileCredentials.struct_class = Types::ZendeskConnectorProfileCredentials

    ZendeskConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    ZendeskConnectorProfileProperties.struct_class = Types::ZendeskConnectorProfileProperties

    ZendeskMetadata.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: OAuthScopeList, location_name: "oAuthScopes"))
    ZendeskMetadata.struct_class = Types::ZendeskMetadata

    ZendeskSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    ZendeskSourceProperties.struct_class = Types::ZendeskSourceProperties


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-23"

      api.metadata = {
        "apiVersion" => "2020-08-23",
        "endpointPrefix" => "appflow",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Appflow",
        "serviceId" => "Appflow",
        "signatureVersion" => "v4",
        "signingName" => "appflow",
        "uid" => "appflow-2020-08-23",
      }

      api.add_operation(:create_connector_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnectorProfile"
        o.http_method = "POST"
        o.http_request_uri = "/create-connector-profile"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectorProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectorProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorAuthenticationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlow"
        o.http_method = "POST"
        o.http_request_uri = "/create-flow"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorAuthenticationException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorServerException)
      end)

      api.add_operation(:delete_connector_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectorProfile"
        o.http_method = "POST"
        o.http_request_uri = "/delete-connector-profile"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectorProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectorProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlow"
        o.http_method = "POST"
        o.http_request_uri = "/delete-flow"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_connector_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectorEntity"
        o.http_method = "POST"
        o.http_request_uri = "/describe-connector-entity"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectorEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectorEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorAuthenticationException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorServerException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_connector_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectorProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/describe-connector-profiles"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectorProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectorProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/describe-connectors"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFlow"
        o.http_method = "POST"
        o.http_request_uri = "/describe-flow"
        o.input = Shapes::ShapeRef.new(shape: DescribeFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_flow_execution_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFlowExecutionRecords"
        o.http_method = "POST"
        o.http_request_uri = "/describe-flow-execution-records"
        o.input = Shapes::ShapeRef.new(shape: DescribeFlowExecutionRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFlowExecutionRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connector_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectorEntities"
        o.http_method = "POST"
        o.http_request_uri = "/list-connector-entities"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorAuthenticationException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorServerException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlows"
        o.http_method = "POST"
        o.http_request_uri = "/list-flows"
        o.input = Shapes::ShapeRef.new(shape: ListFlowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowsResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFlow"
        o.http_method = "POST"
        o.http_request_uri = "/start-flow"
        o.input = Shapes::ShapeRef.new(shape: StartFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFlow"
        o.http_method = "POST"
        o.http_request_uri = "/stop-flow"
        o.input = Shapes::ShapeRef.new(shape: StopFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: StopFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_connector_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectorProfile"
        o.http_method = "POST"
        o.http_request_uri = "/update-connector-profile"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectorProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectorProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorAuthenticationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlow"
        o.http_method = "POST"
        o.http_request_uri = "/update-flow"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorAuthenticationException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorServerException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
