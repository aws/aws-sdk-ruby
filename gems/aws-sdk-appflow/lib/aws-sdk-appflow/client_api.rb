# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Appflow
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
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
    ApiKeyCredentials = Shapes::StructureShape.new(name: 'ApiKeyCredentials')
    ApiSecretKey = Shapes::StringShape.new(name: 'ApiSecretKey')
    ApiToken = Shapes::StringShape.new(name: 'ApiToken')
    ApiVersion = Shapes::StringShape.new(name: 'ApiVersion')
    ApplicationHostUrl = Shapes::StringShape.new(name: 'ApplicationHostUrl')
    ApplicationKey = Shapes::StringShape.new(name: 'ApplicationKey')
    ApplicationServicePath = Shapes::StringShape.new(name: 'ApplicationServicePath')
    ApplicationType = Shapes::StringShape.new(name: 'ApplicationType')
    AuthCode = Shapes::StringShape.new(name: 'AuthCode')
    AuthCodeUrl = Shapes::StringShape.new(name: 'AuthCodeUrl')
    AuthCodeUrlList = Shapes::ListShape.new(name: 'AuthCodeUrlList')
    AuthParameter = Shapes::StructureShape.new(name: 'AuthParameter')
    AuthParameterList = Shapes::ListShape.new(name: 'AuthParameterList')
    AuthenticationConfig = Shapes::StructureShape.new(name: 'AuthenticationConfig')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    BasicAuthCredentials = Shapes::StructureShape.new(name: 'BasicAuthCredentials')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    BucketPrefix = Shapes::StringShape.new(name: 'BucketPrefix')
    BusinessUnitId = Shapes::StringShape.new(name: 'BusinessUnitId')
    CancelFlowExecutionsRequest = Shapes::StructureShape.new(name: 'CancelFlowExecutionsRequest')
    CancelFlowExecutionsResponse = Shapes::StructureShape.new(name: 'CancelFlowExecutionsResponse')
    CatalogType = Shapes::StringShape.new(name: 'CatalogType')
    ClientCredentialsArn = Shapes::StringShape.new(name: 'ClientCredentialsArn')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientNumber = Shapes::StringShape.new(name: 'ClientNumber')
    ClientSecret = Shapes::StringShape.new(name: 'ClientSecret')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClusterIdentifier = Shapes::StringShape.new(name: 'ClusterIdentifier')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionMode = Shapes::StringShape.new(name: 'ConnectionMode')
    ConnectorAuthenticationException = Shapes::StructureShape.new(name: 'ConnectorAuthenticationException')
    ConnectorConfiguration = Shapes::StructureShape.new(name: 'ConnectorConfiguration')
    ConnectorConfigurationsMap = Shapes::MapShape.new(name: 'ConnectorConfigurationsMap')
    ConnectorDescription = Shapes::StringShape.new(name: 'ConnectorDescription')
    ConnectorDetail = Shapes::StructureShape.new(name: 'ConnectorDetail')
    ConnectorEntity = Shapes::StructureShape.new(name: 'ConnectorEntity')
    ConnectorEntityField = Shapes::StructureShape.new(name: 'ConnectorEntityField')
    ConnectorEntityFieldList = Shapes::ListShape.new(name: 'ConnectorEntityFieldList')
    ConnectorEntityList = Shapes::ListShape.new(name: 'ConnectorEntityList')
    ConnectorEntityMap = Shapes::MapShape.new(name: 'ConnectorEntityMap')
    ConnectorLabel = Shapes::StringShape.new(name: 'ConnectorLabel')
    ConnectorList = Shapes::ListShape.new(name: 'ConnectorList')
    ConnectorMetadata = Shapes::StructureShape.new(name: 'ConnectorMetadata')
    ConnectorMode = Shapes::StringShape.new(name: 'ConnectorMode')
    ConnectorModeList = Shapes::ListShape.new(name: 'ConnectorModeList')
    ConnectorName = Shapes::StringShape.new(name: 'ConnectorName')
    ConnectorOAuthRequest = Shapes::StructureShape.new(name: 'ConnectorOAuthRequest')
    ConnectorOperator = Shapes::StructureShape.new(name: 'ConnectorOperator')
    ConnectorOwner = Shapes::StringShape.new(name: 'ConnectorOwner')
    ConnectorProfile = Shapes::StructureShape.new(name: 'ConnectorProfile')
    ConnectorProfileArn = Shapes::StringShape.new(name: 'ConnectorProfileArn')
    ConnectorProfileConfig = Shapes::StructureShape.new(name: 'ConnectorProfileConfig')
    ConnectorProfileCredentials = Shapes::StructureShape.new(name: 'ConnectorProfileCredentials')
    ConnectorProfileDetailList = Shapes::ListShape.new(name: 'ConnectorProfileDetailList')
    ConnectorProfileName = Shapes::StringShape.new(name: 'ConnectorProfileName')
    ConnectorProfileNameList = Shapes::ListShape.new(name: 'ConnectorProfileNameList')
    ConnectorProfileProperties = Shapes::StructureShape.new(name: 'ConnectorProfileProperties')
    ConnectorProvisioningConfig = Shapes::StructureShape.new(name: 'ConnectorProvisioningConfig')
    ConnectorProvisioningType = Shapes::StringShape.new(name: 'ConnectorProvisioningType')
    ConnectorRuntimeSetting = Shapes::StructureShape.new(name: 'ConnectorRuntimeSetting')
    ConnectorRuntimeSettingDataType = Shapes::StringShape.new(name: 'ConnectorRuntimeSettingDataType')
    ConnectorRuntimeSettingList = Shapes::ListShape.new(name: 'ConnectorRuntimeSettingList')
    ConnectorRuntimeSettingScope = Shapes::StringShape.new(name: 'ConnectorRuntimeSettingScope')
    ConnectorServerException = Shapes::StructureShape.new(name: 'ConnectorServerException')
    ConnectorSuppliedValue = Shapes::StringShape.new(name: 'ConnectorSuppliedValue')
    ConnectorSuppliedValueList = Shapes::ListShape.new(name: 'ConnectorSuppliedValueList')
    ConnectorSuppliedValueOptionList = Shapes::ListShape.new(name: 'ConnectorSuppliedValueOptionList')
    ConnectorType = Shapes::StringShape.new(name: 'ConnectorType')
    ConnectorTypeList = Shapes::ListShape.new(name: 'ConnectorTypeList')
    ConnectorVersion = Shapes::StringShape.new(name: 'ConnectorVersion')
    CreateConnectorProfileRequest = Shapes::StructureShape.new(name: 'CreateConnectorProfileRequest')
    CreateConnectorProfileResponse = Shapes::StructureShape.new(name: 'CreateConnectorProfileResponse')
    CreateFlowRequest = Shapes::StructureShape.new(name: 'CreateFlowRequest')
    CreateFlowResponse = Shapes::StructureShape.new(name: 'CreateFlowResponse')
    CreatedBy = Shapes::StringShape.new(name: 'CreatedBy')
    CredentialsMap = Shapes::MapShape.new(name: 'CredentialsMap')
    CredentialsMapKey = Shapes::StringShape.new(name: 'CredentialsMapKey')
    CredentialsMapValue = Shapes::StringShape.new(name: 'CredentialsMapValue')
    CustomAuthConfig = Shapes::StructureShape.new(name: 'CustomAuthConfig')
    CustomAuthConfigList = Shapes::ListShape.new(name: 'CustomAuthConfigList')
    CustomAuthCredentials = Shapes::StructureShape.new(name: 'CustomAuthCredentials')
    CustomAuthenticationType = Shapes::StringShape.new(name: 'CustomAuthenticationType')
    CustomConnectorDestinationProperties = Shapes::StructureShape.new(name: 'CustomConnectorDestinationProperties')
    CustomConnectorProfileCredentials = Shapes::StructureShape.new(name: 'CustomConnectorProfileCredentials')
    CustomConnectorProfileProperties = Shapes::StructureShape.new(name: 'CustomConnectorProfileProperties')
    CustomConnectorSourceProperties = Shapes::StructureShape.new(name: 'CustomConnectorSourceProperties')
    CustomProperties = Shapes::MapShape.new(name: 'CustomProperties')
    CustomPropertyKey = Shapes::StringShape.new(name: 'CustomPropertyKey')
    CustomPropertyValue = Shapes::StringShape.new(name: 'CustomPropertyValue')
    CustomerProfilesDestinationProperties = Shapes::StructureShape.new(name: 'CustomerProfilesDestinationProperties')
    CustomerProfilesMetadata = Shapes::StructureShape.new(name: 'CustomerProfilesMetadata')
    DataApiRoleArn = Shapes::StringShape.new(name: 'DataApiRoleArn')
    DataPullMode = Shapes::StringShape.new(name: 'DataPullMode')
    DataTransferApi = Shapes::StructureShape.new(name: 'DataTransferApi')
    DataTransferApiType = Shapes::StringShape.new(name: 'DataTransferApiType')
    DataTransferApiTypeName = Shapes::StringShape.new(name: 'DataTransferApiTypeName')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DatabaseUrl = Shapes::StringShape.new(name: 'DatabaseUrl')
    DatadogConnectorOperator = Shapes::StringShape.new(name: 'DatadogConnectorOperator')
    DatadogConnectorProfileCredentials = Shapes::StructureShape.new(name: 'DatadogConnectorProfileCredentials')
    DatadogConnectorProfileProperties = Shapes::StructureShape.new(name: 'DatadogConnectorProfileProperties')
    DatadogMetadata = Shapes::StructureShape.new(name: 'DatadogMetadata')
    DatadogSourceProperties = Shapes::StructureShape.new(name: 'DatadogSourceProperties')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DatetimeTypeFieldName = Shapes::StringShape.new(name: 'DatetimeTypeFieldName')
    DeleteConnectorProfileRequest = Shapes::StructureShape.new(name: 'DeleteConnectorProfileRequest')
    DeleteConnectorProfileResponse = Shapes::StructureShape.new(name: 'DeleteConnectorProfileResponse')
    DeleteFlowRequest = Shapes::StructureShape.new(name: 'DeleteFlowRequest')
    DeleteFlowResponse = Shapes::StructureShape.new(name: 'DeleteFlowResponse')
    DescribeConnectorEntityRequest = Shapes::StructureShape.new(name: 'DescribeConnectorEntityRequest')
    DescribeConnectorEntityResponse = Shapes::StructureShape.new(name: 'DescribeConnectorEntityResponse')
    DescribeConnectorProfilesRequest = Shapes::StructureShape.new(name: 'DescribeConnectorProfilesRequest')
    DescribeConnectorProfilesResponse = Shapes::StructureShape.new(name: 'DescribeConnectorProfilesResponse')
    DescribeConnectorRequest = Shapes::StructureShape.new(name: 'DescribeConnectorRequest')
    DescribeConnectorResponse = Shapes::StructureShape.new(name: 'DescribeConnectorResponse')
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
    DocumentType = Shapes::StringShape.new(name: 'DocumentType')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    Double = Shapes::FloatShape.new(name: 'Double')
    DynatraceConnectorOperator = Shapes::StringShape.new(name: 'DynatraceConnectorOperator')
    DynatraceConnectorProfileCredentials = Shapes::StructureShape.new(name: 'DynatraceConnectorProfileCredentials')
    DynatraceConnectorProfileProperties = Shapes::StructureShape.new(name: 'DynatraceConnectorProfileProperties')
    DynatraceMetadata = Shapes::StructureShape.new(name: 'DynatraceMetadata')
    DynatraceSourceProperties = Shapes::StructureShape.new(name: 'DynatraceSourceProperties')
    EntitiesPath = Shapes::StringShape.new(name: 'EntitiesPath')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    ErrorHandlingConfig = Shapes::StructureShape.new(name: 'ErrorHandlingConfig')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventBridgeDestinationProperties = Shapes::StructureShape.new(name: 'EventBridgeDestinationProperties')
    EventBridgeMetadata = Shapes::StructureShape.new(name: 'EventBridgeMetadata')
    ExecutionDetails = Shapes::StructureShape.new(name: 'ExecutionDetails')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    ExecutionIds = Shapes::ListShape.new(name: 'ExecutionIds')
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
    FlowErrorDeactivationThreshold = Shapes::IntegerShape.new(name: 'FlowErrorDeactivationThreshold')
    FlowExecutionList = Shapes::ListShape.new(name: 'FlowExecutionList')
    FlowList = Shapes::ListShape.new(name: 'FlowList')
    FlowName = Shapes::StringShape.new(name: 'FlowName')
    FlowStatus = Shapes::StringShape.new(name: 'FlowStatus')
    FlowStatusMessage = Shapes::StringShape.new(name: 'FlowStatusMessage')
    GlueDataCatalogConfig = Shapes::StructureShape.new(name: 'GlueDataCatalogConfig')
    GlueDataCatalogDatabaseName = Shapes::StringShape.new(name: 'GlueDataCatalogDatabaseName')
    GlueDataCatalogIAMRole = Shapes::StringShape.new(name: 'GlueDataCatalogIAMRole')
    GlueDataCatalogTablePrefix = Shapes::StringShape.new(name: 'GlueDataCatalogTablePrefix')
    GoogleAnalyticsConnectorOperator = Shapes::StringShape.new(name: 'GoogleAnalyticsConnectorOperator')
    GoogleAnalyticsConnectorProfileCredentials = Shapes::StructureShape.new(name: 'GoogleAnalyticsConnectorProfileCredentials')
    GoogleAnalyticsConnectorProfileProperties = Shapes::StructureShape.new(name: 'GoogleAnalyticsConnectorProfileProperties')
    GoogleAnalyticsMetadata = Shapes::StructureShape.new(name: 'GoogleAnalyticsMetadata')
    GoogleAnalyticsSourceProperties = Shapes::StructureShape.new(name: 'GoogleAnalyticsSourceProperties')
    Group = Shapes::StringShape.new(name: 'Group')
    HoneycodeConnectorProfileCredentials = Shapes::StructureShape.new(name: 'HoneycodeConnectorProfileCredentials')
    HoneycodeConnectorProfileProperties = Shapes::StructureShape.new(name: 'HoneycodeConnectorProfileProperties')
    HoneycodeDestinationProperties = Shapes::StructureShape.new(name: 'HoneycodeDestinationProperties')
    HoneycodeMetadata = Shapes::StructureShape.new(name: 'HoneycodeMetadata')
    IdFieldNameList = Shapes::ListShape.new(name: 'IdFieldNameList')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    IncrementalPullConfig = Shapes::StructureShape.new(name: 'IncrementalPullConfig')
    InforNexusConnectorOperator = Shapes::StringShape.new(name: 'InforNexusConnectorOperator')
    InforNexusConnectorProfileCredentials = Shapes::StructureShape.new(name: 'InforNexusConnectorProfileCredentials')
    InforNexusConnectorProfileProperties = Shapes::StructureShape.new(name: 'InforNexusConnectorProfileProperties')
    InforNexusMetadata = Shapes::StructureShape.new(name: 'InforNexusMetadata')
    InforNexusSourceProperties = Shapes::StructureShape.new(name: 'InforNexusSourceProperties')
    InstanceUrl = Shapes::StringShape.new(name: 'InstanceUrl')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JavaBoolean = Shapes::BooleanShape.new(name: 'JavaBoolean')
    JwtToken = Shapes::StringShape.new(name: 'JwtToken')
    KMSArn = Shapes::StringShape.new(name: 'KMSArn')
    Key = Shapes::StringShape.new(name: 'Key')
    Label = Shapes::StringShape.new(name: 'Label')
    LambdaConnectorProvisioningConfig = Shapes::StructureShape.new(name: 'LambdaConnectorProvisioningConfig')
    ListConnectorEntitiesRequest = Shapes::StructureShape.new(name: 'ListConnectorEntitiesRequest')
    ListConnectorEntitiesResponse = Shapes::StructureShape.new(name: 'ListConnectorEntitiesResponse')
    ListConnectorsRequest = Shapes::StructureShape.new(name: 'ListConnectorsRequest')
    ListConnectorsResponse = Shapes::StructureShape.new(name: 'ListConnectorsResponse')
    ListEntitiesMaxResults = Shapes::IntegerShape.new(name: 'ListEntitiesMaxResults')
    ListFlowsRequest = Shapes::StructureShape.new(name: 'ListFlowsRequest')
    ListFlowsResponse = Shapes::StructureShape.new(name: 'ListFlowsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogoURL = Shapes::StringShape.new(name: 'LogoURL')
    LogonLanguage = Shapes::StringShape.new(name: 'LogonLanguage')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LookoutMetricsDestinationProperties = Shapes::StructureShape.new(name: 'LookoutMetricsDestinationProperties')
    MarketoConnectorOperator = Shapes::StringShape.new(name: 'MarketoConnectorOperator')
    MarketoConnectorProfileCredentials = Shapes::StructureShape.new(name: 'MarketoConnectorProfileCredentials')
    MarketoConnectorProfileProperties = Shapes::StructureShape.new(name: 'MarketoConnectorProfileProperties')
    MarketoDestinationProperties = Shapes::StructureShape.new(name: 'MarketoDestinationProperties')
    MarketoMetadata = Shapes::StructureShape.new(name: 'MarketoMetadata')
    MarketoSourceProperties = Shapes::StructureShape.new(name: 'MarketoSourceProperties')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetadataCatalogConfig = Shapes::StructureShape.new(name: 'MetadataCatalogConfig')
    MetadataCatalogDetail = Shapes::StructureShape.new(name: 'MetadataCatalogDetail')
    MetadataCatalogDetails = Shapes::ListShape.new(name: 'MetadataCatalogDetails')
    MostRecentExecutionMessage = Shapes::StringShape.new(name: 'MostRecentExecutionMessage')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OAuth2Credentials = Shapes::StructureShape.new(name: 'OAuth2Credentials')
    OAuth2CustomParameter = Shapes::StructureShape.new(name: 'OAuth2CustomParameter')
    OAuth2CustomPropType = Shapes::StringShape.new(name: 'OAuth2CustomPropType')
    OAuth2CustomPropertiesList = Shapes::ListShape.new(name: 'OAuth2CustomPropertiesList')
    OAuth2Defaults = Shapes::StructureShape.new(name: 'OAuth2Defaults')
    OAuth2GrantType = Shapes::StringShape.new(name: 'OAuth2GrantType')
    OAuth2GrantTypeSupportedList = Shapes::ListShape.new(name: 'OAuth2GrantTypeSupportedList')
    OAuth2Properties = Shapes::StructureShape.new(name: 'OAuth2Properties')
    OAuthCredentials = Shapes::StructureShape.new(name: 'OAuthCredentials')
    OAuthProperties = Shapes::StructureShape.new(name: 'OAuthProperties')
    OAuthScope = Shapes::StringShape.new(name: 'OAuthScope')
    OAuthScopeList = Shapes::ListShape.new(name: 'OAuthScopeList')
    Object = Shapes::StringShape.new(name: 'Object')
    ObjectTypeName = Shapes::StringShape.new(name: 'ObjectTypeName')
    Operator = Shapes::StringShape.new(name: 'Operator')
    OperatorPropertiesKeys = Shapes::StringShape.new(name: 'OperatorPropertiesKeys')
    Operators = Shapes::StringShape.new(name: 'Operators')
    PardotConnectorOperator = Shapes::StringShape.new(name: 'PardotConnectorOperator')
    PardotConnectorProfileCredentials = Shapes::StructureShape.new(name: 'PardotConnectorProfileCredentials')
    PardotConnectorProfileProperties = Shapes::StructureShape.new(name: 'PardotConnectorProfileProperties')
    PardotMetadata = Shapes::StructureShape.new(name: 'PardotMetadata')
    PardotSourceProperties = Shapes::StructureShape.new(name: 'PardotSourceProperties')
    Password = Shapes::StringShape.new(name: 'Password')
    PathPrefix = Shapes::StringShape.new(name: 'PathPrefix')
    PathPrefixHierarchy = Shapes::ListShape.new(name: 'PathPrefixHierarchy')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PrefixConfig = Shapes::StructureShape.new(name: 'PrefixConfig')
    PrefixFormat = Shapes::StringShape.new(name: 'PrefixFormat')
    PrefixType = Shapes::StringShape.new(name: 'PrefixType')
    PrivateConnectionProvisioningFailureCause = Shapes::StringShape.new(name: 'PrivateConnectionProvisioningFailureCause')
    PrivateConnectionProvisioningFailureMessage = Shapes::StringShape.new(name: 'PrivateConnectionProvisioningFailureMessage')
    PrivateConnectionProvisioningState = Shapes::StructureShape.new(name: 'PrivateConnectionProvisioningState')
    PrivateConnectionProvisioningStatus = Shapes::StringShape.new(name: 'PrivateConnectionProvisioningStatus')
    PrivateLinkServiceName = Shapes::StringShape.new(name: 'PrivateLinkServiceName')
    ProfilePropertiesMap = Shapes::MapShape.new(name: 'ProfilePropertiesMap')
    ProfilePropertyKey = Shapes::StringShape.new(name: 'ProfilePropertyKey')
    ProfilePropertyValue = Shapes::StringShape.new(name: 'ProfilePropertyValue')
    Property = Shapes::StringShape.new(name: 'Property')
    Range = Shapes::StructureShape.new(name: 'Range')
    RedirectUri = Shapes::StringShape.new(name: 'RedirectUri')
    RedshiftConnectorProfileCredentials = Shapes::StructureShape.new(name: 'RedshiftConnectorProfileCredentials')
    RedshiftConnectorProfileProperties = Shapes::StructureShape.new(name: 'RedshiftConnectorProfileProperties')
    RedshiftDestinationProperties = Shapes::StructureShape.new(name: 'RedshiftDestinationProperties')
    RedshiftMetadata = Shapes::StructureShape.new(name: 'RedshiftMetadata')
    RefreshToken = Shapes::StringShape.new(name: 'RefreshToken')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegisterConnectorRequest = Shapes::StructureShape.new(name: 'RegisterConnectorRequest')
    RegisterConnectorResponse = Shapes::StructureShape.new(name: 'RegisterConnectorResponse')
    RegisteredBy = Shapes::StringShape.new(name: 'RegisteredBy')
    RegistrationOutput = Shapes::StructureShape.new(name: 'RegistrationOutput')
    ResetConnectorMetadataCacheRequest = Shapes::StructureShape.new(name: 'ResetConnectorMetadataCacheRequest')
    ResetConnectorMetadataCacheResponse = Shapes::StructureShape.new(name: 'ResetConnectorMetadataCacheResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3ConnectorOperator = Shapes::StringShape.new(name: 'S3ConnectorOperator')
    S3DestinationProperties = Shapes::StructureShape.new(name: 'S3DestinationProperties')
    S3InputFileType = Shapes::StringShape.new(name: 'S3InputFileType')
    S3InputFormatConfig = Shapes::StructureShape.new(name: 'S3InputFormatConfig')
    S3Metadata = Shapes::StructureShape.new(name: 'S3Metadata')
    S3OutputFormatConfig = Shapes::StructureShape.new(name: 'S3OutputFormatConfig')
    S3SourceProperties = Shapes::StructureShape.new(name: 'S3SourceProperties')
    SAPODataConnectorOperator = Shapes::StringShape.new(name: 'SAPODataConnectorOperator')
    SAPODataConnectorProfileCredentials = Shapes::StructureShape.new(name: 'SAPODataConnectorProfileCredentials')
    SAPODataConnectorProfileProperties = Shapes::StructureShape.new(name: 'SAPODataConnectorProfileProperties')
    SAPODataDestinationProperties = Shapes::StructureShape.new(name: 'SAPODataDestinationProperties')
    SAPODataMetadata = Shapes::StructureShape.new(name: 'SAPODataMetadata')
    SAPODataSourceProperties = Shapes::StructureShape.new(name: 'SAPODataSourceProperties')
    SalesforceConnectorOperator = Shapes::StringShape.new(name: 'SalesforceConnectorOperator')
    SalesforceConnectorProfileCredentials = Shapes::StructureShape.new(name: 'SalesforceConnectorProfileCredentials')
    SalesforceConnectorProfileProperties = Shapes::StructureShape.new(name: 'SalesforceConnectorProfileProperties')
    SalesforceDataTransferApi = Shapes::StringShape.new(name: 'SalesforceDataTransferApi')
    SalesforceDataTransferApiList = Shapes::ListShape.new(name: 'SalesforceDataTransferApiList')
    SalesforceDestinationProperties = Shapes::StructureShape.new(name: 'SalesforceDestinationProperties')
    SalesforceMetadata = Shapes::StructureShape.new(name: 'SalesforceMetadata')
    SalesforceSourceProperties = Shapes::StructureShape.new(name: 'SalesforceSourceProperties')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduleFrequencyType = Shapes::StringShape.new(name: 'ScheduleFrequencyType')
    ScheduleOffset = Shapes::IntegerShape.new(name: 'ScheduleOffset')
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
    SuccessResponseHandlingConfig = Shapes::StructureShape.new(name: 'SuccessResponseHandlingConfig')
    SupportedApiVersion = Shapes::StringShape.new(name: 'SupportedApiVersion')
    SupportedApiVersionList = Shapes::ListShape.new(name: 'SupportedApiVersionList')
    SupportedDataTransferApis = Shapes::ListShape.new(name: 'SupportedDataTransferApis')
    SupportedDataTransferType = Shapes::StringShape.new(name: 'SupportedDataTransferType')
    SupportedDataTransferTypeList = Shapes::ListShape.new(name: 'SupportedDataTransferTypeList')
    SupportedFieldTypeDetails = Shapes::StructureShape.new(name: 'SupportedFieldTypeDetails')
    SupportedOperatorList = Shapes::ListShape.new(name: 'SupportedOperatorList')
    SupportedValueList = Shapes::ListShape.new(name: 'SupportedValueList')
    SupportedWriteOperationList = Shapes::ListShape.new(name: 'SupportedWriteOperationList')
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
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TokenUrl = Shapes::StringShape.new(name: 'TokenUrl')
    TokenUrlCustomProperties = Shapes::MapShape.new(name: 'TokenUrlCustomProperties')
    TokenUrlList = Shapes::ListShape.new(name: 'TokenUrlList')
    TrendmicroConnectorOperator = Shapes::StringShape.new(name: 'TrendmicroConnectorOperator')
    TrendmicroConnectorProfileCredentials = Shapes::StructureShape.new(name: 'TrendmicroConnectorProfileCredentials')
    TrendmicroConnectorProfileProperties = Shapes::StructureShape.new(name: 'TrendmicroConnectorProfileProperties')
    TrendmicroMetadata = Shapes::StructureShape.new(name: 'TrendmicroMetadata')
    TrendmicroSourceProperties = Shapes::StructureShape.new(name: 'TrendmicroSourceProperties')
    TriggerConfig = Shapes::StructureShape.new(name: 'TriggerConfig')
    TriggerProperties = Shapes::StructureShape.new(name: 'TriggerProperties')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    TriggerTypeList = Shapes::ListShape.new(name: 'TriggerTypeList')
    UnregisterConnectorRequest = Shapes::StructureShape.new(name: 'UnregisterConnectorRequest')
    UnregisterConnectorResponse = Shapes::StructureShape.new(name: 'UnregisterConnectorResponse')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConnectorProfileRequest = Shapes::StructureShape.new(name: 'UpdateConnectorProfileRequest')
    UpdateConnectorProfileResponse = Shapes::StructureShape.new(name: 'UpdateConnectorProfileResponse')
    UpdateConnectorRegistrationRequest = Shapes::StructureShape.new(name: 'UpdateConnectorRegistrationRequest')
    UpdateConnectorRegistrationResponse = Shapes::StructureShape.new(name: 'UpdateConnectorRegistrationResponse')
    UpdateFlowRequest = Shapes::StructureShape.new(name: 'UpdateFlowRequest')
    UpdateFlowResponse = Shapes::StructureShape.new(name: 'UpdateFlowResponse')
    UpdatedBy = Shapes::StringShape.new(name: 'UpdatedBy')
    UpsolverBucketName = Shapes::StringShape.new(name: 'UpsolverBucketName')
    UpsolverDestinationProperties = Shapes::StructureShape.new(name: 'UpsolverDestinationProperties')
    UpsolverMetadata = Shapes::StructureShape.new(name: 'UpsolverMetadata')
    UpsolverS3OutputFormatConfig = Shapes::StructureShape.new(name: 'UpsolverS3OutputFormatConfig')
    Username = Shapes::StringShape.new(name: 'Username')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    VeevaConnectorOperator = Shapes::StringShape.new(name: 'VeevaConnectorOperator')
    VeevaConnectorProfileCredentials = Shapes::StructureShape.new(name: 'VeevaConnectorProfileCredentials')
    VeevaConnectorProfileProperties = Shapes::StructureShape.new(name: 'VeevaConnectorProfileProperties')
    VeevaMetadata = Shapes::StructureShape.new(name: 'VeevaMetadata')
    VeevaSourceProperties = Shapes::StructureShape.new(name: 'VeevaSourceProperties')
    Warehouse = Shapes::StringShape.new(name: 'Warehouse')
    WorkgroupName = Shapes::StringShape.new(name: 'WorkgroupName')
    WriteOperationType = Shapes::StringShape.new(name: 'WriteOperationType')
    ZendeskConnectorOperator = Shapes::StringShape.new(name: 'ZendeskConnectorOperator')
    ZendeskConnectorProfileCredentials = Shapes::StructureShape.new(name: 'ZendeskConnectorProfileCredentials')
    ZendeskConnectorProfileProperties = Shapes::StructureShape.new(name: 'ZendeskConnectorProfileProperties')
    ZendeskDestinationProperties = Shapes::StructureShape.new(name: 'ZendeskDestinationProperties')
    ZendeskMetadata = Shapes::StructureShape.new(name: 'ZendeskMetadata')
    ZendeskSourceProperties = Shapes::StructureShape.new(name: 'ZendeskSourceProperties')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AggregationConfig.add_member(:aggregation_type, Shapes::ShapeRef.new(shape: AggregationType, location_name: "aggregationType"))
    AggregationConfig.add_member(:target_file_size, Shapes::ShapeRef.new(shape: Long, location_name: "targetFileSize"))
    AggregationConfig.struct_class = Types::AggregationConfig

    AmplitudeConnectorProfileCredentials.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKey, required: true, location_name: "apiKey"))
    AmplitudeConnectorProfileCredentials.add_member(:secret_key, Shapes::ShapeRef.new(shape: SecretKey, required: true, location_name: "secretKey"))
    AmplitudeConnectorProfileCredentials.struct_class = Types::AmplitudeConnectorProfileCredentials

    AmplitudeConnectorProfileProperties.struct_class = Types::AmplitudeConnectorProfileProperties

    AmplitudeMetadata.struct_class = Types::AmplitudeMetadata

    AmplitudeSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    AmplitudeSourceProperties.struct_class = Types::AmplitudeSourceProperties

    ApiKeyCredentials.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKey, required: true, location_name: "apiKey"))
    ApiKeyCredentials.add_member(:api_secret_key, Shapes::ShapeRef.new(shape: ApiSecretKey, location_name: "apiSecretKey"))
    ApiKeyCredentials.struct_class = Types::ApiKeyCredentials

    AuthCodeUrlList.member = Shapes::ShapeRef.new(shape: AuthCodeUrl)

    AuthParameter.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    AuthParameter.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRequired"))
    AuthParameter.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "label"))
    AuthParameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AuthParameter.add_member(:is_sensitive_field, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSensitiveField"))
    AuthParameter.add_member(:connector_supplied_values, Shapes::ShapeRef.new(shape: ConnectorSuppliedValueList, location_name: "connectorSuppliedValues"))
    AuthParameter.struct_class = Types::AuthParameter

    AuthParameterList.member = Shapes::ShapeRef.new(shape: AuthParameter)

    AuthenticationConfig.add_member(:is_basic_auth_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBasicAuthSupported"))
    AuthenticationConfig.add_member(:is_api_key_auth_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "isApiKeyAuthSupported"))
    AuthenticationConfig.add_member(:is_o_auth_2_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "isOAuth2Supported"))
    AuthenticationConfig.add_member(:is_custom_auth_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCustomAuthSupported"))
    AuthenticationConfig.add_member(:o_auth_2_defaults, Shapes::ShapeRef.new(shape: OAuth2Defaults, location_name: "oAuth2Defaults"))
    AuthenticationConfig.add_member(:custom_auth_configs, Shapes::ShapeRef.new(shape: CustomAuthConfigList, location_name: "customAuthConfigs"))
    AuthenticationConfig.struct_class = Types::AuthenticationConfig

    BasicAuthCredentials.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "username"))
    BasicAuthCredentials.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "password"))
    BasicAuthCredentials.struct_class = Types::BasicAuthCredentials

    CancelFlowExecutionsRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    CancelFlowExecutionsRequest.add_member(:execution_ids, Shapes::ShapeRef.new(shape: ExecutionIds, location_name: "executionIds"))
    CancelFlowExecutionsRequest.struct_class = Types::CancelFlowExecutionsRequest

    CancelFlowExecutionsResponse.add_member(:invalid_executions, Shapes::ShapeRef.new(shape: ExecutionIds, location_name: "invalidExecutions"))
    CancelFlowExecutionsResponse.struct_class = Types::CancelFlowExecutionsResponse

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
    ConnectorConfiguration.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    ConnectorConfiguration.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "connectorLabel"))
    ConnectorConfiguration.add_member(:connector_description, Shapes::ShapeRef.new(shape: ConnectorDescription, location_name: "connectorDescription"))
    ConnectorConfiguration.add_member(:connector_owner, Shapes::ShapeRef.new(shape: ConnectorOwner, location_name: "connectorOwner"))
    ConnectorConfiguration.add_member(:connector_name, Shapes::ShapeRef.new(shape: ConnectorName, location_name: "connectorName"))
    ConnectorConfiguration.add_member(:connector_version, Shapes::ShapeRef.new(shape: ConnectorVersion, location_name: "connectorVersion"))
    ConnectorConfiguration.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "connectorArn"))
    ConnectorConfiguration.add_member(:connector_modes, Shapes::ShapeRef.new(shape: ConnectorModeList, location_name: "connectorModes"))
    ConnectorConfiguration.add_member(:authentication_config, Shapes::ShapeRef.new(shape: AuthenticationConfig, location_name: "authenticationConfig"))
    ConnectorConfiguration.add_member(:connector_runtime_settings, Shapes::ShapeRef.new(shape: ConnectorRuntimeSettingList, location_name: "connectorRuntimeSettings"))
    ConnectorConfiguration.add_member(:supported_api_versions, Shapes::ShapeRef.new(shape: SupportedApiVersionList, location_name: "supportedApiVersions"))
    ConnectorConfiguration.add_member(:supported_operators, Shapes::ShapeRef.new(shape: SupportedOperatorList, location_name: "supportedOperators"))
    ConnectorConfiguration.add_member(:supported_write_operations, Shapes::ShapeRef.new(shape: SupportedWriteOperationList, location_name: "supportedWriteOperations"))
    ConnectorConfiguration.add_member(:connector_provisioning_type, Shapes::ShapeRef.new(shape: ConnectorProvisioningType, location_name: "connectorProvisioningType"))
    ConnectorConfiguration.add_member(:connector_provisioning_config, Shapes::ShapeRef.new(shape: ConnectorProvisioningConfig, location_name: "connectorProvisioningConfig"))
    ConnectorConfiguration.add_member(:logo_url, Shapes::ShapeRef.new(shape: LogoURL, location_name: "logoURL"))
    ConnectorConfiguration.add_member(:registered_at, Shapes::ShapeRef.new(shape: Date, location_name: "registeredAt"))
    ConnectorConfiguration.add_member(:registered_by, Shapes::ShapeRef.new(shape: RegisteredBy, location_name: "registeredBy"))
    ConnectorConfiguration.add_member(:supported_data_transfer_types, Shapes::ShapeRef.new(shape: SupportedDataTransferTypeList, location_name: "supportedDataTransferTypes"))
    ConnectorConfiguration.add_member(:supported_data_transfer_apis, Shapes::ShapeRef.new(shape: SupportedDataTransferApis, location_name: "supportedDataTransferApis"))
    ConnectorConfiguration.struct_class = Types::ConnectorConfiguration

    ConnectorConfigurationsMap.key = Shapes::ShapeRef.new(shape: ConnectorType)
    ConnectorConfigurationsMap.value = Shapes::ShapeRef.new(shape: ConnectorConfiguration)

    ConnectorDetail.add_member(:connector_description, Shapes::ShapeRef.new(shape: ConnectorDescription, location_name: "connectorDescription"))
    ConnectorDetail.add_member(:connector_name, Shapes::ShapeRef.new(shape: ConnectorName, location_name: "connectorName"))
    ConnectorDetail.add_member(:connector_owner, Shapes::ShapeRef.new(shape: ConnectorOwner, location_name: "connectorOwner"))
    ConnectorDetail.add_member(:connector_version, Shapes::ShapeRef.new(shape: ConnectorVersion, location_name: "connectorVersion"))
    ConnectorDetail.add_member(:application_type, Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationType"))
    ConnectorDetail.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    ConnectorDetail.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "connectorLabel"))
    ConnectorDetail.add_member(:registered_at, Shapes::ShapeRef.new(shape: Date, location_name: "registeredAt"))
    ConnectorDetail.add_member(:registered_by, Shapes::ShapeRef.new(shape: RegisteredBy, location_name: "registeredBy"))
    ConnectorDetail.add_member(:connector_provisioning_type, Shapes::ShapeRef.new(shape: ConnectorProvisioningType, location_name: "connectorProvisioningType"))
    ConnectorDetail.add_member(:connector_modes, Shapes::ShapeRef.new(shape: ConnectorModeList, location_name: "connectorModes"))
    ConnectorDetail.add_member(:supported_data_transfer_types, Shapes::ShapeRef.new(shape: SupportedDataTransferTypeList, location_name: "supportedDataTransferTypes"))
    ConnectorDetail.struct_class = Types::ConnectorDetail

    ConnectorEntity.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ConnectorEntity.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "label"))
    ConnectorEntity.add_member(:has_nested_entities, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasNestedEntities"))
    ConnectorEntity.struct_class = Types::ConnectorEntity

    ConnectorEntityField.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "identifier"))
    ConnectorEntityField.add_member(:parent_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "parentIdentifier"))
    ConnectorEntityField.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "label"))
    ConnectorEntityField.add_member(:is_primary_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimaryKey"))
    ConnectorEntityField.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    ConnectorEntityField.add_member(:is_deprecated, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDeprecated"))
    ConnectorEntityField.add_member(:supported_field_type_details, Shapes::ShapeRef.new(shape: SupportedFieldTypeDetails, location_name: "supportedFieldTypeDetails"))
    ConnectorEntityField.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ConnectorEntityField.add_member(:source_properties, Shapes::ShapeRef.new(shape: SourceFieldProperties, location_name: "sourceProperties"))
    ConnectorEntityField.add_member(:destination_properties, Shapes::ShapeRef.new(shape: DestinationFieldProperties, location_name: "destinationProperties"))
    ConnectorEntityField.add_member(:custom_properties, Shapes::ShapeRef.new(shape: CustomProperties, location_name: "customProperties"))
    ConnectorEntityField.struct_class = Types::ConnectorEntityField

    ConnectorEntityFieldList.member = Shapes::ShapeRef.new(shape: ConnectorEntityField)

    ConnectorEntityList.member = Shapes::ShapeRef.new(shape: ConnectorEntity)

    ConnectorEntityMap.key = Shapes::ShapeRef.new(shape: Group)
    ConnectorEntityMap.value = Shapes::ShapeRef.new(shape: ConnectorEntityList)

    ConnectorList.member = Shapes::ShapeRef.new(shape: ConnectorDetail)

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
    ConnectorMetadata.add_member(:upsolver, Shapes::ShapeRef.new(shape: UpsolverMetadata, location_name: "Upsolver"))
    ConnectorMetadata.add_member(:customer_profiles, Shapes::ShapeRef.new(shape: CustomerProfilesMetadata, location_name: "CustomerProfiles"))
    ConnectorMetadata.add_member(:honeycode, Shapes::ShapeRef.new(shape: HoneycodeMetadata, location_name: "Honeycode"))
    ConnectorMetadata.add_member(:sapo_data, Shapes::ShapeRef.new(shape: SAPODataMetadata, location_name: "SAPOData"))
    ConnectorMetadata.add_member(:pardot, Shapes::ShapeRef.new(shape: PardotMetadata, location_name: "Pardot"))
    ConnectorMetadata.struct_class = Types::ConnectorMetadata

    ConnectorModeList.member = Shapes::ShapeRef.new(shape: ConnectorMode)

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
    ConnectorOperator.add_member(:sapo_data, Shapes::ShapeRef.new(shape: SAPODataConnectorOperator, location_name: "SAPOData"))
    ConnectorOperator.add_member(:custom_connector, Shapes::ShapeRef.new(shape: Operator, location_name: "CustomConnector"))
    ConnectorOperator.add_member(:pardot, Shapes::ShapeRef.new(shape: PardotConnectorOperator, location_name: "Pardot"))
    ConnectorOperator.struct_class = Types::ConnectorOperator

    ConnectorProfile.add_member(:connector_profile_arn, Shapes::ShapeRef.new(shape: ConnectorProfileArn, location_name: "connectorProfileArn"))
    ConnectorProfile.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    ConnectorProfile.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    ConnectorProfile.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "connectorLabel"))
    ConnectorProfile.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, location_name: "connectionMode"))
    ConnectorProfile.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "credentialsArn"))
    ConnectorProfile.add_member(:connector_profile_properties, Shapes::ShapeRef.new(shape: ConnectorProfileProperties, location_name: "connectorProfileProperties"))
    ConnectorProfile.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    ConnectorProfile.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedAt"))
    ConnectorProfile.add_member(:private_connection_provisioning_state, Shapes::ShapeRef.new(shape: PrivateConnectionProvisioningState, location_name: "privateConnectionProvisioningState"))
    ConnectorProfile.struct_class = Types::ConnectorProfile

    ConnectorProfileConfig.add_member(:connector_profile_properties, Shapes::ShapeRef.new(shape: ConnectorProfileProperties, required: true, location_name: "connectorProfileProperties"))
    ConnectorProfileConfig.add_member(:connector_profile_credentials, Shapes::ShapeRef.new(shape: ConnectorProfileCredentials, location_name: "connectorProfileCredentials"))
    ConnectorProfileConfig.struct_class = Types::ConnectorProfileConfig

    ConnectorProfileCredentials.add_member(:amplitude, Shapes::ShapeRef.new(shape: AmplitudeConnectorProfileCredentials, location_name: "Amplitude"))
    ConnectorProfileCredentials.add_member(:datadog, Shapes::ShapeRef.new(shape: DatadogConnectorProfileCredentials, location_name: "Datadog"))
    ConnectorProfileCredentials.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceConnectorProfileCredentials, location_name: "Dynatrace"))
    ConnectorProfileCredentials.add_member(:google_analytics, Shapes::ShapeRef.new(shape: GoogleAnalyticsConnectorProfileCredentials, location_name: "GoogleAnalytics"))
    ConnectorProfileCredentials.add_member(:honeycode, Shapes::ShapeRef.new(shape: HoneycodeConnectorProfileCredentials, location_name: "Honeycode"))
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
    ConnectorProfileCredentials.add_member(:sapo_data, Shapes::ShapeRef.new(shape: SAPODataConnectorProfileCredentials, location_name: "SAPOData"))
    ConnectorProfileCredentials.add_member(:custom_connector, Shapes::ShapeRef.new(shape: CustomConnectorProfileCredentials, location_name: "CustomConnector"))
    ConnectorProfileCredentials.add_member(:pardot, Shapes::ShapeRef.new(shape: PardotConnectorProfileCredentials, location_name: "Pardot"))
    ConnectorProfileCredentials.struct_class = Types::ConnectorProfileCredentials

    ConnectorProfileDetailList.member = Shapes::ShapeRef.new(shape: ConnectorProfile)

    ConnectorProfileNameList.member = Shapes::ShapeRef.new(shape: ConnectorProfileName)

    ConnectorProfileProperties.add_member(:amplitude, Shapes::ShapeRef.new(shape: AmplitudeConnectorProfileProperties, location_name: "Amplitude"))
    ConnectorProfileProperties.add_member(:datadog, Shapes::ShapeRef.new(shape: DatadogConnectorProfileProperties, location_name: "Datadog"))
    ConnectorProfileProperties.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceConnectorProfileProperties, location_name: "Dynatrace"))
    ConnectorProfileProperties.add_member(:google_analytics, Shapes::ShapeRef.new(shape: GoogleAnalyticsConnectorProfileProperties, location_name: "GoogleAnalytics"))
    ConnectorProfileProperties.add_member(:honeycode, Shapes::ShapeRef.new(shape: HoneycodeConnectorProfileProperties, location_name: "Honeycode"))
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
    ConnectorProfileProperties.add_member(:sapo_data, Shapes::ShapeRef.new(shape: SAPODataConnectorProfileProperties, location_name: "SAPOData"))
    ConnectorProfileProperties.add_member(:custom_connector, Shapes::ShapeRef.new(shape: CustomConnectorProfileProperties, location_name: "CustomConnector"))
    ConnectorProfileProperties.add_member(:pardot, Shapes::ShapeRef.new(shape: PardotConnectorProfileProperties, location_name: "Pardot"))
    ConnectorProfileProperties.struct_class = Types::ConnectorProfileProperties

    ConnectorProvisioningConfig.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaConnectorProvisioningConfig, location_name: "lambda"))
    ConnectorProvisioningConfig.struct_class = Types::ConnectorProvisioningConfig

    ConnectorRuntimeSetting.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    ConnectorRuntimeSetting.add_member(:data_type, Shapes::ShapeRef.new(shape: ConnectorRuntimeSettingDataType, location_name: "dataType"))
    ConnectorRuntimeSetting.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRequired"))
    ConnectorRuntimeSetting.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "label"))
    ConnectorRuntimeSetting.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ConnectorRuntimeSetting.add_member(:scope, Shapes::ShapeRef.new(shape: ConnectorRuntimeSettingScope, location_name: "scope"))
    ConnectorRuntimeSetting.add_member(:connector_supplied_value_options, Shapes::ShapeRef.new(shape: ConnectorSuppliedValueOptionList, location_name: "connectorSuppliedValueOptions"))
    ConnectorRuntimeSetting.struct_class = Types::ConnectorRuntimeSetting

    ConnectorRuntimeSettingList.member = Shapes::ShapeRef.new(shape: ConnectorRuntimeSetting)

    ConnectorServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConnectorServerException.struct_class = Types::ConnectorServerException

    ConnectorSuppliedValueList.member = Shapes::ShapeRef.new(shape: ConnectorSuppliedValue)

    ConnectorSuppliedValueOptionList.member = Shapes::ShapeRef.new(shape: ConnectorSuppliedValue)

    ConnectorTypeList.member = Shapes::ShapeRef.new(shape: ConnectorType)

    CreateConnectorProfileRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, required: true, location_name: "connectorProfileName"))
    CreateConnectorProfileRequest.add_member(:kms_arn, Shapes::ShapeRef.new(shape: KMSArn, location_name: "kmsArn"))
    CreateConnectorProfileRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, required: true, location_name: "connectorType"))
    CreateConnectorProfileRequest.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "connectorLabel"))
    CreateConnectorProfileRequest.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, required: true, location_name: "connectionMode"))
    CreateConnectorProfileRequest.add_member(:connector_profile_config, Shapes::ShapeRef.new(shape: ConnectorProfileConfig, required: true, location_name: "connectorProfileConfig"))
    CreateConnectorProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
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
    CreateFlowRequest.add_member(:metadata_catalog_config, Shapes::ShapeRef.new(shape: MetadataCatalogConfig, location_name: "metadataCatalogConfig"))
    CreateFlowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateFlowRequest.struct_class = Types::CreateFlowRequest

    CreateFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    CreateFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    CreateFlowResponse.struct_class = Types::CreateFlowResponse

    CredentialsMap.key = Shapes::ShapeRef.new(shape: CredentialsMapKey)
    CredentialsMap.value = Shapes::ShapeRef.new(shape: CredentialsMapValue)

    CustomAuthConfig.add_member(:custom_authentication_type, Shapes::ShapeRef.new(shape: CustomAuthenticationType, location_name: "customAuthenticationType"))
    CustomAuthConfig.add_member(:auth_parameters, Shapes::ShapeRef.new(shape: AuthParameterList, location_name: "authParameters"))
    CustomAuthConfig.struct_class = Types::CustomAuthConfig

    CustomAuthConfigList.member = Shapes::ShapeRef.new(shape: CustomAuthConfig)

    CustomAuthCredentials.add_member(:custom_authentication_type, Shapes::ShapeRef.new(shape: CustomAuthenticationType, required: true, location_name: "customAuthenticationType"))
    CustomAuthCredentials.add_member(:credentials_map, Shapes::ShapeRef.new(shape: CredentialsMap, location_name: "credentialsMap"))
    CustomAuthCredentials.struct_class = Types::CustomAuthCredentials

    CustomConnectorDestinationProperties.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "entityName"))
    CustomConnectorDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    CustomConnectorDestinationProperties.add_member(:write_operation_type, Shapes::ShapeRef.new(shape: WriteOperationType, location_name: "writeOperationType"))
    CustomConnectorDestinationProperties.add_member(:id_field_names, Shapes::ShapeRef.new(shape: IdFieldNameList, location_name: "idFieldNames"))
    CustomConnectorDestinationProperties.add_member(:custom_properties, Shapes::ShapeRef.new(shape: CustomProperties, location_name: "customProperties"))
    CustomConnectorDestinationProperties.struct_class = Types::CustomConnectorDestinationProperties

    CustomConnectorProfileCredentials.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "authenticationType"))
    CustomConnectorProfileCredentials.add_member(:basic, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basic"))
    CustomConnectorProfileCredentials.add_member(:oauth2, Shapes::ShapeRef.new(shape: OAuth2Credentials, location_name: "oauth2"))
    CustomConnectorProfileCredentials.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKeyCredentials, location_name: "apiKey"))
    CustomConnectorProfileCredentials.add_member(:custom, Shapes::ShapeRef.new(shape: CustomAuthCredentials, location_name: "custom"))
    CustomConnectorProfileCredentials.struct_class = Types::CustomConnectorProfileCredentials

    CustomConnectorProfileProperties.add_member(:profile_properties, Shapes::ShapeRef.new(shape: ProfilePropertiesMap, location_name: "profileProperties"))
    CustomConnectorProfileProperties.add_member(:o_auth_2_properties, Shapes::ShapeRef.new(shape: OAuth2Properties, location_name: "oAuth2Properties"))
    CustomConnectorProfileProperties.struct_class = Types::CustomConnectorProfileProperties

    CustomConnectorSourceProperties.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "entityName"))
    CustomConnectorSourceProperties.add_member(:custom_properties, Shapes::ShapeRef.new(shape: CustomProperties, location_name: "customProperties"))
    CustomConnectorSourceProperties.add_member(:data_transfer_api, Shapes::ShapeRef.new(shape: DataTransferApi, location_name: "dataTransferApi"))
    CustomConnectorSourceProperties.struct_class = Types::CustomConnectorSourceProperties

    CustomProperties.key = Shapes::ShapeRef.new(shape: CustomPropertyKey)
    CustomProperties.value = Shapes::ShapeRef.new(shape: CustomPropertyValue)

    CustomerProfilesDestinationProperties.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CustomerProfilesDestinationProperties.add_member(:object_type_name, Shapes::ShapeRef.new(shape: ObjectTypeName, location_name: "objectTypeName"))
    CustomerProfilesDestinationProperties.struct_class = Types::CustomerProfilesDestinationProperties

    CustomerProfilesMetadata.struct_class = Types::CustomerProfilesMetadata

    DataTransferApi.add_member(:name, Shapes::ShapeRef.new(shape: DataTransferApiTypeName, location_name: "Name"))
    DataTransferApi.add_member(:type, Shapes::ShapeRef.new(shape: DataTransferApiType, location_name: "Type"))
    DataTransferApi.struct_class = Types::DataTransferApi

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

    DescribeConnectorEntityRequest.add_member(:connector_entity_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "connectorEntityName"))
    DescribeConnectorEntityRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    DescribeConnectorEntityRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    DescribeConnectorEntityRequest.add_member(:api_version, Shapes::ShapeRef.new(shape: ApiVersion, location_name: "apiVersion"))
    DescribeConnectorEntityRequest.struct_class = Types::DescribeConnectorEntityRequest

    DescribeConnectorEntityResponse.add_member(:connector_entity_fields, Shapes::ShapeRef.new(shape: ConnectorEntityFieldList, required: true, location_name: "connectorEntityFields"))
    DescribeConnectorEntityResponse.struct_class = Types::DescribeConnectorEntityResponse

    DescribeConnectorProfilesRequest.add_member(:connector_profile_names, Shapes::ShapeRef.new(shape: ConnectorProfileNameList, location_name: "connectorProfileNames"))
    DescribeConnectorProfilesRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    DescribeConnectorProfilesRequest.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "connectorLabel"))
    DescribeConnectorProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeConnectorProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConnectorProfilesRequest.struct_class = Types::DescribeConnectorProfilesRequest

    DescribeConnectorProfilesResponse.add_member(:connector_profile_details, Shapes::ShapeRef.new(shape: ConnectorProfileDetailList, location_name: "connectorProfileDetails"))
    DescribeConnectorProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConnectorProfilesResponse.struct_class = Types::DescribeConnectorProfilesResponse

    DescribeConnectorRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, required: true, location_name: "connectorType"))
    DescribeConnectorRequest.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "connectorLabel"))
    DescribeConnectorRequest.struct_class = Types::DescribeConnectorRequest

    DescribeConnectorResponse.add_member(:connector_configuration, Shapes::ShapeRef.new(shape: ConnectorConfiguration, location_name: "connectorConfiguration"))
    DescribeConnectorResponse.struct_class = Types::DescribeConnectorResponse

    DescribeConnectorsRequest.add_member(:connector_types, Shapes::ShapeRef.new(shape: ConnectorTypeList, location_name: "connectorTypes"))
    DescribeConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConnectorsRequest.struct_class = Types::DescribeConnectorsRequest

    DescribeConnectorsResponse.add_member(:connector_configurations, Shapes::ShapeRef.new(shape: ConnectorConfigurationsMap, location_name: "connectorConfigurations"))
    DescribeConnectorsResponse.add_member(:connectors, Shapes::ShapeRef.new(shape: ConnectorList, location_name: "connectors"))
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
    DescribeFlowResponse.add_member(:metadata_catalog_config, Shapes::ShapeRef.new(shape: MetadataCatalogConfig, location_name: "metadataCatalogConfig"))
    DescribeFlowResponse.add_member(:last_run_metadata_catalog_details, Shapes::ShapeRef.new(shape: MetadataCatalogDetails, location_name: "lastRunMetadataCatalogDetails"))
    DescribeFlowResponse.add_member(:schema_version, Shapes::ShapeRef.new(shape: Long, location_name: "schemaVersion"))
    DescribeFlowResponse.struct_class = Types::DescribeFlowResponse

    DestinationConnectorProperties.add_member(:redshift, Shapes::ShapeRef.new(shape: RedshiftDestinationProperties, location_name: "Redshift"))
    DestinationConnectorProperties.add_member(:s3, Shapes::ShapeRef.new(shape: S3DestinationProperties, location_name: "S3"))
    DestinationConnectorProperties.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceDestinationProperties, location_name: "Salesforce"))
    DestinationConnectorProperties.add_member(:snowflake, Shapes::ShapeRef.new(shape: SnowflakeDestinationProperties, location_name: "Snowflake"))
    DestinationConnectorProperties.add_member(:event_bridge, Shapes::ShapeRef.new(shape: EventBridgeDestinationProperties, location_name: "EventBridge"))
    DestinationConnectorProperties.add_member(:lookout_metrics, Shapes::ShapeRef.new(shape: LookoutMetricsDestinationProperties, location_name: "LookoutMetrics"))
    DestinationConnectorProperties.add_member(:upsolver, Shapes::ShapeRef.new(shape: UpsolverDestinationProperties, location_name: "Upsolver"))
    DestinationConnectorProperties.add_member(:honeycode, Shapes::ShapeRef.new(shape: HoneycodeDestinationProperties, location_name: "Honeycode"))
    DestinationConnectorProperties.add_member(:customer_profiles, Shapes::ShapeRef.new(shape: CustomerProfilesDestinationProperties, location_name: "CustomerProfiles"))
    DestinationConnectorProperties.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskDestinationProperties, location_name: "Zendesk"))
    DestinationConnectorProperties.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoDestinationProperties, location_name: "Marketo"))
    DestinationConnectorProperties.add_member(:custom_connector, Shapes::ShapeRef.new(shape: CustomConnectorDestinationProperties, location_name: "CustomConnector"))
    DestinationConnectorProperties.add_member(:sapo_data, Shapes::ShapeRef.new(shape: SAPODataDestinationProperties, location_name: "SAPOData"))
    DestinationConnectorProperties.struct_class = Types::DestinationConnectorProperties

    DestinationFieldProperties.add_member(:is_creatable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCreatable"))
    DestinationFieldProperties.add_member(:is_nullable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isNullable"))
    DestinationFieldProperties.add_member(:is_upsertable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isUpsertable"))
    DestinationFieldProperties.add_member(:is_updatable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isUpdatable"))
    DestinationFieldProperties.add_member(:is_defaulted_on_create, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDefaultedOnCreate"))
    DestinationFieldProperties.add_member(:supported_write_operations, Shapes::ShapeRef.new(shape: SupportedWriteOperationList, location_name: "supportedWriteOperations"))
    DestinationFieldProperties.struct_class = Types::DestinationFieldProperties

    DestinationFlowConfig.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, required: true, location_name: "connectorType"))
    DestinationFlowConfig.add_member(:api_version, Shapes::ShapeRef.new(shape: ApiVersion, location_name: "apiVersion"))
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

    ExecutionIds.member = Shapes::ShapeRef.new(shape: ExecutionId)

    ExecutionRecord.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    ExecutionRecord.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "executionStatus"))
    ExecutionRecord.add_member(:execution_result, Shapes::ShapeRef.new(shape: ExecutionResult, location_name: "executionResult"))
    ExecutionRecord.add_member(:started_at, Shapes::ShapeRef.new(shape: Date, location_name: "startedAt"))
    ExecutionRecord.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedAt"))
    ExecutionRecord.add_member(:data_pull_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "dataPullStartTime"))
    ExecutionRecord.add_member(:data_pull_end_time, Shapes::ShapeRef.new(shape: Date, location_name: "dataPullEndTime"))
    ExecutionRecord.add_member(:metadata_catalog_details, Shapes::ShapeRef.new(shape: MetadataCatalogDetails, location_name: "metadataCatalogDetails"))
    ExecutionRecord.struct_class = Types::ExecutionRecord

    ExecutionResult.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "errorInfo"))
    ExecutionResult.add_member(:bytes_processed, Shapes::ShapeRef.new(shape: Long, location_name: "bytesProcessed"))
    ExecutionResult.add_member(:bytes_written, Shapes::ShapeRef.new(shape: Long, location_name: "bytesWritten"))
    ExecutionResult.add_member(:records_processed, Shapes::ShapeRef.new(shape: Long, location_name: "recordsProcessed"))
    ExecutionResult.struct_class = Types::ExecutionResult

    FieldTypeDetails.add_member(:field_type, Shapes::ShapeRef.new(shape: FieldType, required: true, location_name: "fieldType"))
    FieldTypeDetails.add_member(:filter_operators, Shapes::ShapeRef.new(shape: FilterOperatorList, required: true, location_name: "filterOperators"))
    FieldTypeDetails.add_member(:supported_values, Shapes::ShapeRef.new(shape: SupportedValueList, location_name: "supportedValues"))
    FieldTypeDetails.add_member(:value_regex_pattern, Shapes::ShapeRef.new(shape: String, location_name: "valueRegexPattern"))
    FieldTypeDetails.add_member(:supported_date_format, Shapes::ShapeRef.new(shape: String, location_name: "supportedDateFormat"))
    FieldTypeDetails.add_member(:field_value_range, Shapes::ShapeRef.new(shape: Range, location_name: "fieldValueRange"))
    FieldTypeDetails.add_member(:field_length_range, Shapes::ShapeRef.new(shape: Range, location_name: "fieldLengthRange"))
    FieldTypeDetails.struct_class = Types::FieldTypeDetails

    FilterOperatorList.member = Shapes::ShapeRef.new(shape: Operator)

    FlowDefinition.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    FlowDefinition.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    FlowDefinition.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, location_name: "flowName"))
    FlowDefinition.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    FlowDefinition.add_member(:source_connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "sourceConnectorType"))
    FlowDefinition.add_member(:source_connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "sourceConnectorLabel"))
    FlowDefinition.add_member(:destination_connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "destinationConnectorType"))
    FlowDefinition.add_member(:destination_connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "destinationConnectorLabel"))
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

    GlueDataCatalogConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: GlueDataCatalogIAMRole, required: true, location_name: "roleArn"))
    GlueDataCatalogConfig.add_member(:database_name, Shapes::ShapeRef.new(shape: GlueDataCatalogDatabaseName, required: true, location_name: "databaseName"))
    GlueDataCatalogConfig.add_member(:table_prefix, Shapes::ShapeRef.new(shape: GlueDataCatalogTablePrefix, required: true, location_name: "tablePrefix"))
    GlueDataCatalogConfig.struct_class = Types::GlueDataCatalogConfig

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

    HoneycodeConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    HoneycodeConnectorProfileCredentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    HoneycodeConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    HoneycodeConnectorProfileCredentials.struct_class = Types::HoneycodeConnectorProfileCredentials

    HoneycodeConnectorProfileProperties.struct_class = Types::HoneycodeConnectorProfileProperties

    HoneycodeDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    HoneycodeDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    HoneycodeDestinationProperties.struct_class = Types::HoneycodeDestinationProperties

    HoneycodeMetadata.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: OAuthScopeList, location_name: "oAuthScopes"))
    HoneycodeMetadata.struct_class = Types::HoneycodeMetadata

    IdFieldNameList.member = Shapes::ShapeRef.new(shape: Name)

    IncrementalPullConfig.add_member(:datetime_type_field_name, Shapes::ShapeRef.new(shape: DatetimeTypeFieldName, location_name: "datetimeTypeFieldName"))
    IncrementalPullConfig.struct_class = Types::IncrementalPullConfig

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

    LambdaConnectorProvisioningConfig.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "lambdaArn"))
    LambdaConnectorProvisioningConfig.struct_class = Types::LambdaConnectorProvisioningConfig

    ListConnectorEntitiesRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    ListConnectorEntitiesRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    ListConnectorEntitiesRequest.add_member(:entities_path, Shapes::ShapeRef.new(shape: EntitiesPath, location_name: "entitiesPath"))
    ListConnectorEntitiesRequest.add_member(:api_version, Shapes::ShapeRef.new(shape: ApiVersion, location_name: "apiVersion"))
    ListConnectorEntitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEntitiesMaxResults, location_name: "maxResults"))
    ListConnectorEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConnectorEntitiesRequest.struct_class = Types::ListConnectorEntitiesRequest

    ListConnectorEntitiesResponse.add_member(:connector_entity_map, Shapes::ShapeRef.new(shape: ConnectorEntityMap, required: true, location_name: "connectorEntityMap"))
    ListConnectorEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConnectorEntitiesResponse.struct_class = Types::ListConnectorEntitiesResponse

    ListConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConnectorsRequest.struct_class = Types::ListConnectorsRequest

    ListConnectorsResponse.add_member(:connectors, Shapes::ShapeRef.new(shape: ConnectorList, location_name: "connectors"))
    ListConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConnectorsResponse.struct_class = Types::ListConnectorsResponse

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

    LookoutMetricsDestinationProperties.struct_class = Types::LookoutMetricsDestinationProperties

    MarketoConnectorProfileCredentials.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    MarketoConnectorProfileCredentials.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    MarketoConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    MarketoConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    MarketoConnectorProfileCredentials.struct_class = Types::MarketoConnectorProfileCredentials

    MarketoConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    MarketoConnectorProfileProperties.struct_class = Types::MarketoConnectorProfileProperties

    MarketoDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    MarketoDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    MarketoDestinationProperties.struct_class = Types::MarketoDestinationProperties

    MarketoMetadata.struct_class = Types::MarketoMetadata

    MarketoSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    MarketoSourceProperties.struct_class = Types::MarketoSourceProperties

    MetadataCatalogConfig.add_member(:glue_data_catalog, Shapes::ShapeRef.new(shape: GlueDataCatalogConfig, location_name: "glueDataCatalog"))
    MetadataCatalogConfig.struct_class = Types::MetadataCatalogConfig

    MetadataCatalogDetail.add_member(:catalog_type, Shapes::ShapeRef.new(shape: CatalogType, location_name: "catalogType"))
    MetadataCatalogDetail.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "tableName"))
    MetadataCatalogDetail.add_member(:table_registration_output, Shapes::ShapeRef.new(shape: RegistrationOutput, location_name: "tableRegistrationOutput"))
    MetadataCatalogDetail.add_member(:partition_registration_output, Shapes::ShapeRef.new(shape: RegistrationOutput, location_name: "partitionRegistrationOutput"))
    MetadataCatalogDetail.struct_class = Types::MetadataCatalogDetail

    MetadataCatalogDetails.member = Shapes::ShapeRef.new(shape: MetadataCatalogDetail)

    OAuth2Credentials.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId"))
    OAuth2Credentials.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, location_name: "clientSecret"))
    OAuth2Credentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    OAuth2Credentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    OAuth2Credentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    OAuth2Credentials.struct_class = Types::OAuth2Credentials

    OAuth2CustomParameter.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    OAuth2CustomParameter.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRequired"))
    OAuth2CustomParameter.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "label"))
    OAuth2CustomParameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    OAuth2CustomParameter.add_member(:is_sensitive_field, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSensitiveField"))
    OAuth2CustomParameter.add_member(:connector_supplied_values, Shapes::ShapeRef.new(shape: ConnectorSuppliedValueList, location_name: "connectorSuppliedValues"))
    OAuth2CustomParameter.add_member(:type, Shapes::ShapeRef.new(shape: OAuth2CustomPropType, location_name: "type"))
    OAuth2CustomParameter.struct_class = Types::OAuth2CustomParameter

    OAuth2CustomPropertiesList.member = Shapes::ShapeRef.new(shape: OAuth2CustomParameter)

    OAuth2Defaults.add_member(:oauth_scopes, Shapes::ShapeRef.new(shape: OAuthScopeList, location_name: "oauthScopes"))
    OAuth2Defaults.add_member(:token_urls, Shapes::ShapeRef.new(shape: TokenUrlList, location_name: "tokenUrls"))
    OAuth2Defaults.add_member(:auth_code_urls, Shapes::ShapeRef.new(shape: AuthCodeUrlList, location_name: "authCodeUrls"))
    OAuth2Defaults.add_member(:oauth2_grant_types_supported, Shapes::ShapeRef.new(shape: OAuth2GrantTypeSupportedList, location_name: "oauth2GrantTypesSupported"))
    OAuth2Defaults.add_member(:oauth2_custom_properties, Shapes::ShapeRef.new(shape: OAuth2CustomPropertiesList, location_name: "oauth2CustomProperties"))
    OAuth2Defaults.struct_class = Types::OAuth2Defaults

    OAuth2GrantTypeSupportedList.member = Shapes::ShapeRef.new(shape: OAuth2GrantType)

    OAuth2Properties.add_member(:token_url, Shapes::ShapeRef.new(shape: TokenUrl, required: true, location_name: "tokenUrl"))
    OAuth2Properties.add_member(:o_auth_2_grant_type, Shapes::ShapeRef.new(shape: OAuth2GrantType, required: true, location_name: "oAuth2GrantType"))
    OAuth2Properties.add_member(:token_url_custom_properties, Shapes::ShapeRef.new(shape: TokenUrlCustomProperties, location_name: "tokenUrlCustomProperties"))
    OAuth2Properties.struct_class = Types::OAuth2Properties

    OAuthCredentials.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    OAuthCredentials.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    OAuthCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    OAuthCredentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    OAuthCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    OAuthCredentials.struct_class = Types::OAuthCredentials

    OAuthProperties.add_member(:token_url, Shapes::ShapeRef.new(shape: TokenUrl, required: true, location_name: "tokenUrl"))
    OAuthProperties.add_member(:auth_code_url, Shapes::ShapeRef.new(shape: AuthCodeUrl, required: true, location_name: "authCodeUrl"))
    OAuthProperties.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: OAuthScopeList, required: true, location_name: "oAuthScopes"))
    OAuthProperties.struct_class = Types::OAuthProperties

    OAuthScopeList.member = Shapes::ShapeRef.new(shape: OAuthScope)

    PardotConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    PardotConnectorProfileCredentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    PardotConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    PardotConnectorProfileCredentials.add_member(:client_credentials_arn, Shapes::ShapeRef.new(shape: ClientCredentialsArn, location_name: "clientCredentialsArn"))
    PardotConnectorProfileCredentials.struct_class = Types::PardotConnectorProfileCredentials

    PardotConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, location_name: "instanceUrl"))
    PardotConnectorProfileProperties.add_member(:is_sandbox_environment, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSandboxEnvironment"))
    PardotConnectorProfileProperties.add_member(:business_unit_id, Shapes::ShapeRef.new(shape: BusinessUnitId, location_name: "businessUnitId"))
    PardotConnectorProfileProperties.struct_class = Types::PardotConnectorProfileProperties

    PardotMetadata.struct_class = Types::PardotMetadata

    PardotSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    PardotSourceProperties.struct_class = Types::PardotSourceProperties

    PathPrefixHierarchy.member = Shapes::ShapeRef.new(shape: PathPrefix)

    PrefixConfig.add_member(:prefix_type, Shapes::ShapeRef.new(shape: PrefixType, location_name: "prefixType"))
    PrefixConfig.add_member(:prefix_format, Shapes::ShapeRef.new(shape: PrefixFormat, location_name: "prefixFormat"))
    PrefixConfig.add_member(:path_prefix_hierarchy, Shapes::ShapeRef.new(shape: PathPrefixHierarchy, location_name: "pathPrefixHierarchy"))
    PrefixConfig.struct_class = Types::PrefixConfig

    PrivateConnectionProvisioningState.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionProvisioningStatus, location_name: "status"))
    PrivateConnectionProvisioningState.add_member(:failure_message, Shapes::ShapeRef.new(shape: PrivateConnectionProvisioningFailureMessage, location_name: "failureMessage"))
    PrivateConnectionProvisioningState.add_member(:failure_cause, Shapes::ShapeRef.new(shape: PrivateConnectionProvisioningFailureCause, location_name: "failureCause"))
    PrivateConnectionProvisioningState.struct_class = Types::PrivateConnectionProvisioningState

    ProfilePropertiesMap.key = Shapes::ShapeRef.new(shape: ProfilePropertyKey)
    ProfilePropertiesMap.value = Shapes::ShapeRef.new(shape: ProfilePropertyValue)

    Range.add_member(:maximum, Shapes::ShapeRef.new(shape: Double, location_name: "maximum"))
    Range.add_member(:minimum, Shapes::ShapeRef.new(shape: Double, location_name: "minimum"))
    Range.struct_class = Types::Range

    RedshiftConnectorProfileCredentials.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "username"))
    RedshiftConnectorProfileCredentials.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "password"))
    RedshiftConnectorProfileCredentials.struct_class = Types::RedshiftConnectorProfileCredentials

    RedshiftConnectorProfileProperties.add_member(:database_url, Shapes::ShapeRef.new(shape: DatabaseUrl, location_name: "databaseUrl"))
    RedshiftConnectorProfileProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    RedshiftConnectorProfileProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    RedshiftConnectorProfileProperties.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    RedshiftConnectorProfileProperties.add_member(:data_api_role_arn, Shapes::ShapeRef.new(shape: DataApiRoleArn, location_name: "dataApiRoleArn"))
    RedshiftConnectorProfileProperties.add_member(:is_redshift_serverless, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRedshiftServerless"))
    RedshiftConnectorProfileProperties.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: "clusterIdentifier"))
    RedshiftConnectorProfileProperties.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, location_name: "workgroupName"))
    RedshiftConnectorProfileProperties.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    RedshiftConnectorProfileProperties.struct_class = Types::RedshiftConnectorProfileProperties

    RedshiftDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    RedshiftDestinationProperties.add_member(:intermediate_bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "intermediateBucketName"))
    RedshiftDestinationProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    RedshiftDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    RedshiftDestinationProperties.struct_class = Types::RedshiftDestinationProperties

    RedshiftMetadata.struct_class = Types::RedshiftMetadata

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    RegisterConnectorRequest.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, location_name: "connectorLabel"))
    RegisterConnectorRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegisterConnectorRequest.add_member(:connector_provisioning_type, Shapes::ShapeRef.new(shape: ConnectorProvisioningType, location_name: "connectorProvisioningType"))
    RegisterConnectorRequest.add_member(:connector_provisioning_config, Shapes::ShapeRef.new(shape: ConnectorProvisioningConfig, location_name: "connectorProvisioningConfig"))
    RegisterConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    RegisterConnectorRequest.struct_class = Types::RegisterConnectorRequest

    RegisterConnectorResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "connectorArn"))
    RegisterConnectorResponse.struct_class = Types::RegisterConnectorResponse

    RegistrationOutput.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RegistrationOutput.add_member(:result, Shapes::ShapeRef.new(shape: String, location_name: "result"))
    RegistrationOutput.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "status"))
    RegistrationOutput.struct_class = Types::RegistrationOutput

    ResetConnectorMetadataCacheRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    ResetConnectorMetadataCacheRequest.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "connectorType"))
    ResetConnectorMetadataCacheRequest.add_member(:connector_entity_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "connectorEntityName"))
    ResetConnectorMetadataCacheRequest.add_member(:entities_path, Shapes::ShapeRef.new(shape: EntitiesPath, location_name: "entitiesPath"))
    ResetConnectorMetadataCacheRequest.add_member(:api_version, Shapes::ShapeRef.new(shape: ApiVersion, location_name: "apiVersion"))
    ResetConnectorMetadataCacheRequest.struct_class = Types::ResetConnectorMetadataCacheRequest

    ResetConnectorMetadataCacheResponse.struct_class = Types::ResetConnectorMetadataCacheResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DestinationProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3DestinationProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    S3DestinationProperties.add_member(:s3_output_format_config, Shapes::ShapeRef.new(shape: S3OutputFormatConfig, location_name: "s3OutputFormatConfig"))
    S3DestinationProperties.struct_class = Types::S3DestinationProperties

    S3InputFormatConfig.add_member(:s3_input_file_type, Shapes::ShapeRef.new(shape: S3InputFileType, location_name: "s3InputFileType"))
    S3InputFormatConfig.struct_class = Types::S3InputFormatConfig

    S3Metadata.struct_class = Types::S3Metadata

    S3OutputFormatConfig.add_member(:file_type, Shapes::ShapeRef.new(shape: FileType, location_name: "fileType"))
    S3OutputFormatConfig.add_member(:prefix_config, Shapes::ShapeRef.new(shape: PrefixConfig, location_name: "prefixConfig"))
    S3OutputFormatConfig.add_member(:aggregation_config, Shapes::ShapeRef.new(shape: AggregationConfig, location_name: "aggregationConfig"))
    S3OutputFormatConfig.add_member(:preserve_source_data_typing, Shapes::ShapeRef.new(shape: JavaBoolean, location_name: "preserveSourceDataTyping"))
    S3OutputFormatConfig.struct_class = Types::S3OutputFormatConfig

    S3SourceProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3SourceProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    S3SourceProperties.add_member(:s3_input_format_config, Shapes::ShapeRef.new(shape: S3InputFormatConfig, location_name: "s3InputFormatConfig"))
    S3SourceProperties.struct_class = Types::S3SourceProperties

    SAPODataConnectorProfileCredentials.add_member(:basic_auth_credentials, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    SAPODataConnectorProfileCredentials.add_member(:o_auth_credentials, Shapes::ShapeRef.new(shape: OAuthCredentials, location_name: "oAuthCredentials"))
    SAPODataConnectorProfileCredentials.struct_class = Types::SAPODataConnectorProfileCredentials

    SAPODataConnectorProfileProperties.add_member(:application_host_url, Shapes::ShapeRef.new(shape: ApplicationHostUrl, required: true, location_name: "applicationHostUrl"))
    SAPODataConnectorProfileProperties.add_member(:application_service_path, Shapes::ShapeRef.new(shape: ApplicationServicePath, required: true, location_name: "applicationServicePath"))
    SAPODataConnectorProfileProperties.add_member(:port_number, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "portNumber", metadata: {"box"=>true}))
    SAPODataConnectorProfileProperties.add_member(:client_number, Shapes::ShapeRef.new(shape: ClientNumber, required: true, location_name: "clientNumber"))
    SAPODataConnectorProfileProperties.add_member(:logon_language, Shapes::ShapeRef.new(shape: LogonLanguage, location_name: "logonLanguage"))
    SAPODataConnectorProfileProperties.add_member(:private_link_service_name, Shapes::ShapeRef.new(shape: PrivateLinkServiceName, location_name: "privateLinkServiceName"))
    SAPODataConnectorProfileProperties.add_member(:o_auth_properties, Shapes::ShapeRef.new(shape: OAuthProperties, location_name: "oAuthProperties"))
    SAPODataConnectorProfileProperties.add_member(:disable_sso, Shapes::ShapeRef.new(shape: Boolean, location_name: "disableSSO"))
    SAPODataConnectorProfileProperties.struct_class = Types::SAPODataConnectorProfileProperties

    SAPODataDestinationProperties.add_member(:object_path, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "objectPath"))
    SAPODataDestinationProperties.add_member(:success_response_handling_config, Shapes::ShapeRef.new(shape: SuccessResponseHandlingConfig, location_name: "successResponseHandlingConfig"))
    SAPODataDestinationProperties.add_member(:id_field_names, Shapes::ShapeRef.new(shape: IdFieldNameList, location_name: "idFieldNames"))
    SAPODataDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    SAPODataDestinationProperties.add_member(:write_operation_type, Shapes::ShapeRef.new(shape: WriteOperationType, location_name: "writeOperationType"))
    SAPODataDestinationProperties.struct_class = Types::SAPODataDestinationProperties

    SAPODataMetadata.struct_class = Types::SAPODataMetadata

    SAPODataSourceProperties.add_member(:object_path, Shapes::ShapeRef.new(shape: Object, location_name: "objectPath"))
    SAPODataSourceProperties.struct_class = Types::SAPODataSourceProperties

    SalesforceConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    SalesforceConnectorProfileCredentials.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshToken, location_name: "refreshToken"))
    SalesforceConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    SalesforceConnectorProfileCredentials.add_member(:client_credentials_arn, Shapes::ShapeRef.new(shape: ClientCredentialsArn, location_name: "clientCredentialsArn"))
    SalesforceConnectorProfileCredentials.add_member(:o_auth_2_grant_type, Shapes::ShapeRef.new(shape: OAuth2GrantType, location_name: "oAuth2GrantType"))
    SalesforceConnectorProfileCredentials.add_member(:jwt_token, Shapes::ShapeRef.new(shape: JwtToken, location_name: "jwtToken"))
    SalesforceConnectorProfileCredentials.struct_class = Types::SalesforceConnectorProfileCredentials

    SalesforceConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, location_name: "instanceUrl"))
    SalesforceConnectorProfileProperties.add_member(:is_sandbox_environment, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSandboxEnvironment"))
    SalesforceConnectorProfileProperties.add_member(:use_private_link_for_metadata_and_authorization, Shapes::ShapeRef.new(shape: Boolean, location_name: "usePrivateLinkForMetadataAndAuthorization"))
    SalesforceConnectorProfileProperties.struct_class = Types::SalesforceConnectorProfileProperties

    SalesforceDataTransferApiList.member = Shapes::ShapeRef.new(shape: SalesforceDataTransferApi)

    SalesforceDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    SalesforceDestinationProperties.add_member(:id_field_names, Shapes::ShapeRef.new(shape: IdFieldNameList, location_name: "idFieldNames"))
    SalesforceDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    SalesforceDestinationProperties.add_member(:write_operation_type, Shapes::ShapeRef.new(shape: WriteOperationType, location_name: "writeOperationType"))
    SalesforceDestinationProperties.add_member(:data_transfer_api, Shapes::ShapeRef.new(shape: SalesforceDataTransferApi, location_name: "dataTransferApi"))
    SalesforceDestinationProperties.struct_class = Types::SalesforceDestinationProperties

    SalesforceMetadata.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: OAuthScopeList, location_name: "oAuthScopes"))
    SalesforceMetadata.add_member(:data_transfer_apis, Shapes::ShapeRef.new(shape: SalesforceDataTransferApiList, location_name: "dataTransferApis"))
    SalesforceMetadata.add_member(:oauth2_grant_types_supported, Shapes::ShapeRef.new(shape: OAuth2GrantTypeSupportedList, location_name: "oauth2GrantTypesSupported"))
    SalesforceMetadata.struct_class = Types::SalesforceMetadata

    SalesforceSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    SalesforceSourceProperties.add_member(:enable_dynamic_field_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableDynamicFieldUpdate"))
    SalesforceSourceProperties.add_member(:include_deleted_records, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeDeletedRecords"))
    SalesforceSourceProperties.add_member(:data_transfer_api, Shapes::ShapeRef.new(shape: SalesforceDataTransferApi, location_name: "dataTransferApi"))
    SalesforceSourceProperties.struct_class = Types::SalesforceSourceProperties

    ScheduledTriggerProperties.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "scheduleExpression"))
    ScheduledTriggerProperties.add_member(:data_pull_mode, Shapes::ShapeRef.new(shape: DataPullMode, location_name: "dataPullMode"))
    ScheduledTriggerProperties.add_member(:schedule_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "scheduleStartTime"))
    ScheduledTriggerProperties.add_member(:schedule_end_time, Shapes::ShapeRef.new(shape: Date, location_name: "scheduleEndTime"))
    ScheduledTriggerProperties.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "timezone"))
    ScheduledTriggerProperties.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "scheduleOffset", metadata: {"box"=>true}))
    ScheduledTriggerProperties.add_member(:first_execution_from, Shapes::ShapeRef.new(shape: Date, location_name: "firstExecutionFrom"))
    ScheduledTriggerProperties.add_member(:flow_error_deactivation_threshold, Shapes::ShapeRef.new(shape: FlowErrorDeactivationThreshold, location_name: "flowErrorDeactivationThreshold", metadata: {"box"=>true}))
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
    SourceConnectorProperties.add_member(:sapo_data, Shapes::ShapeRef.new(shape: SAPODataSourceProperties, location_name: "SAPOData"))
    SourceConnectorProperties.add_member(:custom_connector, Shapes::ShapeRef.new(shape: CustomConnectorSourceProperties, location_name: "CustomConnector"))
    SourceConnectorProperties.add_member(:pardot, Shapes::ShapeRef.new(shape: PardotSourceProperties, location_name: "Pardot"))
    SourceConnectorProperties.struct_class = Types::SourceConnectorProperties

    SourceFieldProperties.add_member(:is_retrievable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRetrievable"))
    SourceFieldProperties.add_member(:is_queryable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isQueryable"))
    SourceFieldProperties.add_member(:is_timestamp_field_for_incremental_queries, Shapes::ShapeRef.new(shape: Boolean, location_name: "isTimestampFieldForIncrementalQueries"))
    SourceFieldProperties.struct_class = Types::SourceFieldProperties

    SourceFields.member = Shapes::ShapeRef.new(shape: String)

    SourceFlowConfig.add_member(:connector_type, Shapes::ShapeRef.new(shape: ConnectorType, required: true, location_name: "connectorType"))
    SourceFlowConfig.add_member(:api_version, Shapes::ShapeRef.new(shape: ApiVersion, location_name: "apiVersion"))
    SourceFlowConfig.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "connectorProfileName"))
    SourceFlowConfig.add_member(:source_connector_properties, Shapes::ShapeRef.new(shape: SourceConnectorProperties, required: true, location_name: "sourceConnectorProperties"))
    SourceFlowConfig.add_member(:incremental_pull_config, Shapes::ShapeRef.new(shape: IncrementalPullConfig, location_name: "incrementalPullConfig"))
    SourceFlowConfig.struct_class = Types::SourceFlowConfig

    StartFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    StartFlowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartFlowRequest.struct_class = Types::StartFlowRequest

    StartFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    StartFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    StartFlowResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    StartFlowResponse.struct_class = Types::StartFlowResponse

    StopFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    StopFlowRequest.struct_class = Types::StopFlowRequest

    StopFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    StopFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    StopFlowResponse.struct_class = Types::StopFlowResponse

    SuccessResponseHandlingConfig.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    SuccessResponseHandlingConfig.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName"))
    SuccessResponseHandlingConfig.struct_class = Types::SuccessResponseHandlingConfig

    SupportedApiVersionList.member = Shapes::ShapeRef.new(shape: SupportedApiVersion)

    SupportedDataTransferApis.member = Shapes::ShapeRef.new(shape: DataTransferApi)

    SupportedDataTransferTypeList.member = Shapes::ShapeRef.new(shape: SupportedDataTransferType)

    SupportedFieldTypeDetails.add_member(:v1, Shapes::ShapeRef.new(shape: FieldTypeDetails, required: true, location_name: "v1"))
    SupportedFieldTypeDetails.struct_class = Types::SupportedFieldTypeDetails

    SupportedOperatorList.member = Shapes::ShapeRef.new(shape: Operators)

    SupportedValueList.member = Shapes::ShapeRef.new(shape: Value)

    SupportedWriteOperationList.member = Shapes::ShapeRef.new(shape: WriteOperationType)

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

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TokenUrlCustomProperties.key = Shapes::ShapeRef.new(shape: CustomPropertyKey)
    TokenUrlCustomProperties.value = Shapes::ShapeRef.new(shape: CustomPropertyValue)

    TokenUrlList.member = Shapes::ShapeRef.new(shape: TokenUrl)

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

    UnregisterConnectorRequest.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, required: true, location_name: "connectorLabel"))
    UnregisterConnectorRequest.add_member(:force_delete, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceDelete"))
    UnregisterConnectorRequest.struct_class = Types::UnregisterConnectorRequest

    UnregisterConnectorResponse.struct_class = Types::UnregisterConnectorResponse

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConnectorProfileRequest.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, required: true, location_name: "connectorProfileName"))
    UpdateConnectorProfileRequest.add_member(:connection_mode, Shapes::ShapeRef.new(shape: ConnectionMode, required: true, location_name: "connectionMode"))
    UpdateConnectorProfileRequest.add_member(:connector_profile_config, Shapes::ShapeRef.new(shape: ConnectorProfileConfig, required: true, location_name: "connectorProfileConfig"))
    UpdateConnectorProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateConnectorProfileRequest.struct_class = Types::UpdateConnectorProfileRequest

    UpdateConnectorProfileResponse.add_member(:connector_profile_arn, Shapes::ShapeRef.new(shape: ConnectorProfileArn, location_name: "connectorProfileArn"))
    UpdateConnectorProfileResponse.struct_class = Types::UpdateConnectorProfileResponse

    UpdateConnectorRegistrationRequest.add_member(:connector_label, Shapes::ShapeRef.new(shape: ConnectorLabel, required: true, location_name: "connectorLabel"))
    UpdateConnectorRegistrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateConnectorRegistrationRequest.add_member(:connector_provisioning_config, Shapes::ShapeRef.new(shape: ConnectorProvisioningConfig, location_name: "connectorProvisioningConfig"))
    UpdateConnectorRegistrationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateConnectorRegistrationRequest.struct_class = Types::UpdateConnectorRegistrationRequest

    UpdateConnectorRegistrationResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "connectorArn"))
    UpdateConnectorRegistrationResponse.struct_class = Types::UpdateConnectorRegistrationResponse

    UpdateFlowRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "flowName"))
    UpdateFlowRequest.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "description"))
    UpdateFlowRequest.add_member(:trigger_config, Shapes::ShapeRef.new(shape: TriggerConfig, required: true, location_name: "triggerConfig"))
    UpdateFlowRequest.add_member(:source_flow_config, Shapes::ShapeRef.new(shape: SourceFlowConfig, required: true, location_name: "sourceFlowConfig"))
    UpdateFlowRequest.add_member(:destination_flow_config_list, Shapes::ShapeRef.new(shape: DestinationFlowConfigList, required: true, location_name: "destinationFlowConfigList"))
    UpdateFlowRequest.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, required: true, location_name: "tasks"))
    UpdateFlowRequest.add_member(:metadata_catalog_config, Shapes::ShapeRef.new(shape: MetadataCatalogConfig, location_name: "metadataCatalogConfig"))
    UpdateFlowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateFlowRequest.struct_class = Types::UpdateFlowRequest

    UpdateFlowResponse.add_member(:flow_status, Shapes::ShapeRef.new(shape: FlowStatus, location_name: "flowStatus"))
    UpdateFlowResponse.struct_class = Types::UpdateFlowResponse

    UpsolverDestinationProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: UpsolverBucketName, required: true, location_name: "bucketName"))
    UpsolverDestinationProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "bucketPrefix"))
    UpsolverDestinationProperties.add_member(:s3_output_format_config, Shapes::ShapeRef.new(shape: UpsolverS3OutputFormatConfig, required: true, location_name: "s3OutputFormatConfig"))
    UpsolverDestinationProperties.struct_class = Types::UpsolverDestinationProperties

    UpsolverMetadata.struct_class = Types::UpsolverMetadata

    UpsolverS3OutputFormatConfig.add_member(:file_type, Shapes::ShapeRef.new(shape: FileType, location_name: "fileType"))
    UpsolverS3OutputFormatConfig.add_member(:prefix_config, Shapes::ShapeRef.new(shape: PrefixConfig, required: true, location_name: "prefixConfig"))
    UpsolverS3OutputFormatConfig.add_member(:aggregation_config, Shapes::ShapeRef.new(shape: AggregationConfig, location_name: "aggregationConfig"))
    UpsolverS3OutputFormatConfig.struct_class = Types::UpsolverS3OutputFormatConfig

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VeevaConnectorProfileCredentials.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "username"))
    VeevaConnectorProfileCredentials.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "password"))
    VeevaConnectorProfileCredentials.struct_class = Types::VeevaConnectorProfileCredentials

    VeevaConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    VeevaConnectorProfileProperties.struct_class = Types::VeevaConnectorProfileProperties

    VeevaMetadata.struct_class = Types::VeevaMetadata

    VeevaSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    VeevaSourceProperties.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "documentType"))
    VeevaSourceProperties.add_member(:include_source_files, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeSourceFiles"))
    VeevaSourceProperties.add_member(:include_renditions, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeRenditions"))
    VeevaSourceProperties.add_member(:include_all_versions, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeAllVersions"))
    VeevaSourceProperties.struct_class = Types::VeevaSourceProperties

    ZendeskConnectorProfileCredentials.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    ZendeskConnectorProfileCredentials.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    ZendeskConnectorProfileCredentials.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    ZendeskConnectorProfileCredentials.add_member(:o_auth_request, Shapes::ShapeRef.new(shape: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    ZendeskConnectorProfileCredentials.struct_class = Types::ZendeskConnectorProfileCredentials

    ZendeskConnectorProfileProperties.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    ZendeskConnectorProfileProperties.struct_class = Types::ZendeskConnectorProfileProperties

    ZendeskDestinationProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "object"))
    ZendeskDestinationProperties.add_member(:id_field_names, Shapes::ShapeRef.new(shape: IdFieldNameList, location_name: "idFieldNames"))
    ZendeskDestinationProperties.add_member(:error_handling_config, Shapes::ShapeRef.new(shape: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    ZendeskDestinationProperties.add_member(:write_operation_type, Shapes::ShapeRef.new(shape: WriteOperationType, location_name: "writeOperationType"))
    ZendeskDestinationProperties.struct_class = Types::ZendeskDestinationProperties

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

      api.add_operation(:cancel_flow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelFlowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/cancel-flow-executions"
        o.input = Shapes::ShapeRef.new(shape: CancelFlowExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelFlowExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

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

      api.add_operation(:describe_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnector"
        o.http_method = "POST"
        o.http_request_uri = "/describe-connector"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
          limit_key: "max_results",
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

      api.add_operation(:list_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/list-connectors"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:register_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterConnector"
        o.http_method = "POST"
        o.http_request_uri = "/register-connector"
        o.input = Shapes::ShapeRef.new(shape: RegisterConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorAuthenticationException)
      end)

      api.add_operation(:reset_connector_metadata_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetConnectorMetadataCache"
        o.http_method = "POST"
        o.http_request_uri = "/reset-connector-metadata-cache"
        o.input = Shapes::ShapeRef.new(shape: ResetConnectorMetadataCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetConnectorMetadataCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:unregister_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnregisterConnector"
        o.http_method = "POST"
        o.http_request_uri = "/unregister-connector"
        o.input = Shapes::ShapeRef.new(shape: UnregisterConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UnregisterConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:update_connector_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectorRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/update-connector-registration"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectorRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectorRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorAuthenticationException)
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
