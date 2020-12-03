# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppSync
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AdditionalAuthenticationProvider = Shapes::StructureShape.new(name: 'AdditionalAuthenticationProvider')
    AdditionalAuthenticationProviders = Shapes::ListShape.new(name: 'AdditionalAuthenticationProviders')
    ApiCache = Shapes::StructureShape.new(name: 'ApiCache')
    ApiCacheStatus = Shapes::StringShape.new(name: 'ApiCacheStatus')
    ApiCacheType = Shapes::StringShape.new(name: 'ApiCacheType')
    ApiCachingBehavior = Shapes::StringShape.new(name: 'ApiCachingBehavior')
    ApiKey = Shapes::StructureShape.new(name: 'ApiKey')
    ApiKeyLimitExceededException = Shapes::StructureShape.new(name: 'ApiKeyLimitExceededException')
    ApiKeyValidityOutOfBoundsException = Shapes::StructureShape.new(name: 'ApiKeyValidityOutOfBoundsException')
    ApiKeys = Shapes::ListShape.new(name: 'ApiKeys')
    ApiLimitExceededException = Shapes::StructureShape.new(name: 'ApiLimitExceededException')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    AuthorizationConfig = Shapes::StructureShape.new(name: 'AuthorizationConfig')
    AuthorizationType = Shapes::StringShape.new(name: 'AuthorizationType')
    AwsIamConfig = Shapes::StructureShape.new(name: 'AwsIamConfig')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanValue = Shapes::BooleanShape.new(name: 'BooleanValue')
    CachingConfig = Shapes::StructureShape.new(name: 'CachingConfig')
    CachingKeys = Shapes::ListShape.new(name: 'CachingKeys')
    CognitoUserPoolConfig = Shapes::StructureShape.new(name: 'CognitoUserPoolConfig')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConflictDetectionType = Shapes::StringShape.new(name: 'ConflictDetectionType')
    ConflictHandlerType = Shapes::StringShape.new(name: 'ConflictHandlerType')
    CreateApiCacheRequest = Shapes::StructureShape.new(name: 'CreateApiCacheRequest')
    CreateApiCacheResponse = Shapes::StructureShape.new(name: 'CreateApiCacheResponse')
    CreateApiKeyRequest = Shapes::StructureShape.new(name: 'CreateApiKeyRequest')
    CreateApiKeyResponse = Shapes::StructureShape.new(name: 'CreateApiKeyResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateFunctionRequest = Shapes::StructureShape.new(name: 'CreateFunctionRequest')
    CreateFunctionResponse = Shapes::StructureShape.new(name: 'CreateFunctionResponse')
    CreateGraphqlApiRequest = Shapes::StructureShape.new(name: 'CreateGraphqlApiRequest')
    CreateGraphqlApiResponse = Shapes::StructureShape.new(name: 'CreateGraphqlApiResponse')
    CreateResolverRequest = Shapes::StructureShape.new(name: 'CreateResolverRequest')
    CreateResolverResponse = Shapes::StructureShape.new(name: 'CreateResolverResponse')
    CreateTypeRequest = Shapes::StructureShape.new(name: 'CreateTypeRequest')
    CreateTypeResponse = Shapes::StructureShape.new(name: 'CreateTypeResponse')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    DefaultAction = Shapes::StringShape.new(name: 'DefaultAction')
    DeleteApiCacheRequest = Shapes::StructureShape.new(name: 'DeleteApiCacheRequest')
    DeleteApiCacheResponse = Shapes::StructureShape.new(name: 'DeleteApiCacheResponse')
    DeleteApiKeyRequest = Shapes::StructureShape.new(name: 'DeleteApiKeyRequest')
    DeleteApiKeyResponse = Shapes::StructureShape.new(name: 'DeleteApiKeyResponse')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Shapes::StructureShape.new(name: 'DeleteDataSourceResponse')
    DeleteFunctionRequest = Shapes::StructureShape.new(name: 'DeleteFunctionRequest')
    DeleteFunctionResponse = Shapes::StructureShape.new(name: 'DeleteFunctionResponse')
    DeleteGraphqlApiRequest = Shapes::StructureShape.new(name: 'DeleteGraphqlApiRequest')
    DeleteGraphqlApiResponse = Shapes::StructureShape.new(name: 'DeleteGraphqlApiResponse')
    DeleteResolverRequest = Shapes::StructureShape.new(name: 'DeleteResolverRequest')
    DeleteResolverResponse = Shapes::StructureShape.new(name: 'DeleteResolverResponse')
    DeleteTypeRequest = Shapes::StructureShape.new(name: 'DeleteTypeRequest')
    DeleteTypeResponse = Shapes::StructureShape.new(name: 'DeleteTypeResponse')
    DeltaSyncConfig = Shapes::StructureShape.new(name: 'DeltaSyncConfig')
    DynamodbDataSourceConfig = Shapes::StructureShape.new(name: 'DynamodbDataSourceConfig')
    ElasticsearchDataSourceConfig = Shapes::StructureShape.new(name: 'ElasticsearchDataSourceConfig')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FieldLogLevel = Shapes::StringShape.new(name: 'FieldLogLevel')
    FlushApiCacheRequest = Shapes::StructureShape.new(name: 'FlushApiCacheRequest')
    FlushApiCacheResponse = Shapes::StructureShape.new(name: 'FlushApiCacheResponse')
    FunctionConfiguration = Shapes::StructureShape.new(name: 'FunctionConfiguration')
    Functions = Shapes::ListShape.new(name: 'Functions')
    FunctionsIds = Shapes::ListShape.new(name: 'FunctionsIds')
    GetApiCacheRequest = Shapes::StructureShape.new(name: 'GetApiCacheRequest')
    GetApiCacheResponse = Shapes::StructureShape.new(name: 'GetApiCacheResponse')
    GetDataSourceRequest = Shapes::StructureShape.new(name: 'GetDataSourceRequest')
    GetDataSourceResponse = Shapes::StructureShape.new(name: 'GetDataSourceResponse')
    GetFunctionRequest = Shapes::StructureShape.new(name: 'GetFunctionRequest')
    GetFunctionResponse = Shapes::StructureShape.new(name: 'GetFunctionResponse')
    GetGraphqlApiRequest = Shapes::StructureShape.new(name: 'GetGraphqlApiRequest')
    GetGraphqlApiResponse = Shapes::StructureShape.new(name: 'GetGraphqlApiResponse')
    GetIntrospectionSchemaRequest = Shapes::StructureShape.new(name: 'GetIntrospectionSchemaRequest')
    GetIntrospectionSchemaResponse = Shapes::StructureShape.new(name: 'GetIntrospectionSchemaResponse')
    GetResolverRequest = Shapes::StructureShape.new(name: 'GetResolverRequest')
    GetResolverResponse = Shapes::StructureShape.new(name: 'GetResolverResponse')
    GetSchemaCreationStatusRequest = Shapes::StructureShape.new(name: 'GetSchemaCreationStatusRequest')
    GetSchemaCreationStatusResponse = Shapes::StructureShape.new(name: 'GetSchemaCreationStatusResponse')
    GetTypeRequest = Shapes::StructureShape.new(name: 'GetTypeRequest')
    GetTypeResponse = Shapes::StructureShape.new(name: 'GetTypeResponse')
    GraphQLSchemaException = Shapes::StructureShape.new(name: 'GraphQLSchemaException')
    GraphqlApi = Shapes::StructureShape.new(name: 'GraphqlApi')
    GraphqlApis = Shapes::ListShape.new(name: 'GraphqlApis')
    HttpDataSourceConfig = Shapes::StructureShape.new(name: 'HttpDataSourceConfig')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    LambdaConflictHandlerConfig = Shapes::StructureShape.new(name: 'LambdaConflictHandlerConfig')
    LambdaDataSourceConfig = Shapes::StructureShape.new(name: 'LambdaDataSourceConfig')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListApiKeysRequest = Shapes::StructureShape.new(name: 'ListApiKeysRequest')
    ListApiKeysResponse = Shapes::StructureShape.new(name: 'ListApiKeysResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListFunctionsRequest = Shapes::StructureShape.new(name: 'ListFunctionsRequest')
    ListFunctionsResponse = Shapes::StructureShape.new(name: 'ListFunctionsResponse')
    ListGraphqlApisRequest = Shapes::StructureShape.new(name: 'ListGraphqlApisRequest')
    ListGraphqlApisResponse = Shapes::StructureShape.new(name: 'ListGraphqlApisResponse')
    ListResolversByFunctionRequest = Shapes::StructureShape.new(name: 'ListResolversByFunctionRequest')
    ListResolversByFunctionResponse = Shapes::StructureShape.new(name: 'ListResolversByFunctionResponse')
    ListResolversRequest = Shapes::StructureShape.new(name: 'ListResolversRequest')
    ListResolversResponse = Shapes::StructureShape.new(name: 'ListResolversResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTypesRequest = Shapes::StructureShape.new(name: 'ListTypesRequest')
    ListTypesResponse = Shapes::StructureShape.new(name: 'ListTypesResponse')
    LogConfig = Shapes::StructureShape.new(name: 'LogConfig')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MapOfStringToString = Shapes::MapShape.new(name: 'MapOfStringToString')
    MappingTemplate = Shapes::StringShape.new(name: 'MappingTemplate')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OpenIDConnectConfig = Shapes::StructureShape.new(name: 'OpenIDConnectConfig')
    OutputType = Shapes::StringShape.new(name: 'OutputType')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PipelineConfig = Shapes::StructureShape.new(name: 'PipelineConfig')
    RdsHttpEndpointConfig = Shapes::StructureShape.new(name: 'RdsHttpEndpointConfig')
    RelationalDatabaseDataSourceConfig = Shapes::StructureShape.new(name: 'RelationalDatabaseDataSourceConfig')
    RelationalDatabaseSourceType = Shapes::StringShape.new(name: 'RelationalDatabaseSourceType')
    Resolver = Shapes::StructureShape.new(name: 'Resolver')
    ResolverKind = Shapes::StringShape.new(name: 'ResolverKind')
    Resolvers = Shapes::ListShape.new(name: 'Resolvers')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    SchemaStatus = Shapes::StringShape.new(name: 'SchemaStatus')
    StartSchemaCreationRequest = Shapes::StructureShape.new(name: 'StartSchemaCreationRequest')
    StartSchemaCreationResponse = Shapes::StructureShape.new(name: 'StartSchemaCreationResponse')
    String = Shapes::StringShape.new(name: 'String')
    SyncConfig = Shapes::StructureShape.new(name: 'SyncConfig')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
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
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Shapes::StructureShape.new(name: 'UpdateDataSourceResponse')
    UpdateFunctionRequest = Shapes::StructureShape.new(name: 'UpdateFunctionRequest')
    UpdateFunctionResponse = Shapes::StructureShape.new(name: 'UpdateFunctionResponse')
    UpdateGraphqlApiRequest = Shapes::StructureShape.new(name: 'UpdateGraphqlApiRequest')
    UpdateGraphqlApiResponse = Shapes::StructureShape.new(name: 'UpdateGraphqlApiResponse')
    UpdateResolverRequest = Shapes::StructureShape.new(name: 'UpdateResolverRequest')
    UpdateResolverResponse = Shapes::StructureShape.new(name: 'UpdateResolverResponse')
    UpdateTypeRequest = Shapes::StructureShape.new(name: 'UpdateTypeRequest')
    UpdateTypeResponse = Shapes::StructureShape.new(name: 'UpdateTypeResponse')
    UserPoolConfig = Shapes::StructureShape.new(name: 'UserPoolConfig')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AdditionalAuthenticationProvider.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "authenticationType"))
    AdditionalAuthenticationProvider.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: "openIDConnectConfig"))
    AdditionalAuthenticationProvider.add_member(:user_pool_config, Shapes::ShapeRef.new(shape: CognitoUserPoolConfig, location_name: "userPoolConfig"))
    AdditionalAuthenticationProvider.struct_class = Types::AdditionalAuthenticationProvider

    AdditionalAuthenticationProviders.member = Shapes::ShapeRef.new(shape: AdditionalAuthenticationProvider)

    ApiCache.add_member(:ttl, Shapes::ShapeRef.new(shape: Long, location_name: "ttl"))
    ApiCache.add_member(:api_caching_behavior, Shapes::ShapeRef.new(shape: ApiCachingBehavior, location_name: "apiCachingBehavior"))
    ApiCache.add_member(:transit_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "transitEncryptionEnabled"))
    ApiCache.add_member(:at_rest_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "atRestEncryptionEnabled"))
    ApiCache.add_member(:type, Shapes::ShapeRef.new(shape: ApiCacheType, location_name: "type"))
    ApiCache.add_member(:status, Shapes::ShapeRef.new(shape: ApiCacheStatus, location_name: "status"))
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

    AuthorizationConfig.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, required: true, location_name: "authorizationType"))
    AuthorizationConfig.add_member(:aws_iam_config, Shapes::ShapeRef.new(shape: AwsIamConfig, location_name: "awsIamConfig"))
    AuthorizationConfig.struct_class = Types::AuthorizationConfig

    AwsIamConfig.add_member(:signing_region, Shapes::ShapeRef.new(shape: String, location_name: "signingRegion"))
    AwsIamConfig.add_member(:signing_service_name, Shapes::ShapeRef.new(shape: String, location_name: "signingServiceName"))
    AwsIamConfig.struct_class = Types::AwsIamConfig

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    CachingConfig.add_member(:ttl, Shapes::ShapeRef.new(shape: Long, location_name: "ttl"))
    CachingConfig.add_member(:caching_keys, Shapes::ShapeRef.new(shape: CachingKeys, location_name: "cachingKeys"))
    CachingConfig.struct_class = Types::CachingConfig

    CachingKeys.member = Shapes::ShapeRef.new(shape: String)

    CognitoUserPoolConfig.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userPoolId"))
    CognitoUserPoolConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    CognitoUserPoolConfig.add_member(:app_id_client_regex, Shapes::ShapeRef.new(shape: String, location_name: "appIdClientRegex"))
    CognitoUserPoolConfig.struct_class = Types::CognitoUserPoolConfig

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    CreateApiCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateApiCacheRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ttl"))
    CreateApiCacheRequest.add_member(:transit_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "transitEncryptionEnabled"))
    CreateApiCacheRequest.add_member(:at_rest_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "atRestEncryptionEnabled"))
    CreateApiCacheRequest.add_member(:api_caching_behavior, Shapes::ShapeRef.new(shape: ApiCachingBehavior, required: true, location_name: "apiCachingBehavior"))
    CreateApiCacheRequest.add_member(:type, Shapes::ShapeRef.new(shape: ApiCacheType, required: true, location_name: "type"))
    CreateApiCacheRequest.struct_class = Types::CreateApiCacheRequest

    CreateApiCacheResponse.add_member(:api_cache, Shapes::ShapeRef.new(shape: ApiCache, location_name: "apiCache"))
    CreateApiCacheResponse.struct_class = Types::CreateApiCacheResponse

    CreateApiKeyRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateApiKeyRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateApiKeyRequest.add_member(:expires, Shapes::ShapeRef.new(shape: Long, location_name: "expires"))
    CreateApiKeyRequest.struct_class = Types::CreateApiKeyRequest

    CreateApiKeyResponse.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKey, location_name: "apiKey"))
    CreateApiKeyResponse.struct_class = Types::CreateApiKeyResponse

    CreateDataSourceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateDataSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "type"))
    CreateDataSourceRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceRoleArn"))
    CreateDataSourceRequest.add_member(:dynamodb_config, Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: "dynamodbConfig"))
    CreateDataSourceRequest.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: "lambdaConfig"))
    CreateDataSourceRequest.add_member(:elasticsearch_config, Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: "elasticsearchConfig"))
    CreateDataSourceRequest.add_member(:http_config, Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: "httpConfig"))
    CreateDataSourceRequest.add_member(:relational_database_config, Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: "relationalDatabaseConfig"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateFunctionRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    CreateFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateFunctionRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "dataSourceName"))
    CreateFunctionRequest.add_member(:request_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "requestMappingTemplate"))
    CreateFunctionRequest.add_member(:response_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "responseMappingTemplate"))
    CreateFunctionRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "functionVersion"))
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
    DataSource.add_member(:http_config, Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: "httpConfig"))
    DataSource.add_member(:relational_database_config, Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: "relationalDatabaseConfig"))
    DataSource.struct_class = Types::DataSource

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DeleteApiCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteApiCacheRequest.struct_class = Types::DeleteApiCacheRequest

    DeleteApiCacheResponse.struct_class = Types::DeleteApiCacheResponse

    DeleteApiKeyRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteApiKeyRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    DeleteApiKeyRequest.struct_class = Types::DeleteApiKeyRequest

    DeleteApiKeyResponse.struct_class = Types::DeleteApiKeyResponse

    DeleteDataSourceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    DeleteDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "name"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteDataSourceResponse.struct_class = Types::DeleteDataSourceResponse

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

    DynamodbDataSourceConfig.add_member(:table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "tableName"))
    DynamodbDataSourceConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    DynamodbDataSourceConfig.add_member(:use_caller_credentials, Shapes::ShapeRef.new(shape: Boolean, location_name: "useCallerCredentials"))
    DynamodbDataSourceConfig.add_member(:delta_sync_config, Shapes::ShapeRef.new(shape: DeltaSyncConfig, location_name: "deltaSyncConfig"))
    DynamodbDataSourceConfig.add_member(:versioned, Shapes::ShapeRef.new(shape: Boolean, location_name: "versioned"))
    DynamodbDataSourceConfig.struct_class = Types::DynamodbDataSourceConfig

    ElasticsearchDataSourceConfig.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpoint"))
    ElasticsearchDataSourceConfig.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsRegion"))
    ElasticsearchDataSourceConfig.struct_class = Types::ElasticsearchDataSourceConfig

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
    FunctionConfiguration.struct_class = Types::FunctionConfiguration

    Functions.member = Shapes::ShapeRef.new(shape: FunctionConfiguration)

    FunctionsIds.member = Shapes::ShapeRef.new(shape: String)

    GetApiCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetApiCacheRequest.struct_class = Types::GetApiCacheRequest

    GetApiCacheResponse.add_member(:api_cache, Shapes::ShapeRef.new(shape: ApiCache, location_name: "apiCache"))
    GetApiCacheResponse.struct_class = Types::GetApiCacheResponse

    GetDataSourceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "name"))
    GetDataSourceRequest.struct_class = Types::GetDataSourceRequest

    GetDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    GetDataSourceResponse.struct_class = Types::GetDataSourceResponse

    GetFunctionRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    GetFunctionRequest.add_member(:function_id, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "functionId"))
    GetFunctionRequest.struct_class = Types::GetFunctionRequest

    GetFunctionResponse.add_member(:function_configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "functionConfiguration"))
    GetFunctionResponse.struct_class = Types::GetFunctionResponse

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
    GraphqlApi.struct_class = Types::GraphqlApi

    GraphqlApis.member = Shapes::ShapeRef.new(shape: GraphqlApi)

    HttpDataSourceConfig.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    HttpDataSourceConfig.add_member(:authorization_config, Shapes::ShapeRef.new(shape: AuthorizationConfig, location_name: "authorizationConfig"))
    HttpDataSourceConfig.struct_class = Types::HttpDataSourceConfig

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

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

    ListDataSourcesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSourcesRequest.struct_class = Types::ListDataSourcesRequest

    ListDataSourcesResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    ListDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataSourcesResponse.struct_class = Types::ListDataSourcesResponse

    ListFunctionsRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    ListFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFunctionsRequest.struct_class = Types::ListFunctionsRequest

    ListFunctionsResponse.add_member(:functions, Shapes::ShapeRef.new(shape: Functions, location_name: "functions"))
    ListFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFunctionsResponse.struct_class = Types::ListFunctionsResponse

    ListGraphqlApisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListGraphqlApisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

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

    MapOfStringToString.key = Shapes::ShapeRef.new(shape: String)
    MapOfStringToString.value = Shapes::ShapeRef.new(shape: String)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    OpenIDConnectConfig.add_member(:issuer, Shapes::ShapeRef.new(shape: String, required: true, location_name: "issuer"))
    OpenIDConnectConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: String, location_name: "clientId"))
    OpenIDConnectConfig.add_member(:iat_ttl, Shapes::ShapeRef.new(shape: Long, location_name: "iatTTL"))
    OpenIDConnectConfig.add_member(:auth_ttl, Shapes::ShapeRef.new(shape: Long, location_name: "authTTL"))
    OpenIDConnectConfig.struct_class = Types::OpenIDConnectConfig

    PipelineConfig.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionsIds, location_name: "functions"))
    PipelineConfig.struct_class = Types::PipelineConfig

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
    Resolver.struct_class = Types::Resolver

    Resolvers.member = Shapes::ShapeRef.new(shape: Resolver)

    StartSchemaCreationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    StartSchemaCreationRequest.add_member(:definition, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "definition"))
    StartSchemaCreationRequest.struct_class = Types::StartSchemaCreationRequest

    StartSchemaCreationResponse.add_member(:status, Shapes::ShapeRef.new(shape: SchemaStatus, location_name: "status"))
    StartSchemaCreationResponse.struct_class = Types::StartSchemaCreationResponse

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

    UpdateDataSourceRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "name"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateDataSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "type"))
    UpdateDataSourceRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceRoleArn"))
    UpdateDataSourceRequest.add_member(:dynamodb_config, Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: "dynamodbConfig"))
    UpdateDataSourceRequest.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: "lambdaConfig"))
    UpdateDataSourceRequest.add_member(:elasticsearch_config, Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: "elasticsearchConfig"))
    UpdateDataSourceRequest.add_member(:http_config, Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: "httpConfig"))
    UpdateDataSourceRequest.add_member(:relational_database_config, Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: "relationalDatabaseConfig"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    UpdateDataSourceResponse.struct_class = Types::UpdateDataSourceResponse

    UpdateFunctionRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateFunctionRequest.add_member(:function_id, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "functionId"))
    UpdateFunctionRequest.add_member(:data_source_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "dataSourceName"))
    UpdateFunctionRequest.add_member(:request_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "requestMappingTemplate"))
    UpdateFunctionRequest.add_member(:response_mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "responseMappingTemplate"))
    UpdateFunctionRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "functionVersion"))
    UpdateFunctionRequest.struct_class = Types::UpdateFunctionRequest

    UpdateFunctionResponse.add_member(:function_configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "functionConfiguration"))
    UpdateFunctionResponse.struct_class = Types::UpdateFunctionResponse

    UpdateGraphqlApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "apiId"))
    UpdateGraphqlApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    UpdateGraphqlApiRequest.add_member(:log_config, Shapes::ShapeRef.new(shape: LogConfig, location_name: "logConfig"))
    UpdateGraphqlApiRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "authenticationType"))
    UpdateGraphqlApiRequest.add_member(:user_pool_config, Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: "userPoolConfig"))
    UpdateGraphqlApiRequest.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: "openIDConnectConfig"))
    UpdateGraphqlApiRequest.add_member(:additional_authentication_providers, Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: "additionalAuthenticationProviders"))
    UpdateGraphqlApiRequest.add_member(:xray_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "xrayEnabled"))
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
    UpdateResolverRequest.struct_class = Types::UpdateResolverRequest

    UpdateResolverResponse.add_member(:resolver, Shapes::ShapeRef.new(shape: Resolver, location_name: "resolver"))
    UpdateResolverResponse.struct_class = Types::UpdateResolverResponse

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
        "endpointPrefix" => "appsync",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "AWSAppSync",
        "serviceFullName" => "AWS AppSync",
        "serviceId" => "AppSync",
        "signatureVersion" => "v4",
        "signingName" => "appsync",
        "uid" => "appsync-2017-07-25",
      }

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
