# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppSync
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AdditionalAuthenticationProvider = Shapes::StructureShape.new(name: 'AdditionalAuthenticationProvider')
    AdditionalAuthenticationProviders = Shapes::ListShape.new(name: 'AdditionalAuthenticationProviders')
    Api = Shapes::StructureShape.new(name: 'Api')
    ApiAssociation = Shapes::StructureShape.new(name: 'ApiAssociation')
    ApiCache = Shapes::StructureShape.new(name: 'ApiCache')
    ApiCacheStatus = Shapes::StringShape.new(name: 'ApiCacheStatus')
    ApiCacheType = Shapes::StringShape.new(name: 'ApiCacheType')
    ApiCachingBehavior = Shapes::StringShape.new(name: 'ApiCachingBehavior')
    ApiKey = Shapes::StructureShape.new(name: 'ApiKey')
    ApiKeyLimitExceededException = Shapes::StructureShape.new(name: 'ApiKeyLimitExceededException')
    ApiKeyValidityOutOfBoundsException = Shapes::StructureShape.new(name: 'ApiKeyValidityOutOfBoundsException')
    ApiKeys = Shapes::ListShape.new(name: 'ApiKeys')
    ApiLimitExceededException = Shapes::StructureShape.new(name: 'ApiLimitExceededException')
    ApiName = Shapes::StringShape.new(name: 'ApiName')
    Apis = Shapes::ListShape.new(name: 'Apis')
    AppSyncRuntime = Shapes::StructureShape.new(name: 'AppSyncRuntime')
    AssociateApiRequest = Shapes::StructureShape.new(name: 'AssociateApiRequest')
    AssociateApiResponse = Shapes::StructureShape.new(name: 'AssociateApiResponse')
    AssociateMergedGraphqlApiRequest = Shapes::StructureShape.new(name: 'AssociateMergedGraphqlApiRequest')
    AssociateMergedGraphqlApiResponse = Shapes::StructureShape.new(name: 'AssociateMergedGraphqlApiResponse')
    AssociateSourceGraphqlApiRequest = Shapes::StructureShape.new(name: 'AssociateSourceGraphqlApiRequest')
    AssociateSourceGraphqlApiResponse = Shapes::StructureShape.new(name: 'AssociateSourceGraphqlApiResponse')
    AssociationStatus = Shapes::StringShape.new(name: 'AssociationStatus')
    AuthMode = Shapes::StructureShape.new(name: 'AuthMode')
    AuthModes = Shapes::ListShape.new(name: 'AuthModes')
    AuthProvider = Shapes::StructureShape.new(name: 'AuthProvider')
    AuthProviders = Shapes::ListShape.new(name: 'AuthProviders')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    AuthorizationConfig = Shapes::StructureShape.new(name: 'AuthorizationConfig')
    AuthorizationType = Shapes::StringShape.new(name: 'AuthorizationType')
    AwsIamConfig = Shapes::StructureShape.new(name: 'AwsIamConfig')
    BadRequestDetail = Shapes::StructureShape.new(name: 'BadRequestDetail')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BadRequestReason = Shapes::StringShape.new(name: 'BadRequestReason')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanValue = Shapes::BooleanShape.new(name: 'BooleanValue')
    CacheHealthMetricsConfig = Shapes::StringShape.new(name: 'CacheHealthMetricsConfig')
    CachingConfig = Shapes::StructureShape.new(name: 'CachingConfig')
    CachingKeys = Shapes::ListShape.new(name: 'CachingKeys')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    ChannelNamespace = Shapes::StructureShape.new(name: 'ChannelNamespace')
    ChannelNamespaces = Shapes::ListShape.new(name: 'ChannelNamespaces')
    Code = Shapes::StringShape.new(name: 'Code')
    CodeError = Shapes::StructureShape.new(name: 'CodeError')
    CodeErrorColumn = Shapes::IntegerShape.new(name: 'CodeErrorColumn')
    CodeErrorLine = Shapes::IntegerShape.new(name: 'CodeErrorLine')
    CodeErrorLocation = Shapes::StructureShape.new(name: 'CodeErrorLocation')
    CodeErrorSpan = Shapes::IntegerShape.new(name: 'CodeErrorSpan')
    CodeErrors = Shapes::ListShape.new(name: 'CodeErrors')
    CognitoConfig = Shapes::StructureShape.new(name: 'CognitoConfig')
    CognitoUserPoolConfig = Shapes::StructureShape.new(name: 'CognitoUserPoolConfig')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConflictDetectionType = Shapes::StringShape.new(name: 'ConflictDetectionType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictHandlerType = Shapes::StringShape.new(name: 'ConflictHandlerType')
    Context = Shapes::StringShape.new(name: 'Context')
    CreateApiCacheRequest = Shapes::StructureShape.new(name: 'CreateApiCacheRequest')
    CreateApiCacheResponse = Shapes::StructureShape.new(name: 'CreateApiCacheResponse')
    CreateApiKeyRequest = Shapes::StructureShape.new(name: 'CreateApiKeyRequest')
    CreateApiKeyResponse = Shapes::StructureShape.new(name: 'CreateApiKeyResponse')
    CreateApiRequest = Shapes::StructureShape.new(name: 'CreateApiRequest')
    CreateApiResponse = Shapes::StructureShape.new(name: 'CreateApiResponse')
    CreateChannelNamespaceRequest = Shapes::StructureShape.new(name: 'CreateChannelNamespaceRequest')
    CreateChannelNamespaceResponse = Shapes::StructureShape.new(name: 'CreateChannelNamespaceResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateDomainNameRequest = Shapes::StructureShape.new(name: 'CreateDomainNameRequest')
    CreateDomainNameResponse = Shapes::StructureShape.new(name: 'CreateDomainNameResponse')
    CreateFunctionRequest = Shapes::StructureShape.new(name: 'CreateFunctionRequest')
    CreateFunctionResponse = Shapes::StructureShape.new(name: 'CreateFunctionResponse')
    CreateGraphqlApiRequest = Shapes::StructureShape.new(name: 'CreateGraphqlApiRequest')
    CreateGraphqlApiResponse = Shapes::StructureShape.new(name: 'CreateGraphqlApiResponse')
    CreateResolverRequest = Shapes::StructureShape.new(name: 'CreateResolverRequest')
    CreateResolverResponse = Shapes::StructureShape.new(name: 'CreateResolverResponse')
    CreateTypeRequest = Shapes::StructureShape.new(name: 'CreateTypeRequest')
    CreateTypeResponse = Shapes::StructureShape.new(name: 'CreateTypeResponse')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceIntrospectionModel = Shapes::StructureShape.new(name: 'DataSourceIntrospectionModel')
    DataSourceIntrospectionModelField = Shapes::StructureShape.new(name: 'DataSourceIntrospectionModelField')
    DataSourceIntrospectionModelFieldType = Shapes::StructureShape.new(name: 'DataSourceIntrospectionModelFieldType')
    DataSourceIntrospectionModelFieldTypeValues = Shapes::ListShape.new(name: 'DataSourceIntrospectionModelFieldTypeValues')
    DataSourceIntrospectionModelFields = Shapes::ListShape.new(name: 'DataSourceIntrospectionModelFields')
    DataSourceIntrospectionModelIndex = Shapes::StructureShape.new(name: 'DataSourceIntrospectionModelIndex')
    DataSourceIntrospectionModelIndexFields = Shapes::ListShape.new(name: 'DataSourceIntrospectionModelIndexFields')
    DataSourceIntrospectionModelIndexes = Shapes::ListShape.new(name: 'DataSourceIntrospectionModelIndexes')
    DataSourceIntrospectionModels = Shapes::ListShape.new(name: 'DataSourceIntrospectionModels')
    DataSourceIntrospectionResult = Shapes::StructureShape.new(name: 'DataSourceIntrospectionResult')
    DataSourceIntrospectionStatus = Shapes::StringShape.new(name: 'DataSourceIntrospectionStatus')
    DataSourceLevelMetricsBehavior = Shapes::StringShape.new(name: 'DataSourceLevelMetricsBehavior')
    DataSourceLevelMetricsConfig = Shapes::StringShape.new(name: 'DataSourceLevelMetricsConfig')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DefaultAction = Shapes::StringShape.new(name: 'DefaultAction')
    DeleteApiCacheRequest = Shapes::StructureShape.new(name: 'DeleteApiCacheRequest')
    DeleteApiCacheResponse = Shapes::StructureShape.new(name: 'DeleteApiCacheResponse')
    DeleteApiKeyRequest = Shapes::StructureShape.new(name: 'DeleteApiKeyRequest')
    DeleteApiKeyResponse = Shapes::StructureShape.new(name: 'DeleteApiKeyResponse')
    DeleteApiRequest = Shapes::StructureShape.new(name: 'DeleteApiRequest')
    DeleteApiResponse = Shapes::StructureShape.new(name: 'DeleteApiResponse')
    DeleteChannelNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteChannelNamespaceRequest')
    DeleteChannelNamespaceResponse = Shapes::StructureShape.new(name: 'DeleteChannelNamespaceResponse')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Shapes::StructureShape.new(name: 'DeleteDataSourceResponse')
    DeleteDomainNameRequest = Shapes::StructureShape.new(name: 'DeleteDomainNameRequest')
    DeleteDomainNameResponse = Shapes::StructureShape.new(name: 'DeleteDomainNameResponse')
    DeleteFunctionRequest = Shapes::StructureShape.new(name: 'DeleteFunctionRequest')
    DeleteFunctionResponse = Shapes::StructureShape.new(name: 'DeleteFunctionResponse')
    DeleteGraphqlApiRequest = Shapes::StructureShape.new(name: 'DeleteGraphqlApiRequest')
    DeleteGraphqlApiResponse = Shapes::StructureShape.new(name: 'DeleteGraphqlApiResponse')
    DeleteResolverRequest = Shapes::StructureShape.new(name: 'DeleteResolverRequest')
    DeleteResolverResponse = Shapes::StructureShape.new(name: 'DeleteResolverResponse')
    DeleteTypeRequest = Shapes::StructureShape.new(name: 'DeleteTypeRequest')
    DeleteTypeResponse = Shapes::StructureShape.new(name: 'DeleteTypeResponse')
    DeltaSyncConfig = Shapes::StructureShape.new(name: 'DeltaSyncConfig')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateApiRequest = Shapes::StructureShape.new(name: 'DisassociateApiRequest')
    DisassociateApiResponse = Shapes::StructureShape.new(name: 'DisassociateApiResponse')
    DisassociateMergedGraphqlApiRequest = Shapes::StructureShape.new(name: 'DisassociateMergedGraphqlApiRequest')
    DisassociateMergedGraphqlApiResponse = Shapes::StructureShape.new(name: 'DisassociateMergedGraphqlApiResponse')
    DisassociateSourceGraphqlApiRequest = Shapes::StructureShape.new(name: 'DisassociateSourceGraphqlApiRequest')
    DisassociateSourceGraphqlApiResponse = Shapes::StructureShape.new(name: 'DisassociateSourceGraphqlApiResponse')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameConfig = Shapes::StructureShape.new(name: 'DomainNameConfig')
    DomainNameConfigs = Shapes::ListShape.new(name: 'DomainNameConfigs')
    DynamodbDataSourceConfig = Shapes::StructureShape.new(name: 'DynamodbDataSourceConfig')
    ElasticsearchDataSourceConfig = Shapes::StructureShape.new(name: 'ElasticsearchDataSourceConfig')
    EnhancedMetricsConfig = Shapes::StructureShape.new(name: 'EnhancedMetricsConfig')
    EnvironmentVariableKey = Shapes::StringShape.new(name: 'EnvironmentVariableKey')
    EnvironmentVariableMap = Shapes::MapShape.new(name: 'EnvironmentVariableMap')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluateCodeErrorDetail = Shapes::StructureShape.new(name: 'EvaluateCodeErrorDetail')
    EvaluateCodeRequest = Shapes::StructureShape.new(name: 'EvaluateCodeRequest')
    EvaluateCodeResponse = Shapes::StructureShape.new(name: 'EvaluateCodeResponse')
    EvaluateMappingTemplateRequest = Shapes::StructureShape.new(name: 'EvaluateMappingTemplateRequest')
    EvaluateMappingTemplateResponse = Shapes::StructureShape.new(name: 'EvaluateMappingTemplateResponse')
    EvaluationResult = Shapes::StringShape.new(name: 'EvaluationResult')
    EventBridgeDataSourceConfig = Shapes::StructureShape.new(name: 'EventBridgeDataSourceConfig')
    EventConfig = Shapes::StructureShape.new(name: 'EventConfig')
    EventLogConfig = Shapes::StructureShape.new(name: 'EventLogConfig')
    EventLogLevel = Shapes::StringShape.new(name: 'EventLogLevel')
    FieldLogLevel = Shapes::StringShape.new(name: 'FieldLogLevel')
    FlushApiCacheRequest = Shapes::StructureShape.new(name: 'FlushApiCacheRequest')
    FlushApiCacheResponse = Shapes::StructureShape.new(name: 'FlushApiCacheResponse')
    FunctionConfiguration = Shapes::StructureShape.new(name: 'FunctionConfiguration')
    Functions = Shapes::ListShape.new(name: 'Functions')
    FunctionsIds = Shapes::ListShape.new(name: 'FunctionsIds')
    GetApiAssociationRequest = Shapes::StructureShape.new(name: 'GetApiAssociationRequest')
    GetApiAssociationResponse = Shapes::StructureShape.new(name: 'GetApiAssociationResponse')
    GetApiCacheRequest = Shapes::StructureShape.new(name: 'GetApiCacheRequest')
    GetApiCacheResponse = Shapes::StructureShape.new(name: 'GetApiCacheResponse')
    GetApiRequest = Shapes::StructureShape.new(name: 'GetApiRequest')
    GetApiResponse = Shapes::StructureShape.new(name: 'GetApiResponse')
    GetChannelNamespaceRequest = Shapes::StructureShape.new(name: 'GetChannelNamespaceRequest')
    GetChannelNamespaceResponse = Shapes::StructureShape.new(name: 'GetChannelNamespaceResponse')
    GetDataSourceIntrospectionRequest = Shapes::StructureShape.new(name: 'GetDataSourceIntrospectionRequest')
    GetDataSourceIntrospectionResponse = Shapes::StructureShape.new(name: 'GetDataSourceIntrospectionResponse')
    GetDataSourceRequest = Shapes::StructureShape.new(name: 'GetDataSourceRequest')
    GetDataSourceResponse = Shapes::StructureShape.new(name: 'GetDataSourceResponse')
    GetDomainNameRequest = Shapes::StructureShape.new(name: 'GetDomainNameRequest')
    GetDomainNameResponse = Shapes::StructureShape.new(name: 'GetDomainNameResponse')
    GetFunctionRequest = Shapes::StructureShape.new(name: 'GetFunctionRequest')
    GetFunctionResponse = Shapes::StructureShape.new(name: 'GetFunctionResponse')
    GetGraphqlApiEnvironmentVariablesRequest = Shapes::StructureShape.new(name: 'GetGraphqlApiEnvironmentVariablesRequest')
    GetGraphqlApiEnvironmentVariablesResponse = Shapes::StructureShape.new(name: 'GetGraphqlApiEnvironmentVariablesResponse')
    GetGraphqlApiRequest = Shapes::StructureShape.new(name: 'GetGraphqlApiRequest')
    GetGraphqlApiResponse = Shapes::StructureShape.new(name: 'GetGraphqlApiResponse')
    GetIntrospectionSchemaRequest = Shapes::StructureShape.new(name: 'GetIntrospectionSchemaRequest')
    GetIntrospectionSchemaResponse = Shapes::StructureShape.new(name: 'GetIntrospectionSchemaResponse')
    GetResolverRequest = Shapes::StructureShape.new(name: 'GetResolverRequest')
    GetResolverResponse = Shapes::StructureShape.new(name: 'GetResolverResponse')
    GetSchemaCreationStatusRequest = Shapes::StructureShape.new(name: 'GetSchemaCreationStatusRequest')
    GetSchemaCreationStatusResponse = Shapes::StructureShape.new(name: 'GetSchemaCreationStatusResponse')
    GetSourceApiAssociationRequest = Shapes::StructureShape.new(name: 'GetSourceApiAssociationRequest')
    GetSourceApiAssociationResponse = Shapes::StructureShape.new(name: 'GetSourceApiAssociationResponse')
    GetTypeRequest = Shapes::StructureShape.new(name: 'GetTypeRequest')
    GetTypeResponse = Shapes::StructureShape.new(name: 'GetTypeResponse')
    GraphQLApiIntrospectionConfig = Shapes::StringShape.new(name: 'GraphQLApiIntrospectionConfig')
    GraphQLApiType = Shapes::StringShape.new(name: 'GraphQLApiType')
    GraphQLApiVisibility = Shapes::StringShape.new(name: 'GraphQLApiVisibility')
    GraphQLSchemaException = Shapes::StructureShape.new(name: 'GraphQLSchemaException')
    GraphqlApi = Shapes::StructureShape.new(name: 'GraphqlApi')
    GraphqlApis = Shapes::ListShape.new(name: 'GraphqlApis')
    HttpDataSourceConfig = Shapes::StructureShape.new(name: 'HttpDataSourceConfig')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    LambdaAuthorizerConfig = Shapes::StructureShape.new(name: 'LambdaAuthorizerConfig')
    LambdaConflictHandlerConfig = Shapes::StructureShape.new(name: 'LambdaConflictHandlerConfig')
    LambdaDataSourceConfig = Shapes::StructureShape.new(name: 'LambdaDataSourceConfig')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListApiKeysRequest = Shapes::StructureShape.new(name: 'ListApiKeysRequest')
    ListApiKeysResponse = Shapes::StructureShape.new(name: 'ListApiKeysResponse')
    ListApisRequest = Shapes::StructureShape.new(name: 'ListApisRequest')
    ListApisResponse = Shapes::StructureShape.new(name: 'ListApisResponse')
    ListChannelNamespacesRequest = Shapes::StructureShape.new(name: 'ListChannelNamespacesRequest')
    ListChannelNamespacesResponse = Shapes::StructureShape.new(name: 'ListChannelNamespacesResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListDomainNamesRequest = Shapes::StructureShape.new(name: 'ListDomainNamesRequest')
    ListDomainNamesResponse = Shapes::StructureShape.new(name: 'ListDomainNamesResponse')
    ListFunctionsRequest = Shapes::StructureShape.new(name: 'ListFunctionsRequest')
    ListFunctionsResponse = Shapes::StructureShape.new(name: 'ListFunctionsResponse')
    ListGraphqlApisRequest = Shapes::StructureShape.new(name: 'ListGraphqlApisRequest')
    ListGraphqlApisResponse = Shapes::StructureShape.new(name: 'ListGraphqlApisResponse')
    ListResolversByFunctionRequest = Shapes::StructureShape.new(name: 'ListResolversByFunctionRequest')
    ListResolversByFunctionResponse = Shapes::StructureShape.new(name: 'ListResolversByFunctionResponse')
    ListResolversRequest = Shapes::StructureShape.new(name: 'ListResolversRequest')
    ListResolversResponse = Shapes::StructureShape.new(name: 'ListResolversResponse')
    ListSourceApiAssociationsRequest = Shapes::StructureShape.new(name: 'ListSourceApiAssociationsRequest')
    ListSourceApiAssociationsResponse = Shapes::StructureShape.new(name: 'ListSourceApiAssociationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTypesByAssociationRequest = Shapes::StructureShape.new(name: 'ListTypesByAssociationRequest')
    ListTypesByAssociationResponse = Shapes::StructureShape.new(name: 'ListTypesByAssociationResponse')
    ListTypesRequest = Shapes::StructureShape.new(name: 'ListTypesRequest')
    ListTypesResponse = Shapes::StructureShape.new(name: 'ListTypesResponse')
    LogConfig = Shapes::StructureShape.new(name: 'LogConfig')
    Logs = Shapes::ListShape.new(name: 'Logs')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MapOfStringToString = Shapes::MapShape.new(name: 'MapOfStringToString')
    MappingTemplate = Shapes::StringShape.new(name: 'MappingTemplate')
    MaxBatchSize = Shapes::IntegerShape.new(name: 'MaxBatchSize')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MergeType = Shapes::StringShape.new(name: 'MergeType')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OpenIDConnectConfig = Shapes::StructureShape.new(name: 'OpenIDConnectConfig')
    OpenSearchServiceDataSourceConfig = Shapes::StructureShape.new(name: 'OpenSearchServiceDataSourceConfig')
    OperationLevelMetricsConfig = Shapes::StringShape.new(name: 'OperationLevelMetricsConfig')
    OutErrors = Shapes::StringShape.new(name: 'OutErrors')
    OutputType = Shapes::StringShape.new(name: 'OutputType')
    OwnerContact = Shapes::StringShape.new(name: 'OwnerContact')
    Ownership = Shapes::StringShape.new(name: 'Ownership')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PipelineConfig = Shapes::StructureShape.new(name: 'PipelineConfig')
    PutGraphqlApiEnvironmentVariablesRequest = Shapes::StructureShape.new(name: 'PutGraphqlApiEnvironmentVariablesRequest')
    PutGraphqlApiEnvironmentVariablesResponse = Shapes::StructureShape.new(name: 'PutGraphqlApiEnvironmentVariablesResponse')
    QueryDepthLimit = Shapes::IntegerShape.new(name: 'QueryDepthLimit')
    RdsDataApiConfig = Shapes::StructureShape.new(name: 'RdsDataApiConfig')
    RdsDataApiConfigDatabaseName = Shapes::StringShape.new(name: 'RdsDataApiConfigDatabaseName')
    RdsDataApiConfigResourceArn = Shapes::StringShape.new(name: 'RdsDataApiConfigResourceArn')
    RdsDataApiConfigSecretArn = Shapes::StringShape.new(name: 'RdsDataApiConfigSecretArn')
    RdsHttpEndpointConfig = Shapes::StructureShape.new(name: 'RdsHttpEndpointConfig')
    RelationalDatabaseDataSourceConfig = Shapes::StructureShape.new(name: 'RelationalDatabaseDataSourceConfig')
    RelationalDatabaseSourceType = Shapes::StringShape.new(name: 'RelationalDatabaseSourceType')
    Resolver = Shapes::StructureShape.new(name: 'Resolver')
    ResolverCountLimit = Shapes::IntegerShape.new(name: 'ResolverCountLimit')
    ResolverKind = Shapes::StringShape.new(name: 'ResolverKind')
    ResolverLevelMetricsBehavior = Shapes::StringShape.new(name: 'ResolverLevelMetricsBehavior')
    ResolverLevelMetricsConfig = Shapes::StringShape.new(name: 'ResolverLevelMetricsConfig')
    Resolvers = Shapes::ListShape.new(name: 'Resolvers')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    RuntimeName = Shapes::StringShape.new(name: 'RuntimeName')
    SchemaStatus = Shapes::StringShape.new(name: 'SchemaStatus')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SourceApiAssociation = Shapes::StructureShape.new(name: 'SourceApiAssociation')
    SourceApiAssociationConfig = Shapes::StructureShape.new(name: 'SourceApiAssociationConfig')
    SourceApiAssociationStatus = Shapes::StringShape.new(name: 'SourceApiAssociationStatus')
    SourceApiAssociationSummary = Shapes::StructureShape.new(name: 'SourceApiAssociationSummary')
    SourceApiAssociationSummaryList = Shapes::ListShape.new(name: 'SourceApiAssociationSummaryList')
    StartDataSourceIntrospectionRequest = Shapes::StructureShape.new(name: 'StartDataSourceIntrospectionRequest')
    StartDataSourceIntrospectionResponse = Shapes::StructureShape.new(name: 'StartDataSourceIntrospectionResponse')
    StartSchemaCreationRequest = Shapes::StructureShape.new(name: 'StartSchemaCreationRequest')
    StartSchemaCreationResponse = Shapes::StructureShape.new(name: 'StartSchemaCreationResponse')
    StartSchemaMergeRequest = Shapes::StructureShape.new(name: 'StartSchemaMergeRequest')
    StartSchemaMergeResponse = Shapes::StructureShape.new(name: 'StartSchemaMergeResponse')
    Stash = Shapes::StringShape.new(name: 'Stash')
    String = Shapes::StringShape.new(name: 'String')
    SyncConfig = Shapes::StructureShape.new(name: 'SyncConfig')
    TTL = Shapes::IntegerShape.new(name: 'TTL')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Template = Shapes::StringShape.new(name: 'Template')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Type = Shapes::StructureShape.new(name: 'Type')
    TypeDefinitionFormat = Shapes::StringShape.new(name: 'TypeDefinitionFormat')
    TypeList = Shapes::ListShape.new(name: 'TypeList')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApiCacheRequest = Shapes::StructureShape.new(name: 'UpdateApiCacheRequest')
    UpdateApiCacheResponse = Shapes::StructureShape.new(name: 'UpdateApiCacheResponse')
    UpdateApiKeyRequest = Shapes::StructureShape.new(name: 'UpdateApiKeyRequest')
    UpdateApiKeyResponse = Shapes::StructureShape.new(name: 'UpdateApiKeyResponse')
    UpdateApiRequest = Shapes::StructureShape.new(name: 'UpdateApiRequest')
    UpdateApiResponse = Shapes::StructureShape.new(name: 'UpdateApiResponse')
    UpdateChannelNamespaceRequest = Shapes::StructureShape.new(name: 'UpdateChannelNamespaceRequest')
    UpdateChannelNamespaceResponse = Shapes::StructureShape.new(name: 'UpdateChannelNamespaceResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Shapes::StructureShape.new(name: 'UpdateDataSourceResponse')
    UpdateDomainNameRequest = Shapes::StructureShape.new(name: 'UpdateDomainNameRequest')
    UpdateDomainNameResponse = Shapes::StructureShape.new(name: 'UpdateDomainNameResponse')
    UpdateFunctionRequest = Shapes::StructureShape.new(name: 'UpdateFunctionRequest')
    UpdateFunctionResponse = Shapes::StructureShape.new(name: 'UpdateFunctionResponse')
    UpdateGraphqlApiRequest = Shapes::StructureShape.new(name: 'UpdateGraphqlApiRequest')
    UpdateGraphqlApiResponse = Shapes::StructureShape.new(name: 'UpdateGraphqlApiResponse')
    UpdateResolverRequest = Shapes::StructureShape.new(name: 'UpdateResolverRequest')
    UpdateResolverResponse = Shapes::StructureShape.new(name: 'UpdateResolverResponse')
    UpdateSourceApiAssociationRequest = Shapes::StructureShape.new(name: 'UpdateSourceApiAssociationRequest')
    UpdateSourceApiAssociationResponse = Shapes::StructureShape.new(name: 'UpdateSourceApiAssociationResponse')
    UpdateTypeRequest = Shapes::StructureShape.new(name: 'UpdateTypeRequest')
    UpdateTypeResponse = Shapes::StructureShape.new(name: 'UpdateTypeResponse')
    UserPoolConfig = Shapes::StructureShape.new(name: 'UserPoolConfig')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AdditionalAuthenticationProvider.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "authenticationType"))
    AdditionalAuthenticationProvider.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: "openIDConnectConfig"))
    AdditionalAuthenticationProvider.add_member(:user_pool_config, Shapes::ShapeRef.new(shape: CognitoUserPoolConfig, location_name: "userPoolConfig"))
    AdditionalAuthenticationProvider.add_member(:lambda_authorizer_config, Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: "lambdaAuthorizerConfig"))
    AdditionalAuthenticationProvider.struct_class = Types::AdditionalAuthenticationProvider

    AdditionalAuthenticationProviders.member = Shapes::ShapeRef.new(shape: AdditionalAuthenticationProvider)

    Api.add_member(:api_id, Shapes::ShapeRef.new(shape: String, location_name: "apiId"))
    Api.add_member(:name, Shapes::ShapeRef.new(shape: ApiName, location_name: "name"))
    Api.add_member(:owner_contact, Shapes::ShapeRef.new(shape: OwnerContact, location_name: "ownerContact"))
    Api.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Api.add_member(:dns, Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: "dns"))
    Api.add_member(:api_arn, Shapes::ShapeRef.new(shape: String, location_name: "apiArn"))
    Api.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    Api.add_member(:xray_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "xrayEnabled"))
    Api.add_member(:waf_web_acl_arn, Shapes::ShapeRef.new(shape: String, location_name: "wafWebAclArn"))
    Api.add_member(:event_config, Shapes::ShapeRef.new(shape: EventConfig, location_name: "eventConfig"))
    Api.struct_class = Types::Api

    ApiAssociation.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    ApiAssociation.add_member(:api_id, Shapes::ShapeRef.new(shape: String, location_name: "apiId"))
    ApiAssociation.add_member(:association_status, Shapes::ShapeRef.new(shape: AssociationStatus, location_name: "associationStatus"))
    ApiAssociation.add_member(:deployment_detail, Shapes::ShapeRef.new(shape: String, location_name: "deploymentDetail"))
    ApiAssociation.struct_class = Types::ApiAssociation

    ApiCache.add_member(:ttl, Shapes::ShapeRef.new(shape: Long, location_name: "ttl"))
    ApiCache.add_member(:api_caching_behavior, Shapes::ShapeRef.new(shape: ApiCachingBehavior, location_name: "apiCachingBehavior"))
    ApiCache.add_member(:transit_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "transitEncryptionEnabled"))
    ApiCache.add_member(:at_rest_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "atRestEncryptionEnabled"))
    ApiCache.add_member(:type, Shapes::ShapeRef.new(shape: ApiCacheType, location_name: "type"))
    ApiCache.add_member(:status, Shapes::ShapeRef.new(shape: ApiCacheStatus, location_name: "status"))
    ApiCache.add_member(:health_metrics_config, Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: "healthMetricsConfig"))
    ApiCache.struct_class = Types::ApiCache

    ApiKey.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    ApiKey.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ApiKey.add_member(:expires, Shapes::ShapeRef.new(shape: Long, location_name: "expires"))
    ApiKey.add_member(:deletes, Shapes::ShapeRef.new(shape: Long, location_name: "deletes"))
    ApiKey.struct_class = Types::ApiKey

    ApiKeyLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ApiKeyLimitExceededException.struct_class = Types::ApiKeyLimitExceededException

    ApiKeyValidityOutOfBoundsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ApiKeyValidityOutOfBoundsException.struct_class = Types::ApiKeyValidityOutOfBoundsException

    ApiKeys.member = Shapes::ShapeRef.new(shape: ApiKey)

    ApiLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ApiLimitExceededException.struct_class = Types::ApiLimitExceededException

    Apis.member = Shapes::ShapeRef.new(shape: Api)

    AppSyncRuntime.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeName, required: true, location_name: "name"))
    AppSyncRuntime.add_member(:runtime_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "runtimeVersion"))
    AppSyncRuntime.struct_class = Types::AppSyncRuntime

    AssociateApiRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    AssociateApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "apiId"))
    AssociateApiRequest.struct_class = Types::AssociateApiRequest

    AssociateApiResponse.add_member(:api_association, Shapes::ShapeRef.new(shape: ApiAssociation, location_name: "apiAssociation"))
    AssociateApiResponse.struct_class = Types::AssociateApiResponse

    AssociateMergedGraphqlApiRequest.add_member(:source_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "sourceApiIdentifier"))
    AssociateMergedGraphqlApiRequest.add_member(:merged_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "mergedApiIdentifier"))
    AssociateMergedGraphqlApiRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AssociateMergedGraphqlApiRequest.add_member(:source_api_association_config, Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: "sourceApiAssociationConfig"))
    AssociateMergedGraphqlApiRequest.struct_class = Types::AssociateMergedGraphqlApiRequest

    AssociateMergedGraphqlApiResponse.add_member(:source_api_association, Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: "sourceApiAssociation"))
    AssociateMergedGraphqlApiResponse.struct_class = Types::AssociateMergedGraphqlApiResponse

    AssociateSourceGraphqlApiRequest.add_member(:merged_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "mergedApiIdentifier"))
    AssociateSourceGraphqlApiRequest.add_member(:source_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceApiIdentifier"))
    AssociateSourceGraphqlApiRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AssociateSourceGraphqlApiRequest.add_member(:source_api_association_config, Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: "sourceApiAssociationConfig"))
    AssociateSourceGraphqlApiRequest.struct_class = Types::AssociateSourceGraphqlApiRequest

    AssociateSourceGraphqlApiResponse.add_member(:source_api_association, Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: "sourceApiAssociation"))
    AssociateSourceGraphqlApiResponse.struct_class = Types::AssociateSourceGraphqlApiResponse

    AuthMode.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "authType"))
    AuthMode.struct_class = Types::AuthMode

    AuthModes.member = Shapes::ShapeRef.new(shape: AuthMode)

    AuthProvider.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "authType"))
    AuthProvider.add_member(:cognito_config, Shapes::ShapeRef.new(shape: CognitoConfig, location_name: "cognitoConfig"))
    AuthProvider.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: "openIDConnectConfig"))
    AuthProvider.add_member(:lambda_authorizer_config, Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: "lambdaAuthorizerConfig"))
    AuthProvider.struct_class = Types::AuthProvider

    AuthProviders.member = Shapes::ShapeRef.new(shape: AuthProvider)

    AuthorizationConfig.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, required: true, location_name: "authorizationType"))
    AuthorizationConfig.add_member(:aws_iam_config, Shapes::ShapeRef.new(shape: AwsIamConfig, location_name: "awsIamConfig"))
    AuthorizationConfig.struct_class = Types::AuthorizationConfig

    AwsIamConfig.add_member(:signing_region, Shapes::ShapeRef.new(shape: String, location_name: "signingRegion"))
    AwsIamConfig.add_member(:signing_service_name, Shapes::ShapeRef.new(shape: String, location_name: "signingServiceName"))
    AwsIamConfig.struct_class = Types::AwsIamConfig

    BadRequestDetail.add_member(:code_errors, Shapes::ShapeRef.new(shape: CodeErrors, location_name: "codeErrors"))
    BadRequestDetail.struct_class = Types::BadRequestDetail

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.add_member(:reason, Shapes::ShapeRef.new(shape: BadRequestReason, location_name: "reason"))
    BadRequestException.add_member(:detail, Shapes::ShapeRef.new(shape: BadRequestDetail, location_name: "detail"))
    BadRequestException.struct_class = Types::BadRequestException

    CachingConfig.add_member(:ttl, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ttl"))
    CachingConfig.add_member(:caching_keys, Shapes::ShapeRef.new(shape: CachingKeys, location_name: "cachingKeys"))
    CachingConfig.struct_class = Types::CachingConfig

    CachingKeys.member = Shapes::ShapeRef.new(shape: String)

    ChannelNamespace.add_member(:api_id, Shapes::ShapeRef.new(shape: String, location_name: "apiId"))
    ChannelNamespace.add_member(:name, Shapes::ShapeRef.new(shape: Namespace, location_name: "name"))
    ChannelNamespace.add_member(:subscribe_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, location_name: "subscribeAuthModes"))
    ChannelNamespace.add_member(:publish_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, location_name: "publishAuthModes"))
    ChannelNamespace.add_member(:code_handlers, Shapes::ShapeRef.new(shape: Code, location_name: "codeHandlers"))
    ChannelNamespace.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ChannelNamespace.add_member(:channel_namespace_arn, Shapes::ShapeRef.new(shape: String, location_name: "channelNamespaceArn"))
    ChannelNamespace.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    ChannelNamespace.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModified"))
    ChannelNamespace.struct_class = Types::ChannelNamespace

    ChannelNamespaces.member = Shapes::ShapeRef.new(shape: ChannelNamespace)

    CodeError.add_member(:error_type, Shapes::ShapeRef.new(shape: String, location_name: "errorType"))
    CodeError.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    CodeError.add_member(:location, Shapes::ShapeRef.new(shape: CodeErrorLocation, location_name: "location"))
    CodeError.struct_class = Types::CodeError

    CodeErrorLocation.add_member(:line, Shapes::ShapeRef.new(shape: CodeErrorLine, location_name: "line"))
    CodeErrorLocation.add_member(:column, Shapes::ShapeRef.new(shape: CodeErrorColumn, location_name: "column"))
    CodeErrorLocation.add_member(:span, Shapes::ShapeRef.new(shape: CodeErrorSpan, location_name: "span"))
    CodeErrorLocation.struct_class = Types::CodeErrorLocation

    CodeErrors.member = Shapes::ShapeRef.new(shape: CodeError)

    CognitoConfig.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userPoolId"))
    CognitoConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    CognitoConfig.add_member(:app_id_client_regex, Shapes::ShapeRef.new(shape: String, location_name: "appIdClientRegex"))
    CognitoConfig.struct_class = Types::CognitoConfig

    CognitoUserPoolConfig.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userPoolId"))
    CognitoUserPoolConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    CognitoUserPoolConfig.add_member(:app_id_client_regex, Shapes::ShapeRef.new(shape: String, location_name: "appIdClientRegex"))
    CognitoUserPoolConfig.struct_class = Types::CognitoUserPoolConfig

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApiCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateApiCacheRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ttl"))
    CreateApiCacheRequest.add_member(:transit_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "transitEncryptionEnabled"))
    CreateApiCacheRequest.add_member(:at_rest_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "atRestEncryptionEnabled"))
    CreateApiCacheRequest.add_member(:api_caching_behavior, Shapes::ShapeRef.new(shape: ApiCachingBehavior, required: true, location_name: "apiCachingBehavior"))
    CreateApiCacheRequest.add_member(:type, Shapes::ShapeRef.new(shape: ApiCacheType, required: true, location_name: "type"))
    CreateApiCacheRequest.add_member(:health_metrics_config, Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: "healthMetricsConfig"))
    CreateApiCacheRequest.struct_class = Types::CreateApiCacheRequest

    CreateApiCacheResponse.add_member(:api_cache, Shapes::ShapeRef.new(shape: ApiCache, location_name: "apiCache"))
    CreateApiCacheResponse.struct_class = Types::CreateApiCacheResponse

    CreateApiKeyRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateApiKeyRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateApiKeyRequest.add_member(:expires, Shapes::ShapeRef.new(shape: Long, location_name: "expires"))
    CreateApiKeyRequest.struct_class = Types::CreateApiKeyRequest

    CreateApiKeyResponse.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKey, location_name: "apiKey"))
    CreateApiKeyResponse.struct_class = Types::CreateApiKeyResponse

    CreateApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApiName, required: true, location_name: "name"))
    CreateApiRequest.add_member(:owner_contact, Shapes::ShapeRef.new(shape: String, location_name: "ownerContact"))
    CreateApiRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateApiRequest.add_member(:event_config, Shapes::ShapeRef.new(shape: EventConfig, location_name: "eventConfig"))
    CreateApiRequest.struct_class = Types::CreateApiRequest

    CreateApiResponse.add_member(:api, Shapes::ShapeRef.new(shape: Api, location_name: "api"))
    CreateApiResponse.struct_class = Types::CreateApiResponse

    CreateChannelNamespaceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateChannelNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "name"))
    CreateChannelNamespaceRequest.add_member(:subscribe_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, location_name: "subscribeAuthModes"))
    CreateChannelNamespaceRequest.add_member(:publish_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, location_name: "publishAuthModes"))
    CreateChannelNamespaceRequest.add_member(:code_handlers, Shapes::ShapeRef.new(shape: Code, location_name: "codeHandlers"))
    CreateChannelNamespaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateChannelNamespaceRequest.struct_class = Types::CreateChannelNamespaceRequest

    CreateChannelNamespaceResponse.add_member(:channel_namespace, Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: "channelNamespace"))
    CreateChannelNamespaceResponse.struct_class = Types::CreateChannelNamespaceResponse

    CreateDataSourceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateDataSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "type"))
    CreateDataSourceRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceRoleArn"))
    CreateDataSourceRequest.add_member(:dynamodb_config, Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: "dynamodbConfig"))
    CreateDataSourceRequest.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: "lambdaConfig"))
    CreateDataSourceRequest.add_member(:elasticsearch_config, Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: "elasticsearchConfig"))
    CreateDataSourceRequest.add_member(:open_search_service_config, Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: "openSearchServiceConfig"))
    CreateDataSourceRequest.add_member(:http_config, Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: "httpConfig"))
    CreateDataSourceRequest.add_member(:relational_database_config, Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: "relationalDatabaseConfig"))
    CreateDataSourceRequest.add_member(:event_bridge_config, Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: "eventBridgeConfig"))
    CreateDataSourceRequest.add_member(:metrics_config, Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: "metricsConfig"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateDomainNameRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, required: true, location_name: "certificateArn"))
    CreateDomainNameRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDomainNameRequest.struct_class = Types::CreateDomainNameRequest

    CreateDomainNameResponse.add_member(:domain_name_config, Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: "domainNameConfig"))
    CreateDomainNameResponse.struct_class = Types::CreateDomainNameResponse

    CreateFunctionRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateFunctionRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "dataSourceName"))
    CreateFunctionRequest.add_member(:request_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "requestMappingTemplate"))
    CreateFunctionRequest.add_member(:response_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "responseMappingTemplate"))
    CreateFunctionRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: String, location_name: "functionVersion"))
    CreateFunctionRequest.add_member(:sync_config, Shapes::ShapeRef.new(shape: SyncConfig, location_name: "syncConfig"))
    CreateFunctionRequest.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: "maxBatchSize"))
    CreateFunctionRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: "runtime"))
    CreateFunctionRequest.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    CreateFunctionRequest.struct_class = Types::CreateFunctionRequest

    CreateFunctionResponse.add_member(:function_configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "functionConfiguration"))
    CreateFunctionResponse.struct_class = Types::CreateFunctionResponse

    CreateGraphqlApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateGraphqlApiRequest.add_member(:log_config, Shapes::ShapeRef.new(shape: LogConfig, location_name: "logConfig"))
    CreateGraphqlApiRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "authenticationType"))
    CreateGraphqlApiRequest.add_member(:user_pool_config, Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: "userPoolConfig"))
    CreateGraphqlApiRequest.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: "openIDConnectConfig"))
    CreateGraphqlApiRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateGraphqlApiRequest.add_member(:additional_authentication_providers, Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: "additionalAuthenticationProviders"))
    CreateGraphqlApiRequest.add_member(:xray_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "xrayEnabled"))
    CreateGraphqlApiRequest.add_member(:lambda_authorizer_config, Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: "lambdaAuthorizerConfig"))
    CreateGraphqlApiRequest.add_member(:api_type, Shapes::ShapeRef.new(shape: GraphQLApiType, location_name: "apiType"))
    CreateGraphqlApiRequest.add_member(:merged_api_execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "mergedApiExecutionRoleArn"))
    CreateGraphqlApiRequest.add_member(:visibility, Shapes::ShapeRef.new(shape: GraphQLApiVisibility, location_name: "visibility"))
    CreateGraphqlApiRequest.add_member(:owner_contact, Shapes::ShapeRef.new(shape: String, location_name: "ownerContact"))
    CreateGraphqlApiRequest.add_member(:introspection_config, Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: "introspectionConfig"))
    CreateGraphqlApiRequest.add_member(:query_depth_limit, Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: "queryDepthLimit"))
    CreateGraphqlApiRequest.add_member(:resolver_count_limit, Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: "resolverCountLimit"))
    CreateGraphqlApiRequest.add_member(:enhanced_metrics_config, Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: "enhancedMetricsConfig"))
    CreateGraphqlApiRequest.struct_class = Types::CreateGraphqlApiRequest

    CreateGraphqlApiResponse.add_member(:graphql_api, Shapes::ShapeRef.new(shape: GraphqlApi, location_name: "graphqlApi"))
    CreateGraphqlApiResponse.struct_class = Types::CreateGraphqlApiResponse

    CreateResolverRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateResolverRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "typeName"))
    CreateResolverRequest.add_member(:field_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "fieldName"))
    CreateResolverRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "dataSourceName"))
    CreateResolverRequest.add_member(:request_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "requestMappingTemplate"))
    CreateResolverRequest.add_member(:response_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "responseMappingTemplate"))
    CreateResolverRequest.add_member(:kind, Shapes::ShapeRef.new(shape: ResolverKind, location_name: "kind"))
    CreateResolverRequest.add_member(:pipeline_config, Shapes::ShapeRef.new(shape: PipelineConfig, location_name: "pipelineConfig"))
    CreateResolverRequest.add_member(:sync_config, Shapes::ShapeRef.new(shape: SyncConfig, location_name: "syncConfig"))
    CreateResolverRequest.add_member(:caching_config, Shapes::ShapeRef.new(shape: CachingConfig, location_name: "cachingConfig"))
    CreateResolverRequest.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: "maxBatchSize"))
    CreateResolverRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: "runtime"))
    CreateResolverRequest.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    CreateResolverRequest.add_member(:metrics_config, Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: "metricsConfig"))
    CreateResolverRequest.struct_class = Types::CreateResolverRequest

    CreateResolverResponse.add_member(:resolver, Shapes::ShapeRef.new(shape: Resolver, location_name: "resolver"))
    CreateResolverResponse.struct_class = Types::CreateResolverResponse

    CreateTypeRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateTypeRequest.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    CreateTypeRequest.add_member(:format, Shapes::ShapeRef.new(shape: TypeDefinitionFormat, required: true, location_name: "format"))
    CreateTypeRequest.struct_class = Types::CreateTypeRequest

    CreateTypeResponse.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    CreateTypeResponse.struct_class = Types::CreateTypeResponse

    DataSource.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "dataSourceArn"))
    DataSource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    DataSource.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    DataSource.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "type"))
    DataSource.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceRoleArn"))
    DataSource.add_member(:dynamodb_config, Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: "dynamodbConfig"))
    DataSource.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: "lambdaConfig"))
    DataSource.add_member(:elasticsearch_config, Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: "elasticsearchConfig"))
    DataSource.add_member(:open_search_service_config, Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: "openSearchServiceConfig"))
    DataSource.add_member(:http_config, Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: "httpConfig"))
    DataSource.add_member(:relational_database_config, Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: "relationalDatabaseConfig"))
    DataSource.add_member(:event_bridge_config, Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: "eventBridgeConfig"))
    DataSource.add_member(:metrics_config, Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: "metricsConfig"))
    DataSource.struct_class = Types::DataSource

    DataSourceIntrospectionModel.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DataSourceIntrospectionModel.add_member(:fields, Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFields, location_name: "fields"))
    DataSourceIntrospectionModel.add_member(:primary_key, Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndex, location_name: "primaryKey"))
    DataSourceIntrospectionModel.add_member(:indexes, Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndexes, location_name: "indexes"))
    DataSourceIntrospectionModel.add_member(:sdl, Shapes::ShapeRef.new(shape: String, location_name: "sdl"))
    DataSourceIntrospectionModel.struct_class = Types::DataSourceIntrospectionModel

    DataSourceIntrospectionModelField.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DataSourceIntrospectionModelField.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldType, location_name: "type"))
    DataSourceIntrospectionModelField.add_member(:length, Shapes::ShapeRef.new(shape: Long, location_name: "length"))
    DataSourceIntrospectionModelField.struct_class = Types::DataSourceIntrospectionModelField

    DataSourceIntrospectionModelFieldType.add_member(:kind, Shapes::ShapeRef.new(shape: String, location_name: "kind"))
    DataSourceIntrospectionModelFieldType.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DataSourceIntrospectionModelFieldType.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldType, location_name: "type"))
    DataSourceIntrospectionModelFieldType.add_member(:values, Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldTypeValues, location_name: "values"))
    DataSourceIntrospectionModelFieldType.struct_class = Types::DataSourceIntrospectionModelFieldType

    DataSourceIntrospectionModelFieldTypeValues.member = Shapes::ShapeRef.new(shape: String)

    DataSourceIntrospectionModelFields.member = Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelField)

    DataSourceIntrospectionModelIndex.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DataSourceIntrospectionModelIndex.add_member(:fields, Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndexFields, location_name: "fields"))
    DataSourceIntrospectionModelIndex.struct_class = Types::DataSourceIntrospectionModelIndex

    DataSourceIntrospectionModelIndexFields.member = Shapes::ShapeRef.new(shape: String)

    DataSourceIntrospectionModelIndexes.member = Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndex)

    DataSourceIntrospectionModels.member = Shapes::ShapeRef.new(shape: DataSourceIntrospectionModel)

    DataSourceIntrospectionResult.add_member(:models, Shapes::ShapeRef.new(shape: DataSourceIntrospectionModels, location_name: "models"))
    DataSourceIntrospectionResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DataSourceIntrospectionResult.struct_class = Types::DataSourceIntrospectionResult

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DeleteApiCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteApiCacheRequest.struct_class = Types::DeleteApiCacheRequest

    DeleteApiCacheResponse.struct_class = Types::DeleteApiCacheResponse

    DeleteApiKeyRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteApiKeyRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    DeleteApiKeyRequest.struct_class = Types::DeleteApiKeyRequest

    DeleteApiKeyResponse.struct_class = Types::DeleteApiKeyResponse

    DeleteApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteApiRequest.struct_class = Types::DeleteApiRequest

    DeleteApiResponse.struct_class = Types::DeleteApiResponse

    DeleteChannelNamespaceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteChannelNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "name"))
    DeleteChannelNamespaceRequest.struct_class = Types::DeleteChannelNamespaceRequest

    DeleteChannelNamespaceResponse.struct_class = Types::DeleteChannelNamespaceResponse

    DeleteDataSourceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "name"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteDataSourceResponse.struct_class = Types::DeleteDataSourceResponse

    DeleteDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    DeleteDomainNameRequest.struct_class = Types::DeleteDomainNameRequest

    DeleteDomainNameResponse.struct_class = Types::DeleteDomainNameResponse

    DeleteFunctionRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteFunctionRequest.add_member(:function_id, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "functionId"))
    DeleteFunctionRequest.struct_class = Types::DeleteFunctionRequest

    DeleteFunctionResponse.struct_class = Types::DeleteFunctionResponse

    DeleteGraphqlApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteGraphqlApiRequest.struct_class = Types::DeleteGraphqlApiRequest

    DeleteGraphqlApiResponse.struct_class = Types::DeleteGraphqlApiResponse

    DeleteResolverRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteResolverRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "typeName"))
    DeleteResolverRequest.add_member(:field_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "fieldName"))
    DeleteResolverRequest.struct_class = Types::DeleteResolverRequest

    DeleteResolverResponse.struct_class = Types::DeleteResolverResponse

    DeleteTypeRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteTypeRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "typeName"))
    DeleteTypeRequest.struct_class = Types::DeleteTypeRequest

    DeleteTypeResponse.struct_class = Types::DeleteTypeResponse

    DeltaSyncConfig.add_member(:base_table_ttl, Shapes::ShapeRef.new(shape: Long, location_name: "baseTableTTL"))
    DeltaSyncConfig.add_member(:delta_sync_table_name, Shapes::ShapeRef.new(shape: String, location_name: "deltaSyncTableName"))
    DeltaSyncConfig.add_member(:delta_sync_table_ttl, Shapes::ShapeRef.new(shape: Long, location_name: "deltaSyncTableTTL"))
    DeltaSyncConfig.struct_class = Types::DeltaSyncConfig

    DisassociateApiRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    DisassociateApiRequest.struct_class = Types::DisassociateApiRequest

    DisassociateApiResponse.struct_class = Types::DisassociateApiResponse

    DisassociateMergedGraphqlApiRequest.add_member(:source_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "sourceApiIdentifier"))
    DisassociateMergedGraphqlApiRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    DisassociateMergedGraphqlApiRequest.struct_class = Types::DisassociateMergedGraphqlApiRequest

    DisassociateMergedGraphqlApiResponse.add_member(:source_api_association_status, Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: "sourceApiAssociationStatus"))
    DisassociateMergedGraphqlApiResponse.struct_class = Types::DisassociateMergedGraphqlApiResponse

    DisassociateSourceGraphqlApiRequest.add_member(:merged_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "mergedApiIdentifier"))
    DisassociateSourceGraphqlApiRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    DisassociateSourceGraphqlApiRequest.struct_class = Types::DisassociateSourceGraphqlApiRequest

    DisassociateSourceGraphqlApiResponse.add_member(:source_api_association_status, Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: "sourceApiAssociationStatus"))
    DisassociateSourceGraphqlApiResponse.struct_class = Types::DisassociateSourceGraphqlApiResponse

    DomainNameConfig.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    DomainNameConfig.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DomainNameConfig.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    DomainNameConfig.add_member(:appsync_domain_name, Shapes::ShapeRef.new(shape: String, location_name: "appsyncDomainName"))
    DomainNameConfig.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "hostedZoneId"))
    DomainNameConfig.struct_class = Types::DomainNameConfig

    DomainNameConfigs.member = Shapes::ShapeRef.new(shape: DomainNameConfig)

    DynamodbDataSourceConfig.add_member(:table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "tableName"))
    DynamodbDataSourceConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    DynamodbDataSourceConfig.add_member(:use_caller_credentials, Shapes::ShapeRef.new(shape: Boolean, location_name: "useCallerCredentials"))
    DynamodbDataSourceConfig.add_member(:delta_sync_config, Shapes::ShapeRef.new(shape: DeltaSyncConfig, location_name: "deltaSyncConfig"))
    DynamodbDataSourceConfig.add_member(:versioned, Shapes::ShapeRef.new(shape: Boolean, location_name: "versioned"))
    DynamodbDataSourceConfig.struct_class = Types::DynamodbDataSourceConfig

    ElasticsearchDataSourceConfig.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpoint"))
    ElasticsearchDataSourceConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    ElasticsearchDataSourceConfig.struct_class = Types::ElasticsearchDataSourceConfig

    EnhancedMetricsConfig.add_member(:resolver_level_metrics_behavior, Shapes::ShapeRef.new(shape: ResolverLevelMetricsBehavior, required: true, location_name: "resolverLevelMetricsBehavior"))
    EnhancedMetricsConfig.add_member(:data_source_level_metrics_behavior, Shapes::ShapeRef.new(shape: DataSourceLevelMetricsBehavior, required: true, location_name: "dataSourceLevelMetricsBehavior"))
    EnhancedMetricsConfig.add_member(:operation_level_metrics_config, Shapes::ShapeRef.new(shape: OperationLevelMetricsConfig, required: true, location_name: "operationLevelMetricsConfig"))
    EnhancedMetricsConfig.struct_class = Types::EnhancedMetricsConfig

    EnvironmentVariableMap.key = Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariableMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    ErrorDetail.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ErrorDetail.struct_class = Types::ErrorDetail

    EvaluateCodeErrorDetail.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    EvaluateCodeErrorDetail.add_member(:code_errors, Shapes::ShapeRef.new(shape: CodeErrors, location_name: "codeErrors"))
    EvaluateCodeErrorDetail.struct_class = Types::EvaluateCodeErrorDetail

    EvaluateCodeRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: AppSyncRuntime, required: true, location_name: "runtime"))
    EvaluateCodeRequest.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "code"))
    EvaluateCodeRequest.add_member(:context, Shapes::ShapeRef.new(shape: Context, required: true, location_name: "context"))
    EvaluateCodeRequest.add_member(:function, Shapes::ShapeRef.new(shape: String, location_name: "function"))
    EvaluateCodeRequest.struct_class = Types::EvaluateCodeRequest

    EvaluateCodeResponse.add_member(:evaluation_result, Shapes::ShapeRef.new(shape: EvaluationResult, location_name: "evaluationResult"))
    EvaluateCodeResponse.add_member(:error, Shapes::ShapeRef.new(shape: EvaluateCodeErrorDetail, location_name: "error"))
    EvaluateCodeResponse.add_member(:logs, Shapes::ShapeRef.new(shape: Logs, location_name: "logs"))
    EvaluateCodeResponse.add_member(:stash, Shapes::ShapeRef.new(shape: Stash, location_name: "stash"))
    EvaluateCodeResponse.add_member(:out_errors, Shapes::ShapeRef.new(shape: OutErrors, location_name: "outErrors"))
    EvaluateCodeResponse.struct_class = Types::EvaluateCodeResponse

    EvaluateMappingTemplateRequest.add_member(:template, Shapes::ShapeRef.new(shape: Template, required: true, location_name: "template"))
    EvaluateMappingTemplateRequest.add_member(:context, Shapes::ShapeRef.new(shape: Context, required: true, location_name: "context"))
    EvaluateMappingTemplateRequest.struct_class = Types::EvaluateMappingTemplateRequest

    EvaluateMappingTemplateResponse.add_member(:evaluation_result, Shapes::ShapeRef.new(shape: EvaluationResult, location_name: "evaluationResult"))
    EvaluateMappingTemplateResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    EvaluateMappingTemplateResponse.add_member(:logs, Shapes::ShapeRef.new(shape: Logs, location_name: "logs"))
    EvaluateMappingTemplateResponse.add_member(:stash, Shapes::ShapeRef.new(shape: Stash, location_name: "stash"))
    EvaluateMappingTemplateResponse.add_member(:out_errors, Shapes::ShapeRef.new(shape: OutErrors, location_name: "outErrors"))
    EvaluateMappingTemplateResponse.struct_class = Types::EvaluateMappingTemplateResponse

    EventBridgeDataSourceConfig.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eventBusArn"))
    EventBridgeDataSourceConfig.struct_class = Types::EventBridgeDataSourceConfig

    EventConfig.add_member(:auth_providers, Shapes::ShapeRef.new(shape: AuthProviders, required: true, location_name: "authProviders"))
    EventConfig.add_member(:connection_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, required: true, location_name: "connectionAuthModes"))
    EventConfig.add_member(:default_publish_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, required: true, location_name: "defaultPublishAuthModes"))
    EventConfig.add_member(:default_subscribe_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, required: true, location_name: "defaultSubscribeAuthModes"))
    EventConfig.add_member(:log_config, Shapes::ShapeRef.new(shape: EventLogConfig, location_name: "logConfig"))
    EventConfig.struct_class = Types::EventConfig

    EventLogConfig.add_member(:log_level, Shapes::ShapeRef.new(shape: EventLogLevel, required: true, location_name: "logLevel"))
    EventLogConfig.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cloudWatchLogsRoleArn"))
    EventLogConfig.struct_class = Types::EventLogConfig

    FlushApiCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    FlushApiCacheRequest.struct_class = Types::FlushApiCacheRequest

    FlushApiCacheResponse.struct_class = Types::FlushApiCacheResponse

    FunctionConfiguration.add_member(:function_id, Shapes::ShapeRef.new(shape: String, location_name: "functionId"))
    FunctionConfiguration.add_member(:function_arn, Shapes::ShapeRef.new(shape: String, location_name: "functionArn"))
    FunctionConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    FunctionConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    FunctionConfiguration.add_member(:data_source_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "dataSourceName"))
    FunctionConfiguration.add_member(:request_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "requestMappingTemplate"))
    FunctionConfiguration.add_member(:response_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "responseMappingTemplate"))
    FunctionConfiguration.add_member(:function_version, Shapes::ShapeRef.new(shape: String, location_name: "functionVersion"))
    FunctionConfiguration.add_member(:sync_config, Shapes::ShapeRef.new(shape: SyncConfig, location_name: "syncConfig"))
    FunctionConfiguration.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: "maxBatchSize"))
    FunctionConfiguration.add_member(:runtime, Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: "runtime"))
    FunctionConfiguration.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    FunctionConfiguration.struct_class = Types::FunctionConfiguration

    Functions.member = Shapes::ShapeRef.new(shape: FunctionConfiguration)

    FunctionsIds.member = Shapes::ShapeRef.new(shape: String)

    GetApiAssociationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    GetApiAssociationRequest.struct_class = Types::GetApiAssociationRequest

    GetApiAssociationResponse.add_member(:api_association, Shapes::ShapeRef.new(shape: ApiAssociation, location_name: "apiAssociation"))
    GetApiAssociationResponse.struct_class = Types::GetApiAssociationResponse

    GetApiCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetApiCacheRequest.struct_class = Types::GetApiCacheRequest

    GetApiCacheResponse.add_member(:api_cache, Shapes::ShapeRef.new(shape: ApiCache, location_name: "apiCache"))
    GetApiCacheResponse.struct_class = Types::GetApiCacheResponse

    GetApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetApiRequest.struct_class = Types::GetApiRequest

    GetApiResponse.add_member(:api, Shapes::ShapeRef.new(shape: Api, location_name: "api"))
    GetApiResponse.struct_class = Types::GetApiResponse

    GetChannelNamespaceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetChannelNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "name"))
    GetChannelNamespaceRequest.struct_class = Types::GetChannelNamespaceRequest

    GetChannelNamespaceResponse.add_member(:channel_namespace, Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: "channelNamespace"))
    GetChannelNamespaceResponse.struct_class = Types::GetChannelNamespaceResponse

    GetDataSourceIntrospectionRequest.add_member(:introspection_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "introspectionId"))
    GetDataSourceIntrospectionRequest.add_member(:include_models_sdl, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeModelsSDL"))
    GetDataSourceIntrospectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    GetDataSourceIntrospectionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetDataSourceIntrospectionRequest.struct_class = Types::GetDataSourceIntrospectionRequest

    GetDataSourceIntrospectionResponse.add_member(:introspection_id, Shapes::ShapeRef.new(shape: String, location_name: "introspectionId"))
    GetDataSourceIntrospectionResponse.add_member(:introspection_status, Shapes::ShapeRef.new(shape: DataSourceIntrospectionStatus, location_name: "introspectionStatus"))
    GetDataSourceIntrospectionResponse.add_member(:introspection_status_detail, Shapes::ShapeRef.new(shape: String, location_name: "introspectionStatusDetail"))
    GetDataSourceIntrospectionResponse.add_member(:introspection_result, Shapes::ShapeRef.new(shape: DataSourceIntrospectionResult, location_name: "introspectionResult"))
    GetDataSourceIntrospectionResponse.struct_class = Types::GetDataSourceIntrospectionResponse

    GetDataSourceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "name"))
    GetDataSourceRequest.struct_class = Types::GetDataSourceRequest

    GetDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    GetDataSourceResponse.struct_class = Types::GetDataSourceResponse

    GetDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    GetDomainNameRequest.struct_class = Types::GetDomainNameRequest

    GetDomainNameResponse.add_member(:domain_name_config, Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: "domainNameConfig"))
    GetDomainNameResponse.struct_class = Types::GetDomainNameResponse

    GetFunctionRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetFunctionRequest.add_member(:function_id, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "functionId"))
    GetFunctionRequest.struct_class = Types::GetFunctionRequest

    GetFunctionResponse.add_member(:function_configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "functionConfiguration"))
    GetFunctionResponse.struct_class = Types::GetFunctionResponse

    GetGraphqlApiEnvironmentVariablesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetGraphqlApiEnvironmentVariablesRequest.struct_class = Types::GetGraphqlApiEnvironmentVariablesRequest

    GetGraphqlApiEnvironmentVariablesResponse.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    GetGraphqlApiEnvironmentVariablesResponse.struct_class = Types::GetGraphqlApiEnvironmentVariablesResponse

    GetGraphqlApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetGraphqlApiRequest.struct_class = Types::GetGraphqlApiRequest

    GetGraphqlApiResponse.add_member(:graphql_api, Shapes::ShapeRef.new(shape: GraphqlApi, location_name: "graphqlApi"))
    GetGraphqlApiResponse.struct_class = Types::GetGraphqlApiResponse

    GetIntrospectionSchemaRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetIntrospectionSchemaRequest.add_member(:format, Shapes::ShapeRef.new(shape: OutputType, required: true, location: "querystring", location_name: "format"))
    GetIntrospectionSchemaRequest.add_member(:include_directives, Shapes::ShapeRef.new(shape: BooleanValue, location: "querystring", location_name: "includeDirectives"))
    GetIntrospectionSchemaRequest.struct_class = Types::GetIntrospectionSchemaRequest

    GetIntrospectionSchemaResponse.add_member(:schema, Shapes::ShapeRef.new(shape: Blob, location_name: "schema"))
    GetIntrospectionSchemaResponse.struct_class = Types::GetIntrospectionSchemaResponse
    GetIntrospectionSchemaResponse[:payload] = :schema
    GetIntrospectionSchemaResponse[:payload_member] = GetIntrospectionSchemaResponse.member(:schema)

    GetResolverRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetResolverRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "typeName"))
    GetResolverRequest.add_member(:field_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "fieldName"))
    GetResolverRequest.struct_class = Types::GetResolverRequest

    GetResolverResponse.add_member(:resolver, Shapes::ShapeRef.new(shape: Resolver, location_name: "resolver"))
    GetResolverResponse.struct_class = Types::GetResolverResponse

    GetSchemaCreationStatusRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetSchemaCreationStatusRequest.struct_class = Types::GetSchemaCreationStatusRequest

    GetSchemaCreationStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: SchemaStatus, location_name: "status"))
    GetSchemaCreationStatusResponse.add_member(:details, Shapes::ShapeRef.new(shape: String, location_name: "details"))
    GetSchemaCreationStatusResponse.struct_class = Types::GetSchemaCreationStatusResponse

    GetSourceApiAssociationRequest.add_member(:merged_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "mergedApiIdentifier"))
    GetSourceApiAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    GetSourceApiAssociationRequest.struct_class = Types::GetSourceApiAssociationRequest

    GetSourceApiAssociationResponse.add_member(:source_api_association, Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: "sourceApiAssociation"))
    GetSourceApiAssociationResponse.struct_class = Types::GetSourceApiAssociationResponse

    GetTypeRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetTypeRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "typeName"))
    GetTypeRequest.add_member(:format, Shapes::ShapeRef.new(shape: TypeDefinitionFormat, required: true, location: "querystring", location_name: "format"))
    GetTypeRequest.struct_class = Types::GetTypeRequest

    GetTypeResponse.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    GetTypeResponse.struct_class = Types::GetTypeResponse

    GraphQLSchemaException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    GraphQLSchemaException.struct_class = Types::GraphQLSchemaException

    GraphqlApi.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    GraphqlApi.add_member(:api_id, Shapes::ShapeRef.new(shape: String, location_name: "apiId"))
    GraphqlApi.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "authenticationType"))
    GraphqlApi.add_member(:log_config, Shapes::ShapeRef.new(shape: LogConfig, location_name: "logConfig"))
    GraphqlApi.add_member(:user_pool_config, Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: "userPoolConfig"))
    GraphqlApi.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: "openIDConnectConfig"))
    GraphqlApi.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    GraphqlApi.add_member(:uris, Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: "uris"))
    GraphqlApi.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GraphqlApi.add_member(:additional_authentication_providers, Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: "additionalAuthenticationProviders"))
    GraphqlApi.add_member(:xray_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "xrayEnabled"))
    GraphqlApi.add_member(:waf_web_acl_arn, Shapes::ShapeRef.new(shape: String, location_name: "wafWebAclArn"))
    GraphqlApi.add_member(:lambda_authorizer_config, Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: "lambdaAuthorizerConfig"))
    GraphqlApi.add_member(:dns, Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: "dns"))
    GraphqlApi.add_member(:visibility, Shapes::ShapeRef.new(shape: GraphQLApiVisibility, location_name: "visibility"))
    GraphqlApi.add_member(:api_type, Shapes::ShapeRef.new(shape: GraphQLApiType, location_name: "apiType"))
    GraphqlApi.add_member(:merged_api_execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "mergedApiExecutionRoleArn"))
    GraphqlApi.add_member(:owner, Shapes::ShapeRef.new(shape: String, location_name: "owner"))
    GraphqlApi.add_member(:owner_contact, Shapes::ShapeRef.new(shape: String, location_name: "ownerContact"))
    GraphqlApi.add_member(:introspection_config, Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: "introspectionConfig"))
    GraphqlApi.add_member(:query_depth_limit, Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: "queryDepthLimit"))
    GraphqlApi.add_member(:resolver_count_limit, Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: "resolverCountLimit"))
    GraphqlApi.add_member(:enhanced_metrics_config, Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: "enhancedMetricsConfig"))
    GraphqlApi.struct_class = Types::GraphqlApi

    GraphqlApis.member = Shapes::ShapeRef.new(shape: GraphqlApi)

    HttpDataSourceConfig.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    HttpDataSourceConfig.add_member(:authorization_config, Shapes::ShapeRef.new(shape: AuthorizationConfig, location_name: "authorizationConfig"))
    HttpDataSourceConfig.struct_class = Types::HttpDataSourceConfig

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    LambdaAuthorizerConfig.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: TTL, location_name: "authorizerResultTtlInSeconds"))
    LambdaAuthorizerConfig.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "authorizerUri"))
    LambdaAuthorizerConfig.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: String, location_name: "identityValidationExpression"))
    LambdaAuthorizerConfig.struct_class = Types::LambdaAuthorizerConfig

    LambdaConflictHandlerConfig.add_member(:lambda_conflict_handler_arn, Shapes::ShapeRef.new(shape: String, location_name: "lambdaConflictHandlerArn"))
    LambdaConflictHandlerConfig.struct_class = Types::LambdaConflictHandlerConfig

    LambdaDataSourceConfig.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "lambdaFunctionArn"))
    LambdaDataSourceConfig.struct_class = Types::LambdaDataSourceConfig

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListApiKeysRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListApiKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListApiKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApiKeysRequest.struct_class = Types::ListApiKeysRequest

    ListApiKeysResponse.add_member(:api_keys, Shapes::ShapeRef.new(shape: ApiKeys, location_name: "apiKeys"))
    ListApiKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListApiKeysResponse.struct_class = Types::ListApiKeysResponse

    ListApisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListApisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApisRequest.struct_class = Types::ListApisRequest

    ListApisResponse.add_member(:apis, Shapes::ShapeRef.new(shape: Apis, location_name: "apis"))
    ListApisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListApisResponse.struct_class = Types::ListApisResponse

    ListChannelNamespacesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListChannelNamespacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListChannelNamespacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelNamespacesRequest.struct_class = Types::ListChannelNamespacesRequest

    ListChannelNamespacesResponse.add_member(:channel_namespaces, Shapes::ShapeRef.new(shape: ChannelNamespaces, location_name: "channelNamespaces"))
    ListChannelNamespacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChannelNamespacesResponse.struct_class = Types::ListChannelNamespacesResponse

    ListDataSourcesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSourcesRequest.struct_class = Types::ListDataSourcesRequest

    ListDataSourcesResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    ListDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataSourcesResponse.struct_class = Types::ListDataSourcesResponse

    ListDomainNamesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDomainNamesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDomainNamesRequest.struct_class = Types::ListDomainNamesRequest

    ListDomainNamesResponse.add_member(:domain_name_configs, Shapes::ShapeRef.new(shape: DomainNameConfigs, location_name: "domainNameConfigs"))
    ListDomainNamesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDomainNamesResponse.struct_class = Types::ListDomainNamesResponse

    ListFunctionsRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFunctionsRequest.struct_class = Types::ListFunctionsRequest

    ListFunctionsResponse.add_member(:functions, Shapes::ShapeRef.new(shape: Functions, location_name: "functions"))
    ListFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFunctionsResponse.struct_class = Types::ListFunctionsResponse

    ListGraphqlApisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListGraphqlApisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGraphqlApisRequest.add_member(:api_type, Shapes::ShapeRef.new(shape: GraphQLApiType, location: "querystring", location_name: "apiType"))
    ListGraphqlApisRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location: "querystring", location_name: "owner"))
    ListGraphqlApisRequest.struct_class = Types::ListGraphqlApisRequest

    ListGraphqlApisResponse.add_member(:graphql_apis, Shapes::ShapeRef.new(shape: GraphqlApis, location_name: "graphqlApis"))
    ListGraphqlApisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListGraphqlApisResponse.struct_class = Types::ListGraphqlApisResponse

    ListResolversByFunctionRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListResolversByFunctionRequest.add_member(:function_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "functionId"))
    ListResolversByFunctionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListResolversByFunctionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResolversByFunctionRequest.struct_class = Types::ListResolversByFunctionRequest

    ListResolversByFunctionResponse.add_member(:resolvers, Shapes::ShapeRef.new(shape: Resolvers, location_name: "resolvers"))
    ListResolversByFunctionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListResolversByFunctionResponse.struct_class = Types::ListResolversByFunctionResponse

    ListResolversRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListResolversRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "typeName"))
    ListResolversRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListResolversRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResolversRequest.struct_class = Types::ListResolversRequest

    ListResolversResponse.add_member(:resolvers, Shapes::ShapeRef.new(shape: Resolvers, location_name: "resolvers"))
    ListResolversResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListResolversResponse.struct_class = Types::ListResolversResponse

    ListSourceApiAssociationsRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListSourceApiAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSourceApiAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSourceApiAssociationsRequest.struct_class = Types::ListSourceApiAssociationsRequest

    ListSourceApiAssociationsResponse.add_member(:source_api_association_summaries, Shapes::ShapeRef.new(shape: SourceApiAssociationSummaryList, location_name: "sourceApiAssociationSummaries"))
    ListSourceApiAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSourceApiAssociationsResponse.struct_class = Types::ListSourceApiAssociationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTypesByAssociationRequest.add_member(:merged_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "mergedApiIdentifier"))
    ListTypesByAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    ListTypesByAssociationRequest.add_member(:format, Shapes::ShapeRef.new(shape: TypeDefinitionFormat, required: true, location: "querystring", location_name: "format"))
    ListTypesByAssociationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListTypesByAssociationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTypesByAssociationRequest.struct_class = Types::ListTypesByAssociationRequest

    ListTypesByAssociationResponse.add_member(:types, Shapes::ShapeRef.new(shape: TypeList, location_name: "types"))
    ListTypesByAssociationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTypesByAssociationResponse.struct_class = Types::ListTypesByAssociationResponse

    ListTypesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListTypesRequest.add_member(:format, Shapes::ShapeRef.new(shape: TypeDefinitionFormat, required: true, location: "querystring", location_name: "format"))
    ListTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTypesRequest.struct_class = Types::ListTypesRequest

    ListTypesResponse.add_member(:types, Shapes::ShapeRef.new(shape: TypeList, location_name: "types"))
    ListTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTypesResponse.struct_class = Types::ListTypesResponse

    LogConfig.add_member(:field_log_level, Shapes::ShapeRef.new(shape: FieldLogLevel, required: true, location_name: "fieldLogLevel"))
    LogConfig.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cloudWatchLogsRoleArn"))
    LogConfig.add_member(:exclude_verbose_content, Shapes::ShapeRef.new(shape: Boolean, location_name: "excludeVerboseContent"))
    LogConfig.struct_class = Types::LogConfig

    Logs.member = Shapes::ShapeRef.new(shape: String)

    MapOfStringToString.key = Shapes::ShapeRef.new(shape: String)
    MapOfStringToString.value = Shapes::ShapeRef.new(shape: String)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    OpenIDConnectConfig.add_member(:issuer, Shapes::ShapeRef.new(shape: String, required: true, location_name: "issuer"))
    OpenIDConnectConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: String, location_name: "clientId"))
    OpenIDConnectConfig.add_member(:iat_ttl, Shapes::ShapeRef.new(shape: Long, location_name: "iatTTL"))
    OpenIDConnectConfig.add_member(:auth_ttl, Shapes::ShapeRef.new(shape: Long, location_name: "authTTL"))
    OpenIDConnectConfig.struct_class = Types::OpenIDConnectConfig

    OpenSearchServiceDataSourceConfig.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpoint"))
    OpenSearchServiceDataSourceConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    OpenSearchServiceDataSourceConfig.struct_class = Types::OpenSearchServiceDataSourceConfig

    PipelineConfig.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionsIds, location_name: "functions"))
    PipelineConfig.struct_class = Types::PipelineConfig

    PutGraphqlApiEnvironmentVariablesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    PutGraphqlApiEnvironmentVariablesRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, required: true, location_name: "environmentVariables"))
    PutGraphqlApiEnvironmentVariablesRequest.struct_class = Types::PutGraphqlApiEnvironmentVariablesRequest

    PutGraphqlApiEnvironmentVariablesResponse.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    PutGraphqlApiEnvironmentVariablesResponse.struct_class = Types::PutGraphqlApiEnvironmentVariablesResponse

    RdsDataApiConfig.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RdsDataApiConfigResourceArn, required: true, location_name: "resourceArn"))
    RdsDataApiConfig.add_member(:secret_arn, Shapes::ShapeRef.new(shape: RdsDataApiConfigSecretArn, required: true, location_name: "secretArn"))
    RdsDataApiConfig.add_member(:database_name, Shapes::ShapeRef.new(shape: RdsDataApiConfigDatabaseName, required: true, location_name: "databaseName"))
    RdsDataApiConfig.struct_class = Types::RdsDataApiConfig

    RdsHttpEndpointConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location_name: "awsRegion"))
    RdsHttpEndpointConfig.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "dbClusterIdentifier"))
    RdsHttpEndpointConfig.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "databaseName"))
    RdsHttpEndpointConfig.add_member(:schema, Shapes::ShapeRef.new(shape: String, location_name: "schema"))
    RdsHttpEndpointConfig.add_member(:aws_secret_store_arn, Shapes::ShapeRef.new(shape: String, location_name: "awsSecretStoreArn"))
    RdsHttpEndpointConfig.struct_class = Types::RdsHttpEndpointConfig

    RelationalDatabaseDataSourceConfig.add_member(:relational_database_source_type, Shapes::ShapeRef.new(shape: RelationalDatabaseSourceType, location_name: "relationalDatabaseSourceType"))
    RelationalDatabaseDataSourceConfig.add_member(:rds_http_endpoint_config, Shapes::ShapeRef.new(shape: RdsHttpEndpointConfig, location_name: "rdsHttpEndpointConfig"))
    RelationalDatabaseDataSourceConfig.struct_class = Types::RelationalDatabaseDataSourceConfig

    Resolver.add_member(:type_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "typeName"))
    Resolver.add_member(:field_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "fieldName"))
    Resolver.add_member(:data_source_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "dataSourceName"))
    Resolver.add_member(:resolver_arn, Shapes::ShapeRef.new(shape: String, location_name: "resolverArn"))
    Resolver.add_member(:request_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "requestMappingTemplate"))
    Resolver.add_member(:response_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "responseMappingTemplate"))
    Resolver.add_member(:kind, Shapes::ShapeRef.new(shape: ResolverKind, location_name: "kind"))
    Resolver.add_member(:pipeline_config, Shapes::ShapeRef.new(shape: PipelineConfig, location_name: "pipelineConfig"))
    Resolver.add_member(:sync_config, Shapes::ShapeRef.new(shape: SyncConfig, location_name: "syncConfig"))
    Resolver.add_member(:caching_config, Shapes::ShapeRef.new(shape: CachingConfig, location_name: "cachingConfig"))
    Resolver.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: "maxBatchSize"))
    Resolver.add_member(:runtime, Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: "runtime"))
    Resolver.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    Resolver.add_member(:metrics_config, Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: "metricsConfig"))
    Resolver.struct_class = Types::Resolver

    Resolvers.member = Shapes::ShapeRef.new(shape: Resolver)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceApiAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: String, location_name: "associationId"))
    SourceApiAssociation.add_member(:association_arn, Shapes::ShapeRef.new(shape: String, location_name: "associationArn"))
    SourceApiAssociation.add_member(:source_api_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceApiId"))
    SourceApiAssociation.add_member(:source_api_arn, Shapes::ShapeRef.new(shape: String, location_name: "sourceApiArn"))
    SourceApiAssociation.add_member(:merged_api_arn, Shapes::ShapeRef.new(shape: String, location_name: "mergedApiArn"))
    SourceApiAssociation.add_member(:merged_api_id, Shapes::ShapeRef.new(shape: String, location_name: "mergedApiId"))
    SourceApiAssociation.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SourceApiAssociation.add_member(:source_api_association_config, Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: "sourceApiAssociationConfig"))
    SourceApiAssociation.add_member(:source_api_association_status, Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: "sourceApiAssociationStatus"))
    SourceApiAssociation.add_member(:source_api_association_status_detail, Shapes::ShapeRef.new(shape: String, location_name: "sourceApiAssociationStatusDetail"))
    SourceApiAssociation.add_member(:last_successful_merge_date, Shapes::ShapeRef.new(shape: Date, location_name: "lastSuccessfulMergeDate"))
    SourceApiAssociation.struct_class = Types::SourceApiAssociation

    SourceApiAssociationConfig.add_member(:merge_type, Shapes::ShapeRef.new(shape: MergeType, location_name: "mergeType"))
    SourceApiAssociationConfig.struct_class = Types::SourceApiAssociationConfig

    SourceApiAssociationSummary.add_member(:association_id, Shapes::ShapeRef.new(shape: String, location_name: "associationId"))
    SourceApiAssociationSummary.add_member(:association_arn, Shapes::ShapeRef.new(shape: String, location_name: "associationArn"))
    SourceApiAssociationSummary.add_member(:source_api_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceApiId"))
    SourceApiAssociationSummary.add_member(:source_api_arn, Shapes::ShapeRef.new(shape: String, location_name: "sourceApiArn"))
    SourceApiAssociationSummary.add_member(:merged_api_id, Shapes::ShapeRef.new(shape: String, location_name: "mergedApiId"))
    SourceApiAssociationSummary.add_member(:merged_api_arn, Shapes::ShapeRef.new(shape: String, location_name: "mergedApiArn"))
    SourceApiAssociationSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SourceApiAssociationSummary.struct_class = Types::SourceApiAssociationSummary

    SourceApiAssociationSummaryList.member = Shapes::ShapeRef.new(shape: SourceApiAssociationSummary)

    StartDataSourceIntrospectionRequest.add_member(:rds_data_api_config, Shapes::ShapeRef.new(shape: RdsDataApiConfig, location_name: "rdsDataApiConfig"))
    StartDataSourceIntrospectionRequest.struct_class = Types::StartDataSourceIntrospectionRequest

    StartDataSourceIntrospectionResponse.add_member(:introspection_id, Shapes::ShapeRef.new(shape: String, location_name: "introspectionId"))
    StartDataSourceIntrospectionResponse.add_member(:introspection_status, Shapes::ShapeRef.new(shape: DataSourceIntrospectionStatus, location_name: "introspectionStatus"))
    StartDataSourceIntrospectionResponse.add_member(:introspection_status_detail, Shapes::ShapeRef.new(shape: String, location_name: "introspectionStatusDetail"))
    StartDataSourceIntrospectionResponse.struct_class = Types::StartDataSourceIntrospectionResponse

    StartSchemaCreationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    StartSchemaCreationRequest.add_member(:definition, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "definition"))
    StartSchemaCreationRequest.struct_class = Types::StartSchemaCreationRequest

    StartSchemaCreationResponse.add_member(:status, Shapes::ShapeRef.new(shape: SchemaStatus, location_name: "status"))
    StartSchemaCreationResponse.struct_class = Types::StartSchemaCreationResponse

    StartSchemaMergeRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    StartSchemaMergeRequest.add_member(:merged_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "mergedApiIdentifier"))
    StartSchemaMergeRequest.struct_class = Types::StartSchemaMergeRequest

    StartSchemaMergeResponse.add_member(:source_api_association_status, Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: "sourceApiAssociationStatus"))
    StartSchemaMergeResponse.struct_class = Types::StartSchemaMergeResponse

    SyncConfig.add_member(:conflict_handler, Shapes::ShapeRef.new(shape: ConflictHandlerType, location_name: "conflictHandler"))
    SyncConfig.add_member(:conflict_detection, Shapes::ShapeRef.new(shape: ConflictDetectionType, location_name: "conflictDetection"))
    SyncConfig.add_member(:lambda_conflict_handler_config, Shapes::ShapeRef.new(shape: LambdaConflictHandlerConfig, location_name: "lambdaConflictHandlerConfig"))
    SyncConfig.struct_class = Types::SyncConfig

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Type.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Type.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Type.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Type.add_member(:definition, Shapes::ShapeRef.new(shape: String, location_name: "definition"))
    Type.add_member(:format, Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: "format"))
    Type.struct_class = Types::Type

    TypeList.member = Shapes::ShapeRef.new(shape: Type)

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApiCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateApiCacheRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ttl"))
    UpdateApiCacheRequest.add_member(:api_caching_behavior, Shapes::ShapeRef.new(shape: ApiCachingBehavior, required: true, location_name: "apiCachingBehavior"))
    UpdateApiCacheRequest.add_member(:type, Shapes::ShapeRef.new(shape: ApiCacheType, required: true, location_name: "type"))
    UpdateApiCacheRequest.add_member(:health_metrics_config, Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: "healthMetricsConfig"))
    UpdateApiCacheRequest.struct_class = Types::UpdateApiCacheRequest

    UpdateApiCacheResponse.add_member(:api_cache, Shapes::ShapeRef.new(shape: ApiCache, location_name: "apiCache"))
    UpdateApiCacheResponse.struct_class = Types::UpdateApiCacheResponse

    UpdateApiKeyRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateApiKeyRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    UpdateApiKeyRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateApiKeyRequest.add_member(:expires, Shapes::ShapeRef.new(shape: Long, location_name: "expires"))
    UpdateApiKeyRequest.struct_class = Types::UpdateApiKeyRequest

    UpdateApiKeyResponse.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKey, location_name: "apiKey"))
    UpdateApiKeyResponse.struct_class = Types::UpdateApiKeyResponse

    UpdateApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApiName, required: true, location_name: "name"))
    UpdateApiRequest.add_member(:owner_contact, Shapes::ShapeRef.new(shape: String, location_name: "ownerContact"))
    UpdateApiRequest.add_member(:event_config, Shapes::ShapeRef.new(shape: EventConfig, location_name: "eventConfig"))
    UpdateApiRequest.struct_class = Types::UpdateApiRequest

    UpdateApiResponse.add_member(:api, Shapes::ShapeRef.new(shape: Api, location_name: "api"))
    UpdateApiResponse.struct_class = Types::UpdateApiResponse

    UpdateChannelNamespaceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateChannelNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "name"))
    UpdateChannelNamespaceRequest.add_member(:subscribe_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, location_name: "subscribeAuthModes"))
    UpdateChannelNamespaceRequest.add_member(:publish_auth_modes, Shapes::ShapeRef.new(shape: AuthModes, location_name: "publishAuthModes"))
    UpdateChannelNamespaceRequest.add_member(:code_handlers, Shapes::ShapeRef.new(shape: Code, location_name: "codeHandlers"))
    UpdateChannelNamespaceRequest.struct_class = Types::UpdateChannelNamespaceRequest

    UpdateChannelNamespaceResponse.add_member(:channel_namespace, Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: "channelNamespace"))
    UpdateChannelNamespaceResponse.struct_class = Types::UpdateChannelNamespaceResponse

    UpdateDataSourceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "name"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateDataSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "type"))
    UpdateDataSourceRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceRoleArn"))
    UpdateDataSourceRequest.add_member(:dynamodb_config, Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: "dynamodbConfig"))
    UpdateDataSourceRequest.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: "lambdaConfig"))
    UpdateDataSourceRequest.add_member(:elasticsearch_config, Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: "elasticsearchConfig"))
    UpdateDataSourceRequest.add_member(:open_search_service_config, Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: "openSearchServiceConfig"))
    UpdateDataSourceRequest.add_member(:http_config, Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: "httpConfig"))
    UpdateDataSourceRequest.add_member(:relational_database_config, Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: "relationalDatabaseConfig"))
    UpdateDataSourceRequest.add_member(:event_bridge_config, Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: "eventBridgeConfig"))
    UpdateDataSourceRequest.add_member(:metrics_config, Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: "metricsConfig"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    UpdateDataSourceResponse.struct_class = Types::UpdateDataSourceResponse

    UpdateDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    UpdateDomainNameRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateDomainNameRequest.struct_class = Types::UpdateDomainNameRequest

    UpdateDomainNameResponse.add_member(:domain_name_config, Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: "domainNameConfig"))
    UpdateDomainNameResponse.struct_class = Types::UpdateDomainNameResponse

    UpdateFunctionRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateFunctionRequest.add_member(:function_id, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "functionId"))
    UpdateFunctionRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "dataSourceName"))
    UpdateFunctionRequest.add_member(:request_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "requestMappingTemplate"))
    UpdateFunctionRequest.add_member(:response_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "responseMappingTemplate"))
    UpdateFunctionRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: String, location_name: "functionVersion"))
    UpdateFunctionRequest.add_member(:sync_config, Shapes::ShapeRef.new(shape: SyncConfig, location_name: "syncConfig"))
    UpdateFunctionRequest.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: "maxBatchSize"))
    UpdateFunctionRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: "runtime"))
    UpdateFunctionRequest.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    UpdateFunctionRequest.struct_class = Types::UpdateFunctionRequest

    UpdateFunctionResponse.add_member(:function_configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "functionConfiguration"))
    UpdateFunctionResponse.struct_class = Types::UpdateFunctionResponse

    UpdateGraphqlApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateGraphqlApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    UpdateGraphqlApiRequest.add_member(:log_config, Shapes::ShapeRef.new(shape: LogConfig, location_name: "logConfig"))
    UpdateGraphqlApiRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, required: true, location_name: "authenticationType"))
    UpdateGraphqlApiRequest.add_member(:user_pool_config, Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: "userPoolConfig"))
    UpdateGraphqlApiRequest.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: "openIDConnectConfig"))
    UpdateGraphqlApiRequest.add_member(:additional_authentication_providers, Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: "additionalAuthenticationProviders"))
    UpdateGraphqlApiRequest.add_member(:xray_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "xrayEnabled"))
    UpdateGraphqlApiRequest.add_member(:lambda_authorizer_config, Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: "lambdaAuthorizerConfig"))
    UpdateGraphqlApiRequest.add_member(:merged_api_execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "mergedApiExecutionRoleArn"))
    UpdateGraphqlApiRequest.add_member(:owner_contact, Shapes::ShapeRef.new(shape: String, location_name: "ownerContact"))
    UpdateGraphqlApiRequest.add_member(:introspection_config, Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: "introspectionConfig"))
    UpdateGraphqlApiRequest.add_member(:query_depth_limit, Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: "queryDepthLimit"))
    UpdateGraphqlApiRequest.add_member(:resolver_count_limit, Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: "resolverCountLimit"))
    UpdateGraphqlApiRequest.add_member(:enhanced_metrics_config, Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: "enhancedMetricsConfig"))
    UpdateGraphqlApiRequest.struct_class = Types::UpdateGraphqlApiRequest

    UpdateGraphqlApiResponse.add_member(:graphql_api, Shapes::ShapeRef.new(shape: GraphqlApi, location_name: "graphqlApi"))
    UpdateGraphqlApiResponse.struct_class = Types::UpdateGraphqlApiResponse

    UpdateResolverRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateResolverRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "typeName"))
    UpdateResolverRequest.add_member(:field_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "fieldName"))
    UpdateResolverRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "dataSourceName"))
    UpdateResolverRequest.add_member(:request_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "requestMappingTemplate"))
    UpdateResolverRequest.add_member(:response_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "responseMappingTemplate"))
    UpdateResolverRequest.add_member(:kind, Shapes::ShapeRef.new(shape: ResolverKind, location_name: "kind"))
    UpdateResolverRequest.add_member(:pipeline_config, Shapes::ShapeRef.new(shape: PipelineConfig, location_name: "pipelineConfig"))
    UpdateResolverRequest.add_member(:sync_config, Shapes::ShapeRef.new(shape: SyncConfig, location_name: "syncConfig"))
    UpdateResolverRequest.add_member(:caching_config, Shapes::ShapeRef.new(shape: CachingConfig, location_name: "cachingConfig"))
    UpdateResolverRequest.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: "maxBatchSize"))
    UpdateResolverRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: "runtime"))
    UpdateResolverRequest.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    UpdateResolverRequest.add_member(:metrics_config, Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: "metricsConfig"))
    UpdateResolverRequest.struct_class = Types::UpdateResolverRequest

    UpdateResolverResponse.add_member(:resolver, Shapes::ShapeRef.new(shape: Resolver, location_name: "resolver"))
    UpdateResolverResponse.struct_class = Types::UpdateResolverResponse

    UpdateSourceApiAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    UpdateSourceApiAssociationRequest.add_member(:merged_api_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "mergedApiIdentifier"))
    UpdateSourceApiAssociationRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateSourceApiAssociationRequest.add_member(:source_api_association_config, Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: "sourceApiAssociationConfig"))
    UpdateSourceApiAssociationRequest.struct_class = Types::UpdateSourceApiAssociationRequest

    UpdateSourceApiAssociationResponse.add_member(:source_api_association, Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: "sourceApiAssociation"))
    UpdateSourceApiAssociationResponse.struct_class = Types::UpdateSourceApiAssociationResponse

    UpdateTypeRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateTypeRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "typeName"))
    UpdateTypeRequest.add_member(:definition, Shapes::ShapeRef.new(shape: String, location_name: "definition"))
    UpdateTypeRequest.add_member(:format, Shapes::ShapeRef.new(shape: TypeDefinitionFormat, required: true, location_name: "format"))
    UpdateTypeRequest.struct_class = Types::UpdateTypeRequest

    UpdateTypeResponse.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    UpdateTypeResponse.struct_class = Types::UpdateTypeResponse

    UserPoolConfig.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userPoolId"))
    UserPoolConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    UserPoolConfig.add_member(:default_action, Shapes::ShapeRef.new(shape: DefaultAction, required: true, location_name: "defaultAction"))
    UserPoolConfig.add_member(:app_id_client_regex, Shapes::ShapeRef.new(shape: String, location_name: "appIdClientRegex"))
    UserPoolConfig.struct_class = Types::UserPoolConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-25"

      api.metadata = {
        "apiVersion" => "2017-07-25",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "appsync",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "AWSAppSync",
        "serviceFullName" => "AWS AppSync",
        "serviceId" => "AppSync",
        "signatureVersion" => "v4",
        "signingName" => "appsync",
        "uid" => "appsync-2017-07-25",
      }

      api.add_operation(:associate_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateApi"
        o.http_method = "POST"
        o.http_request_uri = "/v1/domainnames/{domainName}/apiassociation"
        o.input = Shapes::ShapeRef.new(shape: AssociateApiRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:associate_merged_graphql_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMergedGraphqlApi"
        o.http_method = "POST"
        o.http_request_uri = "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations"
        o.input = Shapes::ShapeRef.new(shape: AssociateMergedGraphqlApiRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateMergedGraphqlApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:associate_source_graphql_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSourceGraphqlApi"
        o.http_method = "POST"
        o.http_request_uri = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations"
        o.input = Shapes::ShapeRef.new(shape: AssociateSourceGraphqlApiRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSourceGraphqlApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApi"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis"
        o.input = Shapes::ShapeRef.new(shape: CreateApiRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_api_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApiCache"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/ApiCaches"
        o.input = Shapes::ShapeRef.new(shape: CreateApiCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApiCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_api_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApiKey"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/apikeys"
        o.input = Shapes::ShapeRef.new(shape: CreateApiKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApiKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ApiKeyLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ApiKeyValidityOutOfBoundsException)
      end)

      api.add_operation(:create_channel_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/channelNamespaces"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/datasources"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_domain_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomainName"
        o.http_method = "POST"
        o.http_request_uri = "/v1/domainnames"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainNameRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFunction"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/functions"
        o.input = Shapes::ShapeRef.new(shape: CreateFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_graphql_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGraphqlApi"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis"
        o.input = Shapes::ShapeRef.new(shape: CreateGraphqlApiRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGraphqlApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ApiLimitExceededException)
      end)

      api.add_operation(:create_resolver, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResolver"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/types/{typeName}/resolvers"
        o.input = Shapes::ShapeRef.new(shape: CreateResolverRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResolverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateType"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/types"
        o.input = Shapes::ShapeRef.new(shape: CreateTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApi"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApiRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_api_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApiCache"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apis/{apiId}/ApiCaches"
        o.input = Shapes::ShapeRef.new(shape: DeleteApiCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApiCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_api_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApiKey"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apis/{apiId}/apikeys/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApiKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApiKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_channel_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelNamespace"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/channelNamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apis/{apiId}/datasources/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_domain_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomainName"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/domainnames/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainNameRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunction"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apis/{apiId}/functions/{functionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_graphql_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGraphqlApi"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGraphqlApiRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGraphqlApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resolver, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResolver"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResolverRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResolverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteType"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apis/{apiId}/types/{typeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:disassociate_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateApi"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/domainnames/{domainName}/apiassociation"
        o.input = Shapes::ShapeRef.new(shape: DisassociateApiRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:disassociate_merged_graphql_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMergedGraphqlApi"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations/{associationId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMergedGraphqlApiRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMergedGraphqlApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:disassociate_source_graphql_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSourceGraphqlApi"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSourceGraphqlApiRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSourceGraphqlApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:evaluate_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EvaluateCode"
        o.http_method = "POST"
        o.http_request_uri = "/v1/dataplane-evaluatecode"
        o.input = Shapes::ShapeRef.new(shape: EvaluateCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: EvaluateCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:evaluate_mapping_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EvaluateMappingTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/dataplane-evaluatetemplate"
        o.input = Shapes::ShapeRef.new(shape: EvaluateMappingTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: EvaluateMappingTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:flush_api_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FlushApiCache"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/apis/{apiId}/FlushCache"
        o.input = Shapes::ShapeRef.new(shape: FlushApiCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: FlushApiCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApi"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: GetApiRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_api_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApiAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/domainnames/{domainName}/apiassociation"
        o.input = Shapes::ShapeRef.new(shape: GetApiAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApiAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_api_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApiCache"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/ApiCaches"
        o.input = Shapes::ShapeRef.new(shape: GetApiCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApiCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_channel_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelNamespace"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/channelNamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetChannelNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/datasources/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_data_source_introspection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSourceIntrospection"
        o.http_method = "GET"
        o.http_request_uri = "/v1/datasources/introspections/{introspectionId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceIntrospectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceIntrospectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_domain_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainName"
        o.http_method = "GET"
        o.http_request_uri = "/v1/domainnames/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainNameRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunction"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/functions/{functionId}"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_graphql_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGraphqlApi"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: GetGraphqlApiRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGraphqlApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_graphql_api_environment_variables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGraphqlApiEnvironmentVariables"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/environmentVariables"
        o.input = Shapes::ShapeRef.new(shape: GetGraphqlApiEnvironmentVariablesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGraphqlApiEnvironmentVariablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_introspection_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntrospectionSchema"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/schema"
        o.input = Shapes::ShapeRef.new(shape: GetIntrospectionSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntrospectionSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: GraphQLSchemaException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_resolver, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolver"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
        o.input = Shapes::ShapeRef.new(shape: GetResolverRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_schema_creation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaCreationStatus"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/schemacreation"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaCreationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaCreationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_source_api_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSourceApiAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}"
        o.input = Shapes::ShapeRef.new(shape: GetSourceApiAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSourceApiAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetType"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/types/{typeName}"
        o.input = Shapes::ShapeRef.new(shape: GetTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_api_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApiKeys"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/apikeys"
        o.input = Shapes::ShapeRef.new(shape: ListApiKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApiKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_apis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApis"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis"
        o.input = Shapes::ShapeRef.new(shape: ListApisRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApisResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_namespaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelNamespaces"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/channelNamespaces"
        o.input = Shapes::ShapeRef.new(shape: ListChannelNamespacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelNamespacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSources"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/datasources"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domain_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainNames"
        o.http_method = "GET"
        o.http_request_uri = "/v1/domainnames"
        o.input = Shapes::ShapeRef.new(shape: ListDomainNamesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/functions"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_graphql_apis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGraphqlApis"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis"
        o.input = Shapes::ShapeRef.new(shape: ListGraphqlApisRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGraphqlApisResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolvers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolvers"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/types/{typeName}/resolvers"
        o.input = Shapes::ShapeRef.new(shape: ListResolversRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolversResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolvers_by_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolversByFunction"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/functions/{functionId}/resolvers"
        o.input = Shapes::ShapeRef.new(shape: ListResolversByFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolversByFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_source_api_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSourceApiAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/sourceApiAssociations"
        o.input = Shapes::ShapeRef.new(shape: ListSourceApiAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSourceApiAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTypes"
        o.http_method = "GET"
        o.http_request_uri = "/v1/apis/{apiId}/types"
        o.input = Shapes::ShapeRef.new(shape: ListTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_types_by_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTypesByAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/types"
        o.input = Shapes::ShapeRef.new(shape: ListTypesByAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTypesByAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_graphql_api_environment_variables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutGraphqlApiEnvironmentVariables"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/apis/{apiId}/environmentVariables"
        o.input = Shapes::ShapeRef.new(shape: PutGraphqlApiEnvironmentVariablesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutGraphqlApiEnvironmentVariablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_data_source_introspection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataSourceIntrospection"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datasources/introspections"
        o.input = Shapes::ShapeRef.new(shape: StartDataSourceIntrospectionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataSourceIntrospectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:start_schema_creation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSchemaCreation"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/schemacreation"
        o.input = Shapes::ShapeRef.new(shape: StartSchemaCreationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSchemaCreationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:start_schema_merge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSchemaMerge"
        o.http_method = "POST"
        o.http_request_uri = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/merge"
        o.input = Shapes::ShapeRef.new(shape: StartSchemaMergeRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSchemaMergeResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApi"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApiRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_api_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApiCache"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/ApiCaches/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateApiCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApiCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_api_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApiKey"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/apikeys/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApiKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApiKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ApiKeyValidityOutOfBoundsException)
      end)

      api.add_operation(:update_channel_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/channelNamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/datasources/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_domain_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainName"
        o.http_method = "POST"
        o.http_request_uri = "/v1/domainnames/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainNameRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:update_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunction"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/functions/{functionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_graphql_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGraphqlApi"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGraphqlApiRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGraphqlApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_resolver, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResolver"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateResolverRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResolverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_source_api_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSourceApiAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSourceApiAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSourceApiAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateType"
        o.http_method = "POST"
        o.http_request_uri = "/v1/apis/{apiId}/types/{typeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)
    end

  end
end
