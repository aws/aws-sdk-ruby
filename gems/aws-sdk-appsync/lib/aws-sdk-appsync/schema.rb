# frozen_string_literal: true

# This is generated code!

module Aws::AppSync
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AdditionalAuthenticationProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AdditionalAuthenticationProvider', name: 'AdditionalAuthenticationProvider')
    AdditionalAuthenticationProviders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#AdditionalAuthenticationProviders', name: 'AdditionalAuthenticationProviders')
    Api = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#Api', name: 'Api')
    ApiAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiAssociation', name: 'ApiAssociation')
    ApiCache = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiCache', name: 'ApiCache')
    ApiCacheStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ApiCacheStatus', name: 'ApiCacheStatus')
    ApiCacheType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ApiCacheType', name: 'ApiCacheType')
    ApiCachingBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ApiCachingBehavior', name: 'ApiCachingBehavior')
    ApiKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiKey', name: 'ApiKey')
    ApiKeyLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiKeyLimitExceededException', name: 'ApiKeyLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiKeyValidityOutOfBoundsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiKeyValidityOutOfBoundsException', name: 'ApiKeyValidityOutOfBoundsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#ApiKeys', name: 'ApiKeys')
    ApiLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiLimitExceededException', name: 'ApiLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#ApiName', name: 'ApiName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-\\ ]+$"})
    Apis = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#Apis', name: 'Apis')
    AppSyncRuntime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AppSyncRuntime', name: 'AppSyncRuntime')
    AssociateApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateApiRequest', name: 'AssociateApiRequest')
    AssociateApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateApiResponse', name: 'AssociateApiResponse')
    AssociateMergedGraphqlApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateMergedGraphqlApiRequest', name: 'AssociateMergedGraphqlApiRequest')
    AssociateMergedGraphqlApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateMergedGraphqlApiResponse', name: 'AssociateMergedGraphqlApiResponse')
    AssociateSourceGraphqlApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateSourceGraphqlApiRequest', name: 'AssociateSourceGraphqlApiRequest')
    AssociateSourceGraphqlApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateSourceGraphqlApiResponse', name: 'AssociateSourceGraphqlApiResponse')
    AssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#AssociationStatus', name: 'AssociationStatus')
    AuthMode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AuthMode', name: 'AuthMode')
    AuthModes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#AuthModes', name: 'AuthModes')
    AuthProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AuthProvider', name: 'AuthProvider')
    AuthProviders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#AuthProviders', name: 'AuthProviders')
    AuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#AuthenticationType', name: 'AuthenticationType')
    AuthorizationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AuthorizationConfig', name: 'AuthorizationConfig')
    AuthorizationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#AuthorizationType', name: 'AuthorizationType')
    AwsIamConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AwsIamConfig', name: 'AwsIamConfig')
    BadRequestDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#BadRequestDetail', name: 'BadRequestDetail')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BadRequestReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#BadRequestReason', name: 'BadRequestReason')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.appsync#Blob', name: 'Blob')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.appsync#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BooleanValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.appsync#BooleanValue', name: 'BooleanValue')
    CacheHealthMetricsConfig = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#CacheHealthMetricsConfig', name: 'CacheHealthMetricsConfig')
    CachingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CachingConfig', name: 'CachingConfig')
    CachingKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#CachingKeys', name: 'CachingKeys')
    CertificateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#CertificateArn', name: 'CertificateArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:(acm|iam):[a-z0-9-]*:\\d{12}:(certificate|server-certificate)/[0-9A-Za-z_/-]*$"})
    ChannelNamespace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ChannelNamespace', name: 'ChannelNamespace')
    ChannelNamespaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#ChannelNamespaces', name: 'ChannelNamespaces')
    Code = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Code', name: 'Code', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CodeError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CodeError', name: 'CodeError')
    CodeErrorColumn = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#CodeErrorColumn', name: 'CodeErrorColumn', traits: {"smithy.api#default" => 0})
    CodeErrorLine = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#CodeErrorLine', name: 'CodeErrorLine', traits: {"smithy.api#default" => 0})
    CodeErrorLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CodeErrorLocation', name: 'CodeErrorLocation')
    CodeErrorSpan = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#CodeErrorSpan', name: 'CodeErrorSpan', traits: {"smithy.api#default" => 0})
    CodeErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#CodeErrors', name: 'CodeErrors')
    CognitoConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CognitoConfig', name: 'CognitoConfig')
    CognitoUserPoolConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CognitoUserPoolConfig', name: 'CognitoUserPoolConfig')
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictDetectionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ConflictDetectionType', name: 'ConflictDetectionType')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictHandlerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ConflictHandlerType', name: 'ConflictHandlerType')
    Context = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Context', name: 'Context', traits: {"smithy.api#length" => {"min" => 2, "max" => 28000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CreateApiCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiCacheRequest', name: 'CreateApiCacheRequest')
    CreateApiCacheResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiCacheResponse', name: 'CreateApiCacheResponse')
    CreateApiKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiKeyRequest', name: 'CreateApiKeyRequest')
    CreateApiKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiKeyResponse', name: 'CreateApiKeyResponse')
    CreateApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiRequest', name: 'CreateApiRequest')
    CreateApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiResponse', name: 'CreateApiResponse')
    CreateChannelNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateChannelNamespaceRequest', name: 'CreateChannelNamespaceRequest')
    CreateChannelNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateChannelNamespaceResponse', name: 'CreateChannelNamespaceResponse')
    CreateDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateDataSourceRequest', name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateDataSourceResponse', name: 'CreateDataSourceResponse')
    CreateDomainNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateDomainNameRequest', name: 'CreateDomainNameRequest')
    CreateDomainNameResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateDomainNameResponse', name: 'CreateDomainNameResponse')
    CreateFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateFunctionRequest', name: 'CreateFunctionRequest')
    CreateFunctionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateFunctionResponse', name: 'CreateFunctionResponse')
    CreateGraphqlApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateGraphqlApiRequest', name: 'CreateGraphqlApiRequest')
    CreateGraphqlApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateGraphqlApiResponse', name: 'CreateGraphqlApiResponse')
    CreateResolverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateResolverRequest', name: 'CreateResolverRequest')
    CreateResolverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateResolverResponse', name: 'CreateResolverResponse')
    CreateTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateTypeRequest', name: 'CreateTypeRequest')
    CreateTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateTypeResponse', name: 'CreateTypeResponse')
    DataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSource', name: 'DataSource')
    DataSourceIntrospectionModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModel', name: 'DataSourceIntrospectionModel')
    DataSourceIntrospectionModelField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelField', name: 'DataSourceIntrospectionModelField')
    DataSourceIntrospectionModelFieldType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelFieldType', name: 'DataSourceIntrospectionModelFieldType')
    DataSourceIntrospectionModelFieldTypeValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelFieldTypeValues', name: 'DataSourceIntrospectionModelFieldTypeValues')
    DataSourceIntrospectionModelFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelFields', name: 'DataSourceIntrospectionModelFields')
    DataSourceIntrospectionModelIndex = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelIndex', name: 'DataSourceIntrospectionModelIndex')
    DataSourceIntrospectionModelIndexFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelIndexFields', name: 'DataSourceIntrospectionModelIndexFields')
    DataSourceIntrospectionModelIndexes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelIndexes', name: 'DataSourceIntrospectionModelIndexes')
    DataSourceIntrospectionModels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModels', name: 'DataSourceIntrospectionModels')
    DataSourceIntrospectionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionResult', name: 'DataSourceIntrospectionResult')
    DataSourceIntrospectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionStatus', name: 'DataSourceIntrospectionStatus')
    DataSourceLevelMetricsBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DataSourceLevelMetricsBehavior', name: 'DataSourceLevelMetricsBehavior')
    DataSourceLevelMetricsConfig = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DataSourceLevelMetricsConfig', name: 'DataSourceLevelMetricsConfig')
    DataSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DataSourceType', name: 'DataSourceType')
    DataSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSources', name: 'DataSources')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.appsync#Date', name: 'Date')
    DefaultAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DefaultAction', name: 'DefaultAction')
    DeleteApiCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiCacheRequest', name: 'DeleteApiCacheRequest')
    DeleteApiCacheResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiCacheResponse', name: 'DeleteApiCacheResponse')
    DeleteApiKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiKeyRequest', name: 'DeleteApiKeyRequest')
    DeleteApiKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiKeyResponse', name: 'DeleteApiKeyResponse')
    DeleteApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiRequest', name: 'DeleteApiRequest')
    DeleteApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiResponse', name: 'DeleteApiResponse')
    DeleteChannelNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteChannelNamespaceRequest', name: 'DeleteChannelNamespaceRequest')
    DeleteChannelNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteChannelNamespaceResponse', name: 'DeleteChannelNamespaceResponse')
    DeleteDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteDataSourceRequest', name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteDataSourceResponse', name: 'DeleteDataSourceResponse')
    DeleteDomainNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteDomainNameRequest', name: 'DeleteDomainNameRequest')
    DeleteDomainNameResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteDomainNameResponse', name: 'DeleteDomainNameResponse')
    DeleteFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteFunctionRequest', name: 'DeleteFunctionRequest')
    DeleteFunctionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteFunctionResponse', name: 'DeleteFunctionResponse')
    DeleteGraphqlApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteGraphqlApiRequest', name: 'DeleteGraphqlApiRequest')
    DeleteGraphqlApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteGraphqlApiResponse', name: 'DeleteGraphqlApiResponse')
    DeleteResolverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteResolverRequest', name: 'DeleteResolverRequest')
    DeleteResolverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteResolverResponse', name: 'DeleteResolverResponse')
    DeleteTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteTypeRequest', name: 'DeleteTypeRequest')
    DeleteTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteTypeResponse', name: 'DeleteTypeResponse')
    DeltaSyncConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeltaSyncConfig', name: 'DeltaSyncConfig')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    DisassociateApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateApiRequest', name: 'DisassociateApiRequest')
    DisassociateApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateApiResponse', name: 'DisassociateApiResponse')
    DisassociateMergedGraphqlApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateMergedGraphqlApiRequest', name: 'DisassociateMergedGraphqlApiRequest')
    DisassociateMergedGraphqlApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateMergedGraphqlApiResponse', name: 'DisassociateMergedGraphqlApiResponse')
    DisassociateSourceGraphqlApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateSourceGraphqlApiRequest', name: 'DisassociateSourceGraphqlApiRequest')
    DisassociateSourceGraphqlApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateSourceGraphqlApiResponse', name: 'DisassociateSourceGraphqlApiResponse')
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(\\*[\\w\\d-]*\\.)?([\\w\\d-]+\\.)+[\\w\\d-]+$"})
    DomainNameConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DomainNameConfig', name: 'DomainNameConfig')
    DomainNameConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DomainNameConfigs', name: 'DomainNameConfigs')
    DynamodbDataSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DynamodbDataSourceConfig', name: 'DynamodbDataSourceConfig')
    ElasticsearchDataSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ElasticsearchDataSourceConfig', name: 'ElasticsearchDataSourceConfig')
    EnhancedMetricsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EnhancedMetricsConfig', name: 'EnhancedMetricsConfig')
    EnvironmentVariableKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#EnvironmentVariableKey', name: 'EnvironmentVariableKey', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+\\w*$"})
    EnvironmentVariableMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appsync#EnvironmentVariableMap', name: 'EnvironmentVariableMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    EnvironmentVariableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#EnvironmentVariableValue', name: 'EnvironmentVariableValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ErrorDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ErrorDetail', name: 'ErrorDetail')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#ErrorMessage', name: 'ErrorMessage')
    EvaluateCodeErrorDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateCodeErrorDetail', name: 'EvaluateCodeErrorDetail')
    EvaluateCodeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateCodeRequest', name: 'EvaluateCodeRequest')
    EvaluateCodeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateCodeResponse', name: 'EvaluateCodeResponse')
    EvaluateMappingTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateMappingTemplateRequest', name: 'EvaluateMappingTemplateRequest')
    EvaluateMappingTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateMappingTemplateResponse', name: 'EvaluateMappingTemplateResponse')
    EvaluationResult = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#EvaluationResult', name: 'EvaluationResult', traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    EventBridgeDataSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EventBridgeDataSourceConfig', name: 'EventBridgeDataSourceConfig')
    EventConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EventConfig', name: 'EventConfig')
    EventLogConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EventLogConfig', name: 'EventLogConfig')
    EventLogLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#EventLogLevel', name: 'EventLogLevel')
    FieldLogLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#FieldLogLevel', name: 'FieldLogLevel')
    FlushApiCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#FlushApiCacheRequest', name: 'FlushApiCacheRequest')
    FlushApiCacheResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#FlushApiCacheResponse', name: 'FlushApiCacheResponse')
    FunctionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#FunctionConfiguration', name: 'FunctionConfiguration')
    Functions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#Functions', name: 'Functions')
    FunctionsIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#FunctionsIds', name: 'FunctionsIds')
    GetApiAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiAssociationRequest', name: 'GetApiAssociationRequest')
    GetApiAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiAssociationResponse', name: 'GetApiAssociationResponse')
    GetApiCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiCacheRequest', name: 'GetApiCacheRequest')
    GetApiCacheResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiCacheResponse', name: 'GetApiCacheResponse')
    GetApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiRequest', name: 'GetApiRequest')
    GetApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiResponse', name: 'GetApiResponse')
    GetChannelNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetChannelNamespaceRequest', name: 'GetChannelNamespaceRequest')
    GetChannelNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetChannelNamespaceResponse', name: 'GetChannelNamespaceResponse')
    GetDataSourceIntrospectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDataSourceIntrospectionRequest', name: 'GetDataSourceIntrospectionRequest')
    GetDataSourceIntrospectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDataSourceIntrospectionResponse', name: 'GetDataSourceIntrospectionResponse')
    GetDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDataSourceRequest', name: 'GetDataSourceRequest')
    GetDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDataSourceResponse', name: 'GetDataSourceResponse')
    GetDomainNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDomainNameRequest', name: 'GetDomainNameRequest')
    GetDomainNameResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDomainNameResponse', name: 'GetDomainNameResponse')
    GetFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetFunctionRequest', name: 'GetFunctionRequest')
    GetFunctionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetFunctionResponse', name: 'GetFunctionResponse')
    GetGraphqlApiEnvironmentVariablesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetGraphqlApiEnvironmentVariablesRequest', name: 'GetGraphqlApiEnvironmentVariablesRequest')
    GetGraphqlApiEnvironmentVariablesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetGraphqlApiEnvironmentVariablesResponse', name: 'GetGraphqlApiEnvironmentVariablesResponse')
    GetGraphqlApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetGraphqlApiRequest', name: 'GetGraphqlApiRequest')
    GetGraphqlApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetGraphqlApiResponse', name: 'GetGraphqlApiResponse')
    GetIntrospectionSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetIntrospectionSchemaRequest', name: 'GetIntrospectionSchemaRequest')
    GetIntrospectionSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetIntrospectionSchemaResponse', name: 'GetIntrospectionSchemaResponse')
    GetResolverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetResolverRequest', name: 'GetResolverRequest')
    GetResolverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetResolverResponse', name: 'GetResolverResponse')
    GetSchemaCreationStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetSchemaCreationStatusRequest', name: 'GetSchemaCreationStatusRequest')
    GetSchemaCreationStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetSchemaCreationStatusResponse', name: 'GetSchemaCreationStatusResponse')
    GetSourceApiAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetSourceApiAssociationRequest', name: 'GetSourceApiAssociationRequest')
    GetSourceApiAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetSourceApiAssociationResponse', name: 'GetSourceApiAssociationResponse')
    GetTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetTypeRequest', name: 'GetTypeRequest')
    GetTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetTypeResponse', name: 'GetTypeResponse')
    GraphQLApiIntrospectionConfig = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#GraphQLApiIntrospectionConfig', name: 'GraphQLApiIntrospectionConfig')
    GraphQLApiType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#GraphQLApiType', name: 'GraphQLApiType')
    GraphQLApiVisibility = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#GraphQLApiVisibility', name: 'GraphQLApiVisibility')
    GraphQLSchemaException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GraphQLSchemaException', name: 'GraphQLSchemaException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GraphqlApi = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GraphqlApi', name: 'GraphqlApi')
    GraphqlApis = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#GraphqlApis', name: 'GraphqlApis')
    HandlerBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#HandlerBehavior', name: 'HandlerBehavior')
    HandlerConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#HandlerConfig', name: 'HandlerConfig')
    HandlerConfigs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#HandlerConfigs', name: 'HandlerConfigs')
    HttpDataSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#HttpDataSourceConfig', name: 'HttpDataSourceConfig')
    Integration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#Integration', name: 'Integration')
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvokeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#InvokeType', name: 'InvokeType')
    LambdaAuthorizerConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LambdaAuthorizerConfig', name: 'LambdaAuthorizerConfig')
    LambdaConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LambdaConfig', name: 'LambdaConfig')
    LambdaConflictHandlerConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LambdaConflictHandlerConfig', name: 'LambdaConflictHandlerConfig')
    LambdaDataSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LambdaDataSourceConfig', name: 'LambdaDataSourceConfig')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListApiKeysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListApiKeysRequest', name: 'ListApiKeysRequest')
    ListApiKeysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListApiKeysResponse', name: 'ListApiKeysResponse')
    ListApisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListApisRequest', name: 'ListApisRequest')
    ListApisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListApisResponse', name: 'ListApisResponse')
    ListChannelNamespacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListChannelNamespacesRequest', name: 'ListChannelNamespacesRequest')
    ListChannelNamespacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListChannelNamespacesResponse', name: 'ListChannelNamespacesResponse')
    ListDataSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListDataSourcesRequest', name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListDataSourcesResponse', name: 'ListDataSourcesResponse')
    ListDomainNamesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListDomainNamesRequest', name: 'ListDomainNamesRequest')
    ListDomainNamesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListDomainNamesResponse', name: 'ListDomainNamesResponse')
    ListFunctionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListFunctionsRequest', name: 'ListFunctionsRequest')
    ListFunctionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListFunctionsResponse', name: 'ListFunctionsResponse')
    ListGraphqlApisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListGraphqlApisRequest', name: 'ListGraphqlApisRequest')
    ListGraphqlApisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListGraphqlApisResponse', name: 'ListGraphqlApisResponse')
    ListResolversByFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListResolversByFunctionRequest', name: 'ListResolversByFunctionRequest')
    ListResolversByFunctionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListResolversByFunctionResponse', name: 'ListResolversByFunctionResponse')
    ListResolversRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListResolversRequest', name: 'ListResolversRequest')
    ListResolversResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListResolversResponse', name: 'ListResolversResponse')
    ListSourceApiAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListSourceApiAssociationsRequest', name: 'ListSourceApiAssociationsRequest')
    ListSourceApiAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListSourceApiAssociationsResponse', name: 'ListSourceApiAssociationsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTypesByAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTypesByAssociationRequest', name: 'ListTypesByAssociationRequest')
    ListTypesByAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTypesByAssociationResponse', name: 'ListTypesByAssociationResponse')
    ListTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTypesRequest', name: 'ListTypesRequest')
    ListTypesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTypesResponse', name: 'ListTypesResponse')
    LogConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LogConfig', name: 'LogConfig')
    Logs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#Logs', name: 'Logs')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MapOfStringToString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appsync#MapOfStringToString', name: 'MapOfStringToString')
    MappingTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#MappingTemplate', name: 'MappingTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^.*$"})
    MaxBatchSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#MaxBatchSize', name: 'MaxBatchSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2000}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 25}})
    MergeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#MergeType', name: 'MergeType')
    Namespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^([A-Za-z0-9](?:[A-Za-z0-9\\-]{0,48}[A-Za-z0-9])?)$"})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OpenIDConnectConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#OpenIDConnectConfig', name: 'OpenIDConnectConfig')
    OpenSearchServiceDataSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#OpenSearchServiceDataSourceConfig', name: 'OpenSearchServiceDataSourceConfig')
    OperationLevelMetricsConfig = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#OperationLevelMetricsConfig', name: 'OperationLevelMetricsConfig')
    OutErrors = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#OutErrors', name: 'OutErrors', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    OutputType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#OutputType', name: 'OutputType')
    OwnerContact = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#OwnerContact', name: 'OwnerContact', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-\\ \\.]+$"})
    Ownership = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#Ownership', name: 'Ownership')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[\\S]+$"})
    PipelineConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#PipelineConfig', name: 'PipelineConfig')
    PutGraphqlApiEnvironmentVariablesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#PutGraphqlApiEnvironmentVariablesRequest', name: 'PutGraphqlApiEnvironmentVariablesRequest')
    PutGraphqlApiEnvironmentVariablesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#PutGraphqlApiEnvironmentVariablesResponse', name: 'PutGraphqlApiEnvironmentVariablesResponse')
    QueryDepthLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#QueryDepthLimit', name: 'QueryDepthLimit', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 75}})
    RdsDataApiConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#RdsDataApiConfig', name: 'RdsDataApiConfig')
    RdsDataApiConfigDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#RdsDataApiConfigDatabaseName', name: 'RdsDataApiConfigDatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RdsDataApiConfigResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#RdsDataApiConfigResourceArn', name: 'RdsDataApiConfigResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:rds:[a-z0-9-]*:\\d{12}:cluster:[0-9A-Za-z_/-]*$"})
    RdsDataApiConfigSecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#RdsDataApiConfigSecretArn', name: 'RdsDataApiConfigSecretArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:secretsmanager:[a-z0-9-]*:\\d{12}:secret:[0-9A-Za-z_/+=.@!-]*$"})
    RdsHttpEndpointConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#RdsHttpEndpointConfig', name: 'RdsHttpEndpointConfig')
    RelationalDatabaseDataSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#RelationalDatabaseDataSourceConfig', name: 'RelationalDatabaseDataSourceConfig')
    RelationalDatabaseSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#RelationalDatabaseSourceType', name: 'RelationalDatabaseSourceType')
    Resolver = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#Resolver', name: 'Resolver')
    ResolverCountLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#ResolverCountLimit', name: 'ResolverCountLimit', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10000}})
    ResolverKind = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ResolverKind', name: 'ResolverKind')
    ResolverLevelMetricsBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ResolverLevelMetricsBehavior', name: 'ResolverLevelMetricsBehavior')
    ResolverLevelMetricsConfig = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ResolverLevelMetricsConfig', name: 'ResolverLevelMetricsConfig')
    Resolvers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#Resolvers', name: 'Resolvers')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 70, "max" => 75}, "smithy.api#pattern" => "^arn:aws:appsync:[A-Za-z0-9_/.-]{0,63}:\\d{12}:apis/[0-9A-Za-z_-]{26}$"})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[_A-Za-z][_0-9A-Za-z]*$"})
    RuntimeName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#RuntimeName', name: 'RuntimeName')
    SchemaStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#SchemaStatus', name: 'SchemaStatus')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceApiAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#SourceApiAssociation', name: 'SourceApiAssociation')
    SourceApiAssociationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#SourceApiAssociationConfig', name: 'SourceApiAssociationConfig')
    SourceApiAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#SourceApiAssociationStatus', name: 'SourceApiAssociationStatus')
    SourceApiAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#SourceApiAssociationSummary', name: 'SourceApiAssociationSummary')
    SourceApiAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#SourceApiAssociationSummaryList', name: 'SourceApiAssociationSummaryList')
    StartDataSourceIntrospectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartDataSourceIntrospectionRequest', name: 'StartDataSourceIntrospectionRequest')
    StartDataSourceIntrospectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartDataSourceIntrospectionResponse', name: 'StartDataSourceIntrospectionResponse')
    StartSchemaCreationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartSchemaCreationRequest', name: 'StartSchemaCreationRequest')
    StartSchemaCreationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartSchemaCreationResponse', name: 'StartSchemaCreationResponse')
    StartSchemaMergeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartSchemaMergeRequest', name: 'StartSchemaMergeRequest')
    StartSchemaMergeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartSchemaMergeResponse', name: 'StartSchemaMergeResponse')
    Stash = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Stash', name: 'Stash', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#String', name: 'String')
    SyncConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#SyncConfig', name: 'SyncConfig')
    TTL = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#TTL', name: 'TTL', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 3600}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[ a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appsync#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w+-=\\.:/@]*$"})
    Template = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Template', name: 'Template', traits: {"smithy.api#length" => {"min" => 2, "max" => 65536}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.appsync#Timestamp', name: 'Timestamp')
    Type = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#Type', name: 'Type')
    TypeDefinitionFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#TypeDefinitionFormat', name: 'TypeDefinitionFormat')
    TypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#TypeList', name: 'TypeList')
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApiCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiCacheRequest', name: 'UpdateApiCacheRequest')
    UpdateApiCacheResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiCacheResponse', name: 'UpdateApiCacheResponse')
    UpdateApiKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiKeyRequest', name: 'UpdateApiKeyRequest')
    UpdateApiKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiKeyResponse', name: 'UpdateApiKeyResponse')
    UpdateApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiRequest', name: 'UpdateApiRequest')
    UpdateApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiResponse', name: 'UpdateApiResponse')
    UpdateChannelNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateChannelNamespaceRequest', name: 'UpdateChannelNamespaceRequest')
    UpdateChannelNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateChannelNamespaceResponse', name: 'UpdateChannelNamespaceResponse')
    UpdateDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateDataSourceRequest', name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateDataSourceResponse', name: 'UpdateDataSourceResponse')
    UpdateDomainNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateDomainNameRequest', name: 'UpdateDomainNameRequest')
    UpdateDomainNameResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateDomainNameResponse', name: 'UpdateDomainNameResponse')
    UpdateFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateFunctionRequest', name: 'UpdateFunctionRequest')
    UpdateFunctionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateFunctionResponse', name: 'UpdateFunctionResponse')
    UpdateGraphqlApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateGraphqlApiRequest', name: 'UpdateGraphqlApiRequest')
    UpdateGraphqlApiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateGraphqlApiResponse', name: 'UpdateGraphqlApiResponse')
    UpdateResolverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateResolverRequest', name: 'UpdateResolverRequest')
    UpdateResolverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateResolverResponse', name: 'UpdateResolverResponse')
    UpdateSourceApiAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateSourceApiAssociationRequest', name: 'UpdateSourceApiAssociationRequest')
    UpdateSourceApiAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateSourceApiAssociationResponse', name: 'UpdateSourceApiAssociationResponse')
    UpdateTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateTypeRequest', name: 'UpdateTypeRequest')
    UpdateTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateTypeResponse', name: 'UpdateTypeResponse')
    UserPoolConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UserPoolConfig', name: 'UserPoolConfig')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalAuthenticationProvider.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The authentication type: API key, Identity and Access Management (IAM), OpenID\n         Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>"}))
    AdditionalAuthenticationProvider.add_member(:open_id_connect_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig', traits: {"smithy.api#documentation" => "<p>The OIDC configuration.</p>"}))
    AdditionalAuthenticationProvider.add_member(:user_pool_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoUserPoolConfig, location_name: 'userPoolConfig', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito user pool configuration.</p>"}))
    AdditionalAuthenticationProvider.add_member(:lambda_authorizer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig', traits: {"smithy.api#documentation" => "<p>Configuration for Lambda function authorization.</p>"}))
    AdditionalAuthenticationProvider.type = Types::AdditionalAuthenticationProvider
    AdditionalAuthenticationProviders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAuthenticationProvider)
    Api.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>"}))
    Api.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>Api</code>.</p>"}))
    Api.add_member(:owner_contact, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerContact, location_name: 'ownerContact', traits: {"smithy.api#documentation" => "<p>The owner contact information for the <code>Api</code>\n         </p>"}))
    Api.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Api.add_member(:dns, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'dns', traits: {"smithy.api#documentation" => "<p>The DNS records for the API. This will include an HTTP and a real-time endpoint.</p>"}))
    Api.add_member(:api_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the <code>Api</code>.</p>"}))
    Api.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time that the <code>Api</code> was created.</p>"}))
    Api.add_member(:xray_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'xrayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A flag indicating whether to use X-Ray tracing for this\n            <code>Api</code>.</p>"}))
    Api.add_member(:waf_web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'wafWebAclArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the WAF web access control list (web\n         ACL) associated with this <code>Api</code>, if one exists.</p>"}))
    Api.add_member(:event_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventConfig, location_name: 'eventConfig', traits: {"smithy.api#documentation" => "<p>The Event API configuration. This includes the default authorization configuration for\n         connecting, publishing, and subscribing to an Event API.</p>"}))
    Api.type = Types::Api
    ApiAssociation.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>"}))
    ApiAssociation.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>"}))
    ApiAssociation.add_member(:association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationStatus, location_name: 'associationStatus', traits: {"smithy.api#documentation" => "<p>Identifies the status of an association.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>PROCESSING</b>: The API association is being\n               created. You cannot modify association requests during processing.</p>\n            </li>\n            <li>\n               <p>\n                  <b>SUCCESS</b>: The API association was successful.\n               You can modify associations after success.</p>\n            </li>\n            <li>\n               <p>\n                  <b>FAILED</b>: The API association has failed. You\n               can modify associations after failure.</p>\n            </li>\n         </ul>"}))
    ApiAssociation.add_member(:deployment_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentDetail', traits: {"smithy.api#documentation" => "<p>Details about the last deployment status.</p>"}))
    ApiAssociation.type = Types::ApiAssociation
    ApiCache.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ttl', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>TTL in seconds for cache entries.</p>\n         <p>Valid values are 1–3,600 seconds.</p>"}))
    ApiCache.add_member(:api_caching_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCachingBehavior, location_name: 'apiCachingBehavior', traits: {"smithy.api#documentation" => "<p>Caching behavior.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>FULL_REQUEST_CACHING</b>: All requests from the\n               same user are cached. Individual resolvers are automatically cached. All API calls\n               will try to return responses from the cache.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PER_RESOLVER_CACHING</b>: Individual resolvers\n               that you specify are cached.</p>\n            </li>\n            <li>\n               <p>\n                  <b>OPERATION_LEVEL_CACHING</b>: Full requests are cached together and returned without executing resolvers.</p>\n            </li>\n         </ul>"}))
    ApiCache.add_member(:transit_encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'transitEncryptionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Transit encryption flag when connecting to cache. You cannot update this setting after\n         creation.</p>"}))
    ApiCache.add_member(:at_rest_encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'atRestEncryptionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>At-rest encryption flag for cache. You cannot update this setting after creation.</p>"}))
    ApiCache.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCacheType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The cache instance type. Valid values are </p>\n         <ul>\n            <li>\n               <p>\n                  <code>SMALL</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MEDIUM</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>XLARGE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_2X</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_4X</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_8X</code> (not available in all regions)</p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_12X</code>\n               </p>\n            </li>\n         </ul>\n         <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>\n         <p>The following legacy instance types are available, but their use is discouraged:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>T2_SMALL</b>: A t2.small instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>T2_MEDIUM</b>: A t2.medium instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_LARGE</b>: A r4.large instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>\n            </li>\n         </ul>"}))
    ApiCache.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCacheStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The cache instance status.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>AVAILABLE</b>: The instance is available for\n               use.</p>\n            </li>\n            <li>\n               <p>\n                  <b>CREATING</b>: The instance is currently\n               creating.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DELETING</b>: The instance is currently\n               deleting.</p>\n            </li>\n            <li>\n               <p>\n                  <b>MODIFYING</b>: The instance is currently\n               modifying.</p>\n            </li>\n            <li>\n               <p>\n                  <b>FAILED</b>: The instance has failed\n               creation.</p>\n            </li>\n         </ul>"}))
    ApiCache.add_member(:health_metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: 'healthMetricsConfig', traits: {"smithy.api#documentation" => "<p>Controls how cache health metrics will be emitted to CloudWatch. Cache health metrics\n         include:</p>\n         <ul>\n            <li>\n               <p>NetworkBandwidthOutAllowanceExceeded: The network packets dropped because the\n               throughput exceeded the aggregated bandwidth limit. This is useful for diagnosing\n               bottlenecks in a cache configuration.</p>\n            </li>\n            <li>\n               <p>EngineCPUUtilization: The CPU utilization (percentage) allocated to the Redis\n               process. This is useful for diagnosing bottlenecks in a cache\n               configuration.</p>\n            </li>\n         </ul>\n         <p>Metrics will be recorded by API ID. You can set the value to <code>ENABLED</code> or\n            <code>DISABLED</code>.</p>"}))
    ApiCache.type = Types::ApiCache
    ApiCacheStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ApiCacheStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ApiCacheStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApiCacheStatus.add_member(:modifying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ApiCacheStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ApiCacheType.add_member(:t2_small, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T2_SMALL', traits: {"smithy.api#enumValue" => "T2_SMALL"}))
    ApiCacheType.add_member(:t2_medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T2_MEDIUM', traits: {"smithy.api#enumValue" => "T2_MEDIUM"}))
    ApiCacheType.add_member(:r4_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_LARGE', traits: {"smithy.api#enumValue" => "R4_LARGE"}))
    ApiCacheType.add_member(:r4_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_XLARGE', traits: {"smithy.api#enumValue" => "R4_XLARGE"}))
    ApiCacheType.add_member(:r4_2_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_2XLARGE', traits: {"smithy.api#enumValue" => "R4_2XLARGE"}))
    ApiCacheType.add_member(:r4_4_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_4XLARGE', traits: {"smithy.api#enumValue" => "R4_4XLARGE"}))
    ApiCacheType.add_member(:r4_8_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_8XLARGE', traits: {"smithy.api#enumValue" => "R4_8XLARGE"}))
    ApiCacheType.add_member(:small, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL', traits: {"smithy.api#enumValue" => "SMALL"}))
    ApiCacheType.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ApiCacheType.add_member(:large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE', traits: {"smithy.api#enumValue" => "LARGE"}))
    ApiCacheType.add_member(:xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XLARGE', traits: {"smithy.api#enumValue" => "XLARGE"}))
    ApiCacheType.add_member(:large_2_x, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_2X', traits: {"smithy.api#enumValue" => "LARGE_2X"}))
    ApiCacheType.add_member(:large_4_x, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_4X', traits: {"smithy.api#enumValue" => "LARGE_4X"}))
    ApiCacheType.add_member(:large_8_x, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_8X', traits: {"smithy.api#enumValue" => "LARGE_8X"}))
    ApiCacheType.add_member(:large_12_x, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_12X', traits: {"smithy.api#enumValue" => "LARGE_12X"}))
    ApiCachingBehavior.add_member(:full_request_caching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_REQUEST_CACHING', traits: {"smithy.api#enumValue" => "FULL_REQUEST_CACHING"}))
    ApiCachingBehavior.add_member(:per_resolver_caching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_RESOLVER_CACHING', traits: {"smithy.api#enumValue" => "PER_RESOLVER_CACHING"}))
    ApiCachingBehavior.add_member(:operation_level_caching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATION_LEVEL_CACHING', traits: {"smithy.api#enumValue" => "OPERATION_LEVEL_CACHING"}))
    ApiKey.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The API key ID.</p>"}))
    ApiKey.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the purpose of the API key.</p>"}))
    ApiKey.add_member(:expires, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'expires', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time after which the API key expires. The date is represented as seconds since the\n         epoch, rounded down to the nearest hour.</p>"}))
    ApiKey.add_member(:deletes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'deletes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time after which the API key is deleted. The date is represented as seconds since\n         the epoch, rounded down to the nearest hour.</p>"}))
    ApiKey.type = Types::ApiKey
    ApiKeyLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ApiKeyLimitExceededException.type = Types::ApiKeyLimitExceededException
    ApiKeyValidityOutOfBoundsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ApiKeyValidityOutOfBoundsException.type = Types::ApiKeyValidityOutOfBoundsException
    ApiKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey)
    ApiLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ApiLimitExceededException.type = Types::ApiLimitExceededException
    Apis.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Api)
    AppSyncRuntime.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The <code>name</code> of the runtime to use. Currently, the only allowed value is\n            <code>APPSYNC_JS</code>.</p>", "smithy.api#required" => {}}))
    AppSyncRuntime.add_member(:runtime_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'runtimeVersion', traits: {"smithy.api#documentation" => "<p>The <code>version</code> of the runtime to use. Currently, the only allowed version is\n            <code>1.0.0</code>.</p>", "smithy.api#required" => {}}))
    AppSyncRuntime.type = Types::AppSyncRuntime
    AssociateApiRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateApiRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID. Private APIs can not be associated with custom domains.</p>", "smithy.api#required" => {}}))
    AssociateApiRequest.type = Types::AssociateApiRequest
    AssociateApiResponse.add_member(:api_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAssociation, location_name: 'apiAssociation', traits: {"smithy.api#documentation" => "<p>The <code>ApiAssociation</code> object.</p>"}))
    AssociateApiResponse.type = Types::AssociateApiResponse
    AssociateMergedGraphqlApiRequest.add_member(:source_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Source API. This is generated by the AppSync service. In\n         most cases, source APIs (especially in your account) only require the API ID value or ARN\n         of the source API. However, source APIs from other accounts (cross-account use cases)\n         strictly require the full resource ARN of the source API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMergedGraphqlApiRequest.add_member(:merged_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In\n         most cases, Merged APIs (especially in your account) only require the API ID value or ARN\n         of the merged API. However, Merged APIs in other accounts (cross-account use cases)\n         strictly require the full resource ARN of the merged API.</p>", "smithy.api#required" => {}}))
    AssociateMergedGraphqlApiRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description field.</p>"}))
    AssociateMergedGraphqlApiRequest.add_member(:source_api_association_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: 'sourceApiAssociationConfig', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociationConfig</code> object data.</p>"}))
    AssociateMergedGraphqlApiRequest.type = Types::AssociateMergedGraphqlApiRequest
    AssociateMergedGraphqlApiResponse.add_member(:source_api_association, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: 'sourceApiAssociation', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociation</code> object data.</p>"}))
    AssociateMergedGraphqlApiResponse.type = Types::AssociateMergedGraphqlApiResponse
    AssociateSourceGraphqlApiRequest.add_member(:merged_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In\n         most cases, Merged APIs (especially in your account) only require the API ID value or ARN\n         of the merged API. However, Merged APIs in other accounts (cross-account use cases)\n         strictly require the full resource ARN of the merged API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateSourceGraphqlApiRequest.add_member(:source_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Source API. This is generated by the AppSync service. In\n         most cases, source APIs (especially in your account) only require the API ID value or ARN\n         of the source API. However, source APIs from other accounts (cross-account use cases)\n         strictly require the full resource ARN of the source API.</p>", "smithy.api#required" => {}}))
    AssociateSourceGraphqlApiRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description field.</p>"}))
    AssociateSourceGraphqlApiRequest.add_member(:source_api_association_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: 'sourceApiAssociationConfig', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociationConfig</code> object data.</p>"}))
    AssociateSourceGraphqlApiRequest.type = Types::AssociateSourceGraphqlApiRequest
    AssociateSourceGraphqlApiResponse.add_member(:source_api_association, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: 'sourceApiAssociation', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociation</code> object data.</p>"}))
    AssociateSourceGraphqlApiResponse.type = Types::AssociateSourceGraphqlApiResponse
    AssociationStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    AssociationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssociationStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AuthMode.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The authorization type.</p>", "smithy.api#required" => {}}))
    AuthMode.type = Types::AuthMode
    AuthModes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMode)
    AuthProvider.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The authorization type.</p>", "smithy.api#required" => {}}))
    AuthProvider.add_member(:cognito_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoConfig, location_name: 'cognitoConfig', traits: {"smithy.api#documentation" => "<p>Describes an Amazon Cognito user pool configuration.</p>"}))
    AuthProvider.add_member(:open_id_connect_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig'))
    AuthProvider.add_member(:lambda_authorizer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig'))
    AuthProvider.type = Types::AuthProvider
    AuthProviders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthProvider)
    AuthenticationType.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_KEY', traits: {"smithy.api#enumValue" => "API_KEY"}))
    AuthenticationType.add_member(:aws_iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM', traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    AuthenticationType.add_member(:amazon_cognito_user_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_COGNITO_USER_POOLS', traits: {"smithy.api#enumValue" => "AMAZON_COGNITO_USER_POOLS"}))
    AuthenticationType.add_member(:openid_connect, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENID_CONNECT', traits: {"smithy.api#enumValue" => "OPENID_CONNECT"}))
    AuthenticationType.add_member(:aws_lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_LAMBDA', traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    AuthorizationConfig.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationType, location_name: 'authorizationType', traits: {"smithy.api#documentation" => "<p>The authorization type that the HTTP endpoint requires.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>AWS_IAM</b>: The authorization type is Signature\n               Version 4 (SigV4).</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AuthorizationConfig.add_member(:aws_iam_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsIamConfig, location_name: 'awsIamConfig', traits: {"smithy.api#documentation" => "<p>The Identity and Access Management (IAM) settings.</p>"}))
    AuthorizationConfig.type = Types::AuthorizationConfig
    AuthorizationType.add_member(:aws_iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM', traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    AwsIamConfig.add_member(:signing_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signingRegion', traits: {"smithy.api#documentation" => "<p>The signing Amazon Web Services Region for IAM authorization.</p>"}))
    AwsIamConfig.add_member(:signing_service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signingServiceName', traits: {"smithy.api#documentation" => "<p>The signing service name for IAM authorization.</p>"}))
    AwsIamConfig.type = Types::AwsIamConfig
    BadRequestDetail.add_member(:code_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrors, location_name: 'codeErrors', traits: {"smithy.api#documentation" => "<p>Contains the list of errors in the request.</p>"}))
    BadRequestDetail.type = Types::BadRequestDetail
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    BadRequestException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestReason, location_name: 'reason'))
    BadRequestException.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestDetail, location_name: 'detail'))
    BadRequestException.type = Types::BadRequestException
    BadRequestReason.add_member(:code_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_ERROR', traits: {"smithy.api#enumValue" => "CODE_ERROR"}))
    CacheHealthMetricsConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CacheHealthMetricsConfig.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CachingConfig.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ttl', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The TTL in seconds for a resolver that has caching activated.</p>\n         <p>Valid values are 1–3,600 seconds.</p>", "smithy.api#required" => {}}))
    CachingConfig.add_member(:caching_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: CachingKeys, location_name: 'cachingKeys', traits: {"smithy.api#documentation" => "<p>The caching keys for a resolver that has caching activated.</p>\n         <p>Valid values are entries from the <code>$context.arguments</code>,\n            <code>$context.source</code>, and <code>$context.identity</code> maps.</p>"}))
    CachingConfig.type = Types::CachingConfig
    CachingKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChannelNamespace.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>"}))
    ChannelNamespace.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the channel namespace. This name must be unique within the\n         <code>Api</code>.</p>"}))
    ChannelNamespace.add_member(:subscribe_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'subscribeAuthModes', traits: {"smithy.api#documentation" => "<p>The authorization mode to use for subscribing to messages on the channel namespace. This\n         configuration overrides the default <code>Api</code>authorization configuration.</p>"}))
    ChannelNamespace.add_member(:publish_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'publishAuthModes', traits: {"smithy.api#documentation" => "<p>The authorization mode to use for publishing messages on the channel namespace. This\n         configuration overrides the default <code>Api</code>authorization configuration.</p>"}))
    ChannelNamespace.add_member(:code_handlers, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'codeHandlers', traits: {"smithy.api#documentation" => "<p>The event handler functions that run custom business logic to process published events\n         and subscribe requests.</p>"}))
    ChannelNamespace.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ChannelNamespace.add_member(:channel_namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'channelNamespaceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the <code>ChannelNamespace</code>.</p>"}))
    ChannelNamespace.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time that the <code>ChannelNamespace</code> was created.</p>"}))
    ChannelNamespace.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModified', traits: {"smithy.api#documentation" => "<p>The date and time that the <code>ChannelNamespace</code> was last changed.</p>"}))
    ChannelNamespace.add_member(:handler_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfigs, location_name: 'handlerConfigs', traits: {"smithy.api#documentation" => "<p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>"}))
    ChannelNamespace.type = Types::ChannelNamespace
    ChannelNamespaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespace)
    CodeError.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorType', traits: {"smithy.api#documentation" => "<p>The type of code error. </p>\n         <p>Examples include, but aren't limited to: <code>LINT_ERROR</code>,\n            <code>PARSER_ERROR</code>.</p>"}))
    CodeError.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>A user presentable error.</p>\n         <p>Examples include, but aren't limited to: <code>Parsing error: Unterminated string\n            literal</code>.</p>"}))
    CodeError.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrorLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The line, column, and span location of the error in the code.</p>"}))
    CodeError.type = Types::CodeError
    CodeErrorLocation.add_member(:line, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrorLine, location_name: 'line', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The line number in the code. Defaults to <code>0</code> if unknown.</p>"}))
    CodeErrorLocation.add_member(:column, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrorColumn, location_name: 'column', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The column number in the code. Defaults to <code>0</code> if unknown.</p>"}))
    CodeErrorLocation.add_member(:span, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrorSpan, location_name: 'span', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The span/length of the error. Defaults to <code>-1</code> if unknown.</p>"}))
    CodeErrorLocation.type = Types::CodeErrorLocation
    CodeErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodeError)
    CognitoConfig.add_member(:user_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userPoolId', traits: {"smithy.api#documentation" => "<p>The user pool ID.</p>", "smithy.api#required" => {}}))
    CognitoConfig.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the user pool was created.</p>", "smithy.api#required" => {}}))
    CognitoConfig.add_member(:app_id_client_regex, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'appIdClientRegex', traits: {"smithy.api#documentation" => "<p>A regular expression for validating the incoming Amazon Cognito user pool app client\n         ID. If this value isn't set, no filtering is applied.</p>"}))
    CognitoConfig.type = Types::CognitoConfig
    CognitoUserPoolConfig.add_member(:user_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userPoolId', traits: {"smithy.api#documentation" => "<p>The user pool ID.</p>", "smithy.api#required" => {}}))
    CognitoUserPoolConfig.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the user pool was created.</p>", "smithy.api#required" => {}}))
    CognitoUserPoolConfig.add_member(:app_id_client_regex, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'appIdClientRegex', traits: {"smithy.api#documentation" => "<p>A regular expression for validating the incoming Amazon Cognito user pool app client\n         ID. If this value isn't set, no filtering is applied.</p>"}))
    CognitoUserPoolConfig.type = Types::CognitoUserPoolConfig
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictDetectionType.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERSION', traits: {"smithy.api#enumValue" => "VERSION"}))
    ConflictDetectionType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConflictHandlerType.add_member(:optimistic_concurrency, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIMISTIC_CONCURRENCY', traits: {"smithy.api#enumValue" => "OPTIMISTIC_CONCURRENCY"}))
    ConflictHandlerType.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ConflictHandlerType.add_member(:automerge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMERGE', traits: {"smithy.api#enumValue" => "AUTOMERGE"}))
    ConflictHandlerType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    CreateApiCacheRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The GraphQL API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ttl', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>TTL in seconds for cache entries.</p>\n         <p>Valid values are 1–3,600 seconds.</p>", "smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:transit_encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'transitEncryptionEnabled', traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "5/15/2025", "message" => "transitEncryptionEnabled attribute is deprecated. Encryption in transit is always enabled."}, "smithy.api#documentation" => "<p>Transit encryption flag when connecting to cache. You cannot update this setting after\n         creation.</p>"}))
    CreateApiCacheRequest.add_member(:at_rest_encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'atRestEncryptionEnabled', traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "5/15/2025", "message" => "atRestEncryptionEnabled attribute is deprecated. Encryption at rest is always enabled."}, "smithy.api#documentation" => "<p>At-rest encryption flag for cache. You cannot update this setting after creation.</p>"}))
    CreateApiCacheRequest.add_member(:api_caching_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCachingBehavior, location_name: 'apiCachingBehavior', traits: {"smithy.api#documentation" => "<p>Caching behavior.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>FULL_REQUEST_CACHING</b>: All requests from the\n               same user are cached. Individual resolvers are automatically cached. All API calls\n               will try to return responses from the cache.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PER_RESOLVER_CACHING</b>: Individual resolvers\n               that you specify are cached.</p>\n            </li>\n            <li>\n               <p>\n                  <b>OPERATION_LEVEL_CACHING</b>: Full requests are cached together and returned without executing resolvers.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCacheType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The cache instance type. Valid values are </p>\n         <ul>\n            <li>\n               <p>\n                  <code>SMALL</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MEDIUM</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>XLARGE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_2X</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_4X</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_8X</code> (not available in all regions)</p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_12X</code>\n               </p>\n            </li>\n         </ul>\n         <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>\n         <p>The following legacy instance types are available, but their use is discouraged:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>T2_SMALL</b>: A t2.small instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>T2_MEDIUM</b>: A t2.medium instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_LARGE</b>: A r4.large instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:health_metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: 'healthMetricsConfig', traits: {"smithy.api#documentation" => "<p>Controls how cache health metrics will be emitted to CloudWatch. Cache health metrics\n         include:</p>\n         <ul>\n            <li>\n               <p>NetworkBandwidthOutAllowanceExceeded: The network packets dropped because the\n               throughput exceeded the aggregated bandwidth limit. This is useful for diagnosing\n               bottlenecks in a cache configuration.</p>\n            </li>\n            <li>\n               <p>EngineCPUUtilization: The CPU utilization (percentage) allocated to the Redis\n               process. This is useful for diagnosing bottlenecks in a cache\n               configuration.</p>\n            </li>\n         </ul>\n         <p>Metrics will be recorded by API ID. You can set the value to <code>ENABLED</code> or\n            <code>DISABLED</code>.</p>"}))
    CreateApiCacheRequest.type = Types::CreateApiCacheRequest
    CreateApiCacheResponse.add_member(:api_cache, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCache, location_name: 'apiCache', traits: {"smithy.api#documentation" => "<p>The <code>ApiCache</code> object.</p>"}))
    CreateApiCacheResponse.type = Types::CreateApiCacheResponse
    CreateApiKeyRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The ID for your GraphQL API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApiKeyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the purpose of the API key.</p>"}))
    CreateApiKeyRequest.add_member(:expires, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'expires', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>From the creation time, the time after which the API key expires. The date is\n         represented as seconds since the epoch, rounded down to the nearest hour. The default value\n         for this parameter is 7 days from creation time. For more information, see .</p>"}))
    CreateApiKeyRequest.type = Types::CreateApiKeyRequest
    CreateApiKeyResponse.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'apiKey', traits: {"smithy.api#documentation" => "<p>The API key.</p>"}))
    CreateApiKeyResponse.type = Types::CreateApiKeyResponse
    CreateApiRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the <code>Api</code>.</p>", "smithy.api#required" => {}}))
    CreateApiRequest.add_member(:owner_contact, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact', traits: {"smithy.api#documentation" => "<p>The owner contact information for the <code>Api</code>.</p>"}))
    CreateApiRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateApiRequest.add_member(:event_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventConfig, location_name: 'eventConfig', traits: {"smithy.api#documentation" => "<p>The Event API configuration. This includes the default authorization configuration for\n         connecting, publishing, and subscribing to an Event API.</p>"}))
    CreateApiRequest.type = Types::CreateApiRequest
    CreateApiResponse.add_member(:api, Smithy::Schema::Shapes::ShapeRef.new(shape: Api, location_name: 'api', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> object.</p>"}))
    CreateApiResponse.type = Types::CreateApiResponse
    CreateChannelNamespaceRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelNamespaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>ChannelNamespace</code>. This name must be unique within the\n            <code>Api</code>\n         </p>", "smithy.api#required" => {}}))
    CreateChannelNamespaceRequest.add_member(:subscribe_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'subscribeAuthModes', traits: {"smithy.api#documentation" => "<p>The authorization mode to use for subscribing to messages on the channel namespace. This\n         configuration overrides the default <code>Api</code> authorization configuration.</p>"}))
    CreateChannelNamespaceRequest.add_member(:publish_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'publishAuthModes', traits: {"smithy.api#documentation" => "<p>The authorization mode to use for publishing messages on the channel namespace. This\n         configuration overrides the default <code>Api</code> authorization configuration.</p>"}))
    CreateChannelNamespaceRequest.add_member(:code_handlers, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'codeHandlers', traits: {"smithy.api#documentation" => "<p>The event handler functions that run custom business logic to process published events\n         and subscribe requests.</p>"}))
    CreateChannelNamespaceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateChannelNamespaceRequest.add_member(:handler_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfigs, location_name: 'handlerConfigs', traits: {"smithy.api#documentation" => "<p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>"}))
    CreateChannelNamespaceRequest.type = Types::CreateChannelNamespaceRequest
    CreateChannelNamespaceResponse.add_member(:channel_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: 'channelNamespace', traits: {"smithy.api#documentation" => "<p>The <code>ChannelNamespace</code> object.</p>"}))
    CreateChannelNamespaceResponse.type = Types::CreateChannelNamespaceResponse
    CreateDataSourceRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID for the GraphQL API for the <code>DataSource</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A user-supplied name for the <code>DataSource</code>.</p>", "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the <code>DataSource</code>.</p>"}))
    CreateDataSourceRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the <code>DataSource</code>.</p>", "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRoleArn', traits: {"smithy.api#documentation" => "<p>The Identity and Access Management (IAM) service role Amazon Resource Name (ARN)\n         for the data source. The system assumes this role when accessing the data source.</p>"}))
    CreateDataSourceRequest.add_member(:dynamodb_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: 'dynamodbConfig', traits: {"smithy.api#documentation" => "<p>Amazon DynamoDB settings.</p>"}))
    CreateDataSourceRequest.add_member(:lambda_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: 'lambdaConfig', traits: {"smithy.api#documentation" => "<p>Lambda settings.</p>"}))
    CreateDataSourceRequest.add_member(:elasticsearch_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: 'elasticsearchConfig', traits: {"smithy.api#documentation" => "<p>Amazon OpenSearch Service settings.</p>\n         <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This\n         configuration is deprecated. For new data sources, use <a>CreateDataSourceRequest$openSearchServiceConfig</a> to create an OpenSearch data source.</p>"}))
    CreateDataSourceRequest.add_member(:open_search_service_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: 'openSearchServiceConfig', traits: {"smithy.api#documentation" => "<p>Amazon OpenSearch Service settings.</p>"}))
    CreateDataSourceRequest.add_member(:http_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: 'httpConfig', traits: {"smithy.api#documentation" => "<p>HTTP endpoint settings.</p>"}))
    CreateDataSourceRequest.add_member(:relational_database_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: 'relationalDatabaseConfig', traits: {"smithy.api#documentation" => "<p>Relational database settings.</p>"}))
    CreateDataSourceRequest.add_member(:event_bridge_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: 'eventBridgeConfig', traits: {"smithy.api#documentation" => "<p>Amazon EventBridge settings.</p>"}))
    CreateDataSourceRequest.add_member(:metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: 'metricsConfig', traits: {"smithy.api#documentation" => "<p>Enables or disables enhanced data source metrics for specified data sources. Note that\n            <code>metricsConfig</code> won't be used unless the\n            <code>dataSourceLevelMetricsBehavior</code> value is set to\n            <code>PER_DATA_SOURCE_METRICS</code>. If the <code>dataSourceLevelMetricsBehavior</code>\n         is set to <code>FULL_REQUEST_DATA_SOURCE_METRICS</code> instead, <code>metricsConfig</code>\n         will be ignored. However, you can still set its value.</p>\n         <p>\n            <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>"}))
    CreateDataSourceRequest.type = Types::CreateDataSourceRequest
    CreateDataSourceResponse.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>The <code>DataSource</code> object.</p>"}))
    CreateDataSourceResponse.type = Types::CreateDataSourceResponse
    CreateDomainNameRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate. This can be an Certificate Manager\n            (ACM) certificate or an Identity and Access Management (IAM)\n         server certificate.</p>", "smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the <code>DomainName</code>.</p>"}))
    CreateDomainNameRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateDomainNameRequest.type = Types::CreateDomainNameRequest
    CreateDomainNameResponse.add_member(:domain_name_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: 'domainNameConfig', traits: {"smithy.api#documentation" => "<p>The configuration for the <code>DomainName</code>.</p>"}))
    CreateDomainNameResponse.type = Types::CreateDomainNameResponse
    CreateFunctionRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The GraphQL API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> name. The function name does not have to be unique.</p>", "smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> description.</p>"}))
    CreateFunctionRequest.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName', traits: {"smithy.api#documentation" => "<p>The <code>Function</code>\n            <code>DataSource</code> name.</p>", "smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:request_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> request mapping template. Functions support only the\n         2018-05-29 version of the request mapping template.</p>"}))
    CreateFunctionRequest.add_member(:response_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> response mapping template.</p>"}))
    CreateFunctionRequest.add_member(:function_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionVersion', traits: {"smithy.api#documentation" => "<p>The <code>version</code> of the request mapping template. Currently, the supported value\n         is 2018-05-29. Note that when using VTL and mapping templates, the\n            <code>functionVersion</code> is required.</p>"}))
    CreateFunctionRequest.add_member(:sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    CreateFunctionRequest.add_member(:max_batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum batching size for a resolver.</p>"}))
    CreateFunctionRequest.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    CreateFunctionRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The <code>function</code> code that contains the request and response functions. When\n         code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be\n            <code>APPSYNC_JS</code>.</p>"}))
    CreateFunctionRequest.type = Types::CreateFunctionRequest
    CreateFunctionResponse.add_member(:function_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: 'functionConfiguration', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> object.</p>"}))
    CreateFunctionResponse.type = Types::CreateFunctionResponse
    CreateGraphqlApiRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A user-supplied name for the <code>GraphqlApi</code>.</p>", "smithy.api#required" => {}}))
    CreateGraphqlApiRequest.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'logConfig', traits: {"smithy.api#documentation" => "<p>The Amazon CloudWatch Logs configuration.</p>"}))
    CreateGraphqlApiRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The authentication type: API key, Identity and Access Management (IAM), OpenID\n         Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>", "smithy.api#required" => {}}))
    CreateGraphqlApiRequest.add_member(:user_pool_config, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: 'userPoolConfig', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito user pool configuration.</p>"}))
    CreateGraphqlApiRequest.add_member(:open_id_connect_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig', traits: {"smithy.api#documentation" => "<p>The OIDC configuration.</p>"}))
    CreateGraphqlApiRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A <code>TagMap</code> object.</p>"}))
    CreateGraphqlApiRequest.add_member(:additional_authentication_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: 'additionalAuthenticationProviders', traits: {"smithy.api#documentation" => "<p>A list of additional authentication providers for the <code>GraphqlApi</code>\n         API.</p>"}))
    CreateGraphqlApiRequest.add_member(:xray_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'xrayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A flag indicating whether to use X-Ray tracing for the\n            <code>GraphqlApi</code>.</p>"}))
    CreateGraphqlApiRequest.add_member(:lambda_authorizer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig', traits: {"smithy.api#documentation" => "<p>Configuration for Lambda function authorization.</p>"}))
    CreateGraphqlApiRequest.add_member(:api_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiType, location_name: 'apiType', traits: {"smithy.api#documentation" => "<p>The value that indicates whether the GraphQL API is a standard API\n         (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>"}))
    CreateGraphqlApiRequest.add_member(:merged_api_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The Identity and Access Management service role ARN for a merged API. The AppSync\n         service assumes this role on behalf of the Merged API to validate access to source APIs at\n         runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with\n         the source API changes automatically.</p>"}))
    CreateGraphqlApiRequest.add_member(:visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiVisibility, location_name: 'visibility', traits: {"smithy.api#documentation" => "<p>Sets the value of the GraphQL API to public (<code>GLOBAL</code>) or private\n            (<code>PRIVATE</code>). If no value is provided, the visibility will be set to\n            <code>GLOBAL</code> by default. This value cannot be changed once the API has been\n         created.</p>"}))
    CreateGraphqlApiRequest.add_member(:owner_contact, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact', traits: {"smithy.api#documentation" => "<p>The owner contact information for an API resource.</p>\n         <p>This field accepts any string input with a length of 0 - 256 characters.</p>"}))
    CreateGraphqlApiRequest.add_member(:introspection_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: 'introspectionConfig', traits: {"smithy.api#documentation" => "<p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable\n            (<code>DISABLED</code>) introspection. If no value is provided, the introspection\n         configuration will be set to <code>ENABLED</code> by default. This field will produce an\n         error if the operation attempts to use the introspection feature while this field is\n         disabled.</p>\n         <p>For more information about introspection, see <a href=\"https://graphql.org/learn/introspection/\">GraphQL introspection</a>.</p>"}))
    CreateGraphqlApiRequest.add_member(:query_depth_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: 'queryDepthLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum depth a query can have in a single request. Depth refers to the amount of\n         nested levels allowed in the body of query. The default value is <code>0</code> (or\n         unspecified), which indicates there's no depth limit. If you set a limit, it can be between\n            <code>1</code> and <code>75</code> nested levels. This field will produce a limit error\n         if the operation falls out of bounds.</p>\n         <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field\n         produces an error, the error will be thrown upwards to the first nullable field\n         available.</p>"}))
    CreateGraphqlApiRequest.add_member(:resolver_count_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: 'resolverCountLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of resolvers that can be invoked in a single request. The default\n         value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>.\n         When specified, the limit value can be between <code>1</code> and <code>10000</code>. This\n         field will produce a limit error if the operation falls out of bounds.</p>"}))
    CreateGraphqlApiRequest.add_member(:enhanced_metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: 'enhancedMetricsConfig', traits: {"smithy.api#documentation" => "<p>The <code>enhancedMetricsConfig</code> object.</p>"}))
    CreateGraphqlApiRequest.type = Types::CreateGraphqlApiRequest
    CreateGraphqlApiResponse.add_member(:graphql_api, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApi, location_name: 'graphqlApi', traits: {"smithy.api#documentation" => "<p>The <code>GraphqlApi</code>.</p>"}))
    CreateGraphqlApiResponse.type = Types::CreateGraphqlApiResponse
    CreateResolverRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The ID for the GraphQL API for which the resolver is being created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The name of the <code>Type</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The name of the field to attach the resolver to.</p>", "smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName', traits: {"smithy.api#documentation" => "<p>The name of the data source for which the resolver is being created.</p>"}))
    CreateResolverRequest.add_member(:request_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate', traits: {"smithy.api#documentation" => "<p>The mapping template to use for requests.</p>\n         <p>A resolver uses a request mapping template to convert a GraphQL expression into a format\n         that a data source can understand. Mapping templates are written in Apache Velocity\n         Template Language (VTL).</p>\n         <p>VTL request mapping templates are optional when using an Lambda data\n         source. For all other data sources, VTL request and response mapping templates are\n         required.</p>"}))
    CreateResolverRequest.add_member(:response_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate', traits: {"smithy.api#documentation" => "<p>The mapping template to use for responses from the data source.</p>"}))
    CreateResolverRequest.add_member(:kind, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverKind, location_name: 'kind', traits: {"smithy.api#documentation" => "<p>The resolver type.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is\n               the default resolver type. You can use a UNIT resolver to run a GraphQL query against\n               a single data source.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PIPELINE</b>: A PIPELINE resolver type. You can\n               use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a\n               serial manner. You can use a pipeline resolver to run a GraphQL query against\n               multiple data sources.</p>\n            </li>\n         </ul>"}))
    CreateResolverRequest.add_member(:pipeline_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfig, location_name: 'pipelineConfig', traits: {"smithy.api#documentation" => "<p>The <code>PipelineConfig</code>.</p>"}))
    CreateResolverRequest.add_member(:sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig', traits: {"smithy.api#documentation" => "<p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>"}))
    CreateResolverRequest.add_member(:caching_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachingConfig, location_name: 'cachingConfig', traits: {"smithy.api#documentation" => "<p>The caching configuration for the resolver.</p>"}))
    CreateResolverRequest.add_member(:max_batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum batching size for a resolver.</p>"}))
    CreateResolverRequest.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    CreateResolverRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The <code>resolver</code> code that contains the request and response functions. When\n         code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be\n            <code>APPSYNC_JS</code>.</p>"}))
    CreateResolverRequest.add_member(:metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: 'metricsConfig', traits: {"smithy.api#documentation" => "<p>Enables or disables enhanced resolver metrics for specified resolvers. Note that\n            <code>metricsConfig</code> won't be used unless the\n            <code>resolverLevelMetricsBehavior</code> value is set to\n            <code>PER_RESOLVER_METRICS</code>. If the <code>resolverLevelMetricsBehavior</code> is\n         set to <code>FULL_REQUEST_RESOLVER_METRICS</code> instead, <code>metricsConfig</code> will\n         be ignored. However, you can still set its value.</p>\n         <p>\n            <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>"}))
    CreateResolverRequest.type = Types::CreateResolverRequest
    CreateResolverResponse.add_member(:resolver, Smithy::Schema::Shapes::ShapeRef.new(shape: Resolver, location_name: 'resolver', traits: {"smithy.api#documentation" => "<p>The <code>Resolver</code> object.</p>"}))
    CreateResolverResponse.type = Types::CreateResolverResponse
    CreateTypeRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The type definition, in GraphQL Schema Definition Language (SDL) format.</p>\n         <p>For more information, see the <a href=\"http://graphql.org/learn/schema/\">GraphQL SDL\n            documentation</a>.</p>", "smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The type format: SDL or JSON.</p>", "smithy.api#required" => {}}))
    CreateTypeRequest.type = Types::CreateTypeRequest
    CreateTypeResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The <code>Type</code> object.</p>"}))
    CreateTypeResponse.type = Types::CreateTypeResponse
    DataSource.add_member(:data_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSourceArn', traits: {"smithy.api#documentation" => "<p>The data source Amazon Resource Name (ARN).</p>"}))
    DataSource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>"}))
    DataSource.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data source.</p>"}))
    DataSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the data source.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>AWS_LAMBDA</b>: The data source is an Lambda function.</p>\n            </li>\n            <li>\n               <p>\n                  <b>AMAZON_DYNAMODB</b>: The data source is an Amazon DynamoDB table.</p>\n            </li>\n            <li>\n               <p>\n                  <b>AMAZON_ELASTICSEARCH</b>: The data source is an\n                  Amazon OpenSearch Service domain.</p>\n            </li>\n            <li>\n               <p>\n                  <b>AMAZON_OPENSEARCH_SERVICE</b>: The data source is\n               an Amazon OpenSearch Service domain.</p>\n            </li>\n            <li>\n               <p>\n                  <b>AMAZON_EVENTBRIDGE</b>: The data source is an\n                  Amazon EventBridge configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <b>AMAZON_BEDROCK_RUNTIME</b>: The data source is the\n                  Amazon Bedrock runtime.</p>\n            </li>\n            <li>\n               <p>\n                  <b>NONE</b>: There is no data source. Use this type\n               when you want to invoke a GraphQL operation without connecting to a data source, such\n               as when you're performing data transformation with resolvers or invoking a\n               subscription from a mutation.</p>\n            </li>\n            <li>\n               <p>\n                  <b>HTTP</b>: The data source is an HTTP\n               endpoint.</p>\n            </li>\n            <li>\n               <p>\n                  <b>RELATIONAL_DATABASE</b>: The data source is a\n               relational database.</p>\n            </li>\n         </ul>"}))
    DataSource.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRoleArn', traits: {"smithy.api#documentation" => "<p>The Identity and Access Management (IAM) service role Amazon Resource Name (ARN)\n         for the data source. The system assumes this role when accessing the data source.</p>"}))
    DataSource.add_member(:dynamodb_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: 'dynamodbConfig', traits: {"smithy.api#documentation" => "<p>DynamoDB settings.</p>"}))
    DataSource.add_member(:lambda_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: 'lambdaConfig', traits: {"smithy.api#documentation" => "<p>Lambda settings.</p>"}))
    DataSource.add_member(:elasticsearch_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: 'elasticsearchConfig', traits: {"smithy.api#documentation" => "<p>Amazon OpenSearch Service settings.</p>"}))
    DataSource.add_member(:open_search_service_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: 'openSearchServiceConfig', traits: {"smithy.api#documentation" => "<p>Amazon OpenSearch Service settings.</p>"}))
    DataSource.add_member(:http_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: 'httpConfig', traits: {"smithy.api#documentation" => "<p>HTTP endpoint settings.</p>"}))
    DataSource.add_member(:relational_database_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: 'relationalDatabaseConfig', traits: {"smithy.api#documentation" => "<p>Relational database settings.</p>"}))
    DataSource.add_member(:event_bridge_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: 'eventBridgeConfig', traits: {"smithy.api#documentation" => "<p>Amazon EventBridge settings.</p>"}))
    DataSource.add_member(:metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: 'metricsConfig', traits: {"smithy.api#documentation" => "<p>Enables or disables enhanced data source metrics for specified data sources. Note that\n            <code>metricsConfig</code> won't be used unless the\n            <code>dataSourceLevelMetricsBehavior</code> value is set to\n            <code>PER_DATA_SOURCE_METRICS</code>. If the <code>dataSourceLevelMetricsBehavior</code>\n         is set to <code>FULL_REQUEST_DATA_SOURCE_METRICS</code> instead, <code>metricsConfig</code>\n         will be ignored. However, you can still set its value.</p>\n         <p>\n            <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>"}))
    DataSource.type = Types::DataSource
    DataSourceIntrospectionModel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the model. For example, this could be the name of a single table in a\n         database.</p>"}))
    DataSourceIntrospectionModel.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFields, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The <code>DataSourceIntrospectionModelField</code> object data.</p>"}))
    DataSourceIntrospectionModel.add_member(:primary_key, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndex, location_name: 'primaryKey', traits: {"smithy.api#documentation" => "<p>The primary key stored as a <code>DataSourceIntrospectionModelIndex</code>\n         object.</p>"}))
    DataSourceIntrospectionModel.add_member(:indexes, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndexes, location_name: 'indexes', traits: {"smithy.api#documentation" => "<p>The array of <code>DataSourceIntrospectionModelIndex</code> objects.</p>"}))
    DataSourceIntrospectionModel.add_member(:sdl, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sdl', traits: {"smithy.api#documentation" => "<p>Contains the output of the SDL that was generated from the introspected types. This is\n         controlled by the <code>includeModelsSDL</code> parameter of the\n            <code>GetDataSourceIntrospection</code> operation.</p>"}))
    DataSourceIntrospectionModel.type = Types::DataSourceIntrospectionModel
    DataSourceIntrospectionModelField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field that was retrieved from the introspected data.</p>"}))
    DataSourceIntrospectionModelField.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The <code>DataSourceIntrospectionModelFieldType</code> object data.</p>"}))
    DataSourceIntrospectionModelField.add_member(:length, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'length', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The length value of the introspected field.</p>"}))
    DataSourceIntrospectionModelField.type = Types::DataSourceIntrospectionModelField
    DataSourceIntrospectionModelFieldType.add_member(:kind, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kind', traits: {"smithy.api#documentation" => "<p>Specifies the classification of data. For example, this could be set to values like\n            <code>Scalar</code> or <code>NonNull</code> to indicate a fundamental property of the\n         field.</p>\n         <p>Valid values include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Scalar</code>: Indicates the value is a primitive type\n               (scalar).</p>\n            </li>\n            <li>\n               <p>\n                  <code>NonNull</code>: Indicates the field cannot be\n               <code>null</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>List</code>: Indicates the field contains a list.</p>\n            </li>\n         </ul>"}))
    DataSourceIntrospectionModelFieldType.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data type that represents the field. For example, <code>String</code> is\n         a valid <code>name</code> value.</p>"}))
    DataSourceIntrospectionModelFieldType.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The <code>DataSourceIntrospectionModelFieldType</code> object data. The\n            <code>type</code> is only present if\n            <code>DataSourceIntrospectionModelFieldType.kind</code> is set to <code>NonNull</code>\n         or <code>List</code>. </p>\n         <p>The <code>type</code> typically contains its own <code>kind</code> and <code>name</code>\n         fields to represent the actual type data. For instance, <code>type</code> could contain a\n            <code>kind</code> value of <code>Scalar</code> with a <code>name</code> value of\n            <code>String</code>. The values <code>Scalar</code> and <code>String</code> will be\n         collectively stored in the <code>values</code> field.</p>"}))
    DataSourceIntrospectionModelFieldType.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldTypeValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of the <code>type</code> field. This field represents the AppSync data type\n         equivalent of the introspected field.</p>"}))
    DataSourceIntrospectionModelFieldType.type = Types::DataSourceIntrospectionModelFieldType
    DataSourceIntrospectionModelFieldTypeValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DataSourceIntrospectionModelFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelField)
    DataSourceIntrospectionModelIndex.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the index.</p>"}))
    DataSourceIntrospectionModelIndex.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndexFields, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The fields of the index.</p>"}))
    DataSourceIntrospectionModelIndex.type = Types::DataSourceIntrospectionModelIndex
    DataSourceIntrospectionModelIndexFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DataSourceIntrospectionModelIndexes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndex)
    DataSourceIntrospectionModels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModel)
    DataSourceIntrospectionResult.add_member(:models, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModels, location_name: 'models', traits: {"smithy.api#documentation" => "<p>The array of <code>DataSourceIntrospectionModel</code> objects.</p>"}))
    DataSourceIntrospectionResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Determines the number of types to be returned in a single response before paginating.\n         This value is typically taken from <code>nextToken</code> value from the previous\n         response.</p>"}))
    DataSourceIntrospectionResult.type = Types::DataSourceIntrospectionResult
    DataSourceIntrospectionStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    DataSourceIntrospectionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceIntrospectionStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DataSourceLevelMetricsBehavior.add_member(:full_request_data_source_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_REQUEST_DATA_SOURCE_METRICS', traits: {"smithy.api#enumValue" => "FULL_REQUEST_DATA_SOURCE_METRICS"}))
    DataSourceLevelMetricsBehavior.add_member(:per_data_source_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_DATA_SOURCE_METRICS', traits: {"smithy.api#enumValue" => "PER_DATA_SOURCE_METRICS"}))
    DataSourceLevelMetricsConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DataSourceLevelMetricsConfig.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DataSourceType.add_member(:aws_lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_LAMBDA', traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    DataSourceType.add_member(:amazon_dynamodb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_DYNAMODB', traits: {"smithy.api#enumValue" => "AMAZON_DYNAMODB"}))
    DataSourceType.add_member(:amazon_elasticsearch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_ELASTICSEARCH', traits: {"smithy.api#enumValue" => "AMAZON_ELASTICSEARCH"}))
    DataSourceType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DataSourceType.add_member(:http, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    DataSourceType.add_member(:relational_database, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELATIONAL_DATABASE', traits: {"smithy.api#enumValue" => "RELATIONAL_DATABASE"}))
    DataSourceType.add_member(:amazon_opensearch_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_OPENSEARCH_SERVICE', traits: {"smithy.api#enumValue" => "AMAZON_OPENSEARCH_SERVICE"}))
    DataSourceType.add_member(:amazon_eventbridge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_EVENTBRIDGE', traits: {"smithy.api#enumValue" => "AMAZON_EVENTBRIDGE"}))
    DataSourceType.add_member(:amazon_bedrock_runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_BEDROCK_RUNTIME', traits: {"smithy.api#enumValue" => "AMAZON_BEDROCK_RUNTIME"}))
    DataSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DefaultAction.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    DefaultAction.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    DeleteApiCacheRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiCacheRequest.type = Types::DeleteApiCacheRequest
    DeleteApiCacheResponse.type = Types::DeleteApiCacheResponse
    DeleteApiKeyRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiKeyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID for the API key.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiKeyRequest.type = Types::DeleteApiKeyRequest
    DeleteApiKeyResponse.type = Types::DeleteApiKeyResponse
    DeleteApiRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiRequest.type = Types::DeleteApiRequest
    DeleteApiResponse.type = Types::DeleteApiResponse
    DeleteChannelNamespaceRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The ID of the <code>Api</code> associated with the <code>ChannelNamespace</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelNamespaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>ChannelNamespace</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelNamespaceRequest.type = Types::DeleteChannelNamespaceRequest
    DeleteChannelNamespaceResponse.type = Types::DeleteChannelNamespaceResponse
    DeleteDataSourceRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteDataSourceResponse.type = Types::DeleteDataSourceResponse
    DeleteDomainNameRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainNameRequest.type = Types::DeleteDomainNameRequest
    DeleteDomainNameResponse.type = Types::DeleteDomainNameResponse
    DeleteFunctionRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The GraphQL API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.add_member(:function_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'functionId', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest
    DeleteFunctionResponse.type = Types::DeleteFunctionResponse
    DeleteGraphqlApiRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGraphqlApiRequest.type = Types::DeleteGraphqlApiRequest
    DeleteGraphqlApiResponse.type = Types::DeleteGraphqlApiResponse
    DeleteResolverRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The name of the resolver type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The resolver field name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.type = Types::DeleteResolverRequest
    DeleteResolverResponse.type = Types::DeleteResolverResponse
    DeleteTypeRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTypeRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The type name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTypeRequest.type = Types::DeleteTypeRequest
    DeleteTypeResponse.type = Types::DeleteTypeResponse
    DeltaSyncConfig.add_member(:base_table_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'baseTableTTL', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of minutes that an Item is stored in the data source.</p>"}))
    DeltaSyncConfig.add_member(:delta_sync_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deltaSyncTableName', traits: {"smithy.api#documentation" => "<p>The Delta Sync table name.</p>"}))
    DeltaSyncConfig.add_member(:delta_sync_table_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'deltaSyncTableTTL', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of minutes that a Delta Sync log entry is stored in the Delta Sync\n         table.</p>"}))
    DeltaSyncConfig.type = Types::DeltaSyncConfig
    DisassociateApiRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateApiRequest.type = Types::DisassociateApiRequest
    DisassociateApiResponse.type = Types::DisassociateApiResponse
    DisassociateMergedGraphqlApiRequest.add_member(:source_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Source API. This is generated by the AppSync service. In\n         most cases, source APIs (especially in your account) only require the API ID value or ARN\n         of the source API. However, source APIs from other accounts (cross-account use cases)\n         strictly require the full resource ARN of the source API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMergedGraphqlApiRequest.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID generated by the AppSync service for the source API association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMergedGraphqlApiRequest.type = Types::DisassociateMergedGraphqlApiRequest
    DisassociateMergedGraphqlApiResponse.add_member(:source_api_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: 'sourceApiAssociationStatus', traits: {"smithy.api#documentation" => "<p>The state of the source API association.</p>"}))
    DisassociateMergedGraphqlApiResponse.type = Types::DisassociateMergedGraphqlApiResponse
    DisassociateSourceGraphqlApiRequest.add_member(:merged_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In\n         most cases, Merged APIs (especially in your account) only require the API ID value or ARN\n         of the merged API. However, Merged APIs in other accounts (cross-account use cases)\n         strictly require the full resource ARN of the merged API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSourceGraphqlApiRequest.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID generated by the AppSync service for the source API association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSourceGraphqlApiRequest.type = Types::DisassociateSourceGraphqlApiRequest
    DisassociateSourceGraphqlApiResponse.add_member(:source_api_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: 'sourceApiAssociationStatus', traits: {"smithy.api#documentation" => "<p>The state of the source API association.</p>"}))
    DisassociateSourceGraphqlApiResponse.type = Types::DisassociateSourceGraphqlApiResponse
    DomainNameConfig.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>"}))
    DomainNameConfig.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the <code>DomainName</code> configuration.</p>"}))
    DomainNameConfig.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate. This can be an Certificate Manager\n            (ACM) certificate or an Identity and Access Management (IAM)\n         server certificate.</p>"}))
    DomainNameConfig.add_member(:appsync_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'appsyncDomainName', traits: {"smithy.api#documentation" => "<p>The domain name that AppSync provides.</p>"}))
    DomainNameConfig.add_member(:hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'hostedZoneId', traits: {"smithy.api#documentation" => "<p>The ID of your Amazon Route 53 hosted zone.</p>"}))
    DomainNameConfig.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DomainNameConfig.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the domain name.</p>"}))
    DomainNameConfig.type = Types::DomainNameConfig
    DomainNameConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfig)
    DynamodbDataSourceConfig.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The table name.</p>", "smithy.api#required" => {}}))
    DynamodbDataSourceConfig.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    DynamodbDataSourceConfig.add_member(:use_caller_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'useCallerCredentials', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to TRUE to use Amazon Cognito credentials with this data source.</p>"}))
    DynamodbDataSourceConfig.add_member(:delta_sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeltaSyncConfig, location_name: 'deltaSyncConfig', traits: {"smithy.api#documentation" => "<p>The <code>DeltaSyncConfig</code> for a versioned data source.</p>"}))
    DynamodbDataSourceConfig.add_member(:versioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'versioned', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to TRUE to use Conflict Detection and Resolution with this data source.</p>"}))
    DynamodbDataSourceConfig.type = Types::DynamodbDataSourceConfig
    ElasticsearchDataSourceConfig.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint.</p>", "smithy.api#required" => {}}))
    ElasticsearchDataSourceConfig.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    ElasticsearchDataSourceConfig.type = Types::ElasticsearchDataSourceConfig
    EnhancedMetricsConfig.add_member(:resolver_level_metrics_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverLevelMetricsBehavior, location_name: 'resolverLevelMetricsBehavior', traits: {"smithy.api#documentation" => "<p>Controls how resolver metrics will be emitted to CloudWatch. Resolver metrics\n         include:</p>\n         <ul>\n            <li>\n               <p>GraphQL errors: The number of GraphQL errors that occurred.</p>\n            </li>\n            <li>\n               <p>Requests: The number of invocations that occurred during a request. </p>\n            </li>\n            <li>\n               <p>Latency: The time to complete a resolver invocation.</p>\n            </li>\n            <li>\n               <p>Cache hits: The number of cache hits during a request.</p>\n            </li>\n            <li>\n               <p>Cache misses: The number of cache misses during a request.</p>\n            </li>\n         </ul>\n         <p>These metrics can be emitted to CloudWatch per resolver or for all resolvers in the\n         request. Metrics will be recorded by API ID and resolver name.\n            <code>resolverLevelMetricsBehavior</code> accepts one of these values at a time:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>FULL_REQUEST_RESOLVER_METRICS</code>: Records and emits metric data for\n               all resolvers in the request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PER_RESOLVER_METRICS</code>: Records and emits metric data for resolvers\n               that have the <code>metricsConfig</code> value set to <code>ENABLED</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    EnhancedMetricsConfig.add_member(:data_source_level_metrics_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceLevelMetricsBehavior, location_name: 'dataSourceLevelMetricsBehavior', traits: {"smithy.api#documentation" => "<p>Controls how data source metrics will be emitted to CloudWatch. Data source metrics\n         include:</p>\n         <ul>\n            <li>\n               <p>Requests: The number of invocations that occured during a request.</p>\n            </li>\n            <li>\n               <p>Latency: The time to complete a data source invocation.</p>\n            </li>\n            <li>\n               <p>Errors: The number of errors that occurred during a data source\n               invocation.</p>\n            </li>\n         </ul>\n         <p>These metrics can be emitted to CloudWatch per data source or for all data sources in\n         the request. Metrics will be recorded by API ID and data source name.\n            <code>dataSourceLevelMetricsBehavior</code> accepts one of these values at a\n         time:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>FULL_REQUEST_DATA_SOURCE_METRICS</code>: Records and emits metric data\n               for all data sources in the request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PER_DATA_SOURCE_METRICS</code>: Records and emits metric data for data\n               sources that have the <code>metricsConfig</code> value set to\n               <code>ENABLED</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    EnhancedMetricsConfig.add_member(:operation_level_metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationLevelMetricsConfig, location_name: 'operationLevelMetricsConfig', traits: {"smithy.api#documentation" => "<p> Controls how operation metrics will be emitted to CloudWatch. Operation metrics\n         include:</p>\n         <ul>\n            <li>\n               <p>Requests: The number of times a specified GraphQL operation was\n               called.</p>\n            </li>\n            <li>\n               <p>GraphQL errors: The number of GraphQL errors that occurred during a specified\n               GraphQL operation.</p>\n            </li>\n         </ul>\n         <p>Metrics will be recorded by API ID and operation name. You can set the value to\n            <code>ENABLED</code> or <code>DISABLED</code>.</p>", "smithy.api#required" => {}}))
    EnhancedMetricsConfig.type = Types::EnhancedMetricsConfig
    EnvironmentVariableMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariableMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableValue)
    ErrorDetail.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error payload.</p>"}))
    ErrorDetail.type = Types::ErrorDetail
    EvaluateCodeErrorDetail.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error payload.</p>"}))
    EvaluateCodeErrorDetail.add_member(:code_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrors, location_name: 'codeErrors', traits: {"smithy.api#documentation" => "<p>Contains the list of <code>CodeError</code> objects.</p>"}))
    EvaluateCodeErrorDetail.type = Types::EvaluateCodeErrorDetail
    EvaluateCodeRequest.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>The runtime to be used when evaluating the code. Currently, only the\n            <code>APPSYNC_JS</code> runtime is supported.</p>", "smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The code definition to be evaluated. Note that <code>code</code> and\n            <code>runtime</code> are both required for this action. The <code>runtime</code> value\n         must be <code>APPSYNC_JS</code>.</p>", "smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context', traits: {"smithy.api#documentation" => "<p>The map that holds all of the contextual information for your resolver invocation. A\n            <code>context</code> is required for this action.</p>", "smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:function, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'function', traits: {"smithy.api#documentation" => "<p>The function within the code to be evaluated. If provided, the valid values are\n            <code>request</code> and <code>response</code>.</p>"}))
    EvaluateCodeRequest.type = Types::EvaluateCodeRequest
    EvaluateCodeResponse.add_member(:evaluation_result, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult, location_name: 'evaluationResult', traits: {"smithy.api#documentation" => "<p>The result of the evaluation operation.</p>"}))
    EvaluateCodeResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateCodeErrorDetail, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Contains the payload of the response error.</p>"}))
    EvaluateCodeResponse.add_member(:logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Logs, location_name: 'logs', traits: {"smithy.api#documentation" => "<p>A list of logs that were generated by calls to <code>util.log.info</code> and\n            <code>util.log.error</code> in the evaluated code.</p>"}))
    EvaluateCodeResponse.add_member(:stash, Smithy::Schema::Shapes::ShapeRef.new(shape: Stash, location_name: 'stash', traits: {"smithy.api#documentation" => "<p>An object available inside each resolver and function handler. A single <code>stash</code> object lives through a single resolver run. Therefore, you can use the stash to pass arbitrary data across request and response handlers and across functions in a pipeline resolver.</p>"}))
    EvaluateCodeResponse.add_member(:out_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: OutErrors, location_name: 'outErrors', traits: {"smithy.api#documentation" => "<p>The list of runtime errors that are added to the GraphQL operation response.</p>"}))
    EvaluateCodeResponse.type = Types::EvaluateCodeResponse
    EvaluateMappingTemplateRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The mapping template; this can be a request or response template. A\n            <code>template</code> is required for this action.</p>", "smithy.api#required" => {}}))
    EvaluateMappingTemplateRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context', traits: {"smithy.api#documentation" => "<p>The map that holds all of the contextual information for your resolver invocation. A\n            <code>context</code> is required for this action.</p>", "smithy.api#required" => {}}))
    EvaluateMappingTemplateRequest.type = Types::EvaluateMappingTemplateRequest
    EvaluateMappingTemplateResponse.add_member(:evaluation_result, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult, location_name: 'evaluationResult', traits: {"smithy.api#documentation" => "<p>The mapping template; this can be a request or response template.</p>"}))
    EvaluateMappingTemplateResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The <code>ErrorDetail</code> object.</p>"}))
    EvaluateMappingTemplateResponse.add_member(:logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Logs, location_name: 'logs', traits: {"smithy.api#documentation" => "<p>A list of logs that were generated by calls to <code>util.log.info</code> and\n            <code>util.log.error</code> in the evaluated code.</p>"}))
    EvaluateMappingTemplateResponse.add_member(:stash, Smithy::Schema::Shapes::ShapeRef.new(shape: Stash, location_name: 'stash', traits: {"smithy.api#documentation" => "<p>An object available inside each resolver and function handler. A single <code>stash</code> object lives through a single resolver run. Therefore, you can use the stash to pass arbitrary data across request and response handlers and across functions in a pipeline resolver.</p>"}))
    EvaluateMappingTemplateResponse.add_member(:out_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: OutErrors, location_name: 'outErrors', traits: {"smithy.api#documentation" => "<p>The list of runtime errors that are added to the GraphQL operation response.</p>"}))
    EvaluateMappingTemplateResponse.type = Types::EvaluateMappingTemplateResponse
    EventBridgeDataSourceConfig.add_member(:event_bus_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventBusArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event bus. For more information about event buses, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus.html\">Amazon\n            EventBridge event buses</a>.</p>", "smithy.api#required" => {}}))
    EventBridgeDataSourceConfig.type = Types::EventBridgeDataSourceConfig
    EventConfig.add_member(:auth_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthProviders, location_name: 'authProviders', traits: {"smithy.api#documentation" => "<p>A list of authorization providers.</p>", "smithy.api#required" => {}}))
    EventConfig.add_member(:connection_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'connectionAuthModes', traits: {"smithy.api#documentation" => "<p>A list of valid authorization modes for the Event API connections.</p>", "smithy.api#required" => {}}))
    EventConfig.add_member(:default_publish_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'defaultPublishAuthModes', traits: {"smithy.api#documentation" => "<p>A list of valid authorization modes for the Event API publishing.</p>", "smithy.api#required" => {}}))
    EventConfig.add_member(:default_subscribe_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'defaultSubscribeAuthModes', traits: {"smithy.api#documentation" => "<p>A list of valid authorization modes for the Event API subscriptions.</p>", "smithy.api#required" => {}}))
    EventConfig.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventLogConfig, location_name: 'logConfig', traits: {"smithy.api#documentation" => "<p>The CloudWatch Logs configuration for the Event API.</p>"}))
    EventConfig.type = Types::EventConfig
    EventLogConfig.add_member(:log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: EventLogLevel, location_name: 'logLevel', traits: {"smithy.api#documentation" => "<p>The type of information to log for the Event API. </p>", "smithy.api#required" => {}}))
    EventLogConfig.add_member(:cloud_watch_logs_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cloudWatchLogsRoleArn', traits: {"smithy.api#documentation" => "<p>The IAM service role that AppSync assumes to publish CloudWatch Logs in your account.</p>", "smithy.api#required" => {}}))
    EventLogConfig.type = Types::EventLogConfig
    EventLogLevel.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    EventLogLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    EventLogLevel.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    EventLogLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    EventLogLevel.add_member(:debug, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    FieldLogLevel.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    FieldLogLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    FieldLogLevel.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    FieldLogLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    FieldLogLevel.add_member(:debug, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    FlushApiCacheRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushApiCacheRequest.type = Types::FlushApiCacheRequest
    FlushApiCacheResponse.type = Types::FlushApiCacheResponse
    FunctionConfiguration.add_member(:function_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionId', traits: {"smithy.api#documentation" => "<p>A unique ID representing the <code>Function</code> object.</p>"}))
    FunctionConfiguration.add_member(:function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the <code>Function</code> object.</p>"}))
    FunctionConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>Function</code> object.</p>"}))
    FunctionConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> description.</p>"}))
    FunctionConfiguration.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName', traits: {"smithy.api#documentation" => "<p>The name of the <code>DataSource</code>.</p>"}))
    FunctionConfiguration.add_member(:request_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> request mapping template. Functions support only the\n         2018-05-29 version of the request mapping template.</p>"}))
    FunctionConfiguration.add_member(:response_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> response mapping template.</p>"}))
    FunctionConfiguration.add_member(:function_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionVersion', traits: {"smithy.api#documentation" => "<p>The version of the request mapping template. Currently, only the 2018-05-29 version of\n         the template is supported.</p>"}))
    FunctionConfiguration.add_member(:sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    FunctionConfiguration.add_member(:max_batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum batching size for a resolver.</p>"}))
    FunctionConfiguration.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    FunctionConfiguration.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The <code>function</code> code that contains the request and response functions. When\n         code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be\n            <code>APPSYNC_JS</code>.</p>"}))
    FunctionConfiguration.type = Types::FunctionConfiguration
    Functions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration)
    FunctionsIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    GetApiAssociationRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiAssociationRequest.type = Types::GetApiAssociationRequest
    GetApiAssociationResponse.add_member(:api_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAssociation, location_name: 'apiAssociation', traits: {"smithy.api#documentation" => "<p>The <code>ApiAssociation</code> object.</p>"}))
    GetApiAssociationResponse.type = Types::GetApiAssociationResponse
    GetApiCacheRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiCacheRequest.type = Types::GetApiCacheRequest
    GetApiCacheResponse.add_member(:api_cache, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCache, location_name: 'apiCache', traits: {"smithy.api#documentation" => "<p>The <code>ApiCache</code> object.</p>"}))
    GetApiCacheResponse.type = Types::GetApiCacheResponse
    GetApiRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiRequest.type = Types::GetApiRequest
    GetApiResponse.add_member(:api, Smithy::Schema::Shapes::ShapeRef.new(shape: Api, location_name: 'api', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> object.</p>"}))
    GetApiResponse.type = Types::GetApiResponse
    GetChannelNamespaceRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelNamespaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>ChannelNamespace</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelNamespaceRequest.type = Types::GetChannelNamespaceRequest
    GetChannelNamespaceResponse.add_member(:channel_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: 'channelNamespace', traits: {"smithy.api#documentation" => "<p>The <code>ChannelNamespace</code> object.</p>"}))
    GetChannelNamespaceResponse.type = Types::GetChannelNamespaceResponse
    GetDataSourceIntrospectionRequest.add_member(:introspection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionId', traits: {"smithy.api#documentation" => "<p>The introspection ID. Each introspection contains a unique ID that can be used to\n         reference the instrospection record.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceIntrospectionRequest.add_member(:include_models_sdl, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'includeModelsSDL', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean flag that determines whether SDL should be generated for introspected types.\n         If set to <code>true</code>, each model will contain an <code>sdl</code> property that\n         contains the SDL for that type. The SDL only contains the type data and no additional\n         metadata or directives. </p>", "smithy.api#httpQuery" => "includeModelsSDL"}))
    GetDataSourceIntrospectionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Determines the number of types to be returned in a single response before paginating.\n         This value is typically taken from <code>nextToken</code> value from the previous\n         response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetDataSourceIntrospectionRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of introspected types that will be returned in a single\n         response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetDataSourceIntrospectionRequest.type = Types::GetDataSourceIntrospectionRequest
    GetDataSourceIntrospectionResponse.add_member(:introspection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionId', traits: {"smithy.api#documentation" => "<p>The introspection ID. Each introspection contains a unique ID that can be used to\n         reference the instrospection record.</p>"}))
    GetDataSourceIntrospectionResponse.add_member(:introspection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionStatus, location_name: 'introspectionStatus', traits: {"smithy.api#documentation" => "<p>The status of the introspection during retrieval. By default, when a new instrospection\n         is being retrieved, the status will be set to <code>PROCESSING</code>. Once the operation\n         has been completed, the status will change to <code>SUCCESS</code> or <code>FAILED</code>\n         depending on how the data was parsed. A <code>FAILED</code> operation will return an error\n         and its details as an <code>introspectionStatusDetail</code>.</p>"}))
    GetDataSourceIntrospectionResponse.add_member(:introspection_status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionStatusDetail', traits: {"smithy.api#documentation" => "<p>The error detail field. When a <code>FAILED</code>\n            <code>introspectionStatus</code> is returned, the <code>introspectionStatusDetail</code>\n         will also return the exact error that was generated during the operation.</p>"}))
    GetDataSourceIntrospectionResponse.add_member(:introspection_result, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionResult, location_name: 'introspectionResult', traits: {"smithy.api#documentation" => "<p>The <code>DataSourceIntrospectionResult</code> object data.</p>"}))
    GetDataSourceIntrospectionResponse.type = Types::GetDataSourceIntrospectionResponse
    GetDataSourceRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.type = Types::GetDataSourceRequest
    GetDataSourceResponse.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>The <code>DataSource</code> object.</p>"}))
    GetDataSourceResponse.type = Types::GetDataSourceResponse
    GetDomainNameRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainNameRequest.type = Types::GetDomainNameRequest
    GetDomainNameResponse.add_member(:domain_name_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: 'domainNameConfig', traits: {"smithy.api#documentation" => "<p>The configuration for the <code>DomainName</code>.</p>"}))
    GetDomainNameResponse.type = Types::GetDomainNameResponse
    GetFunctionRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The GraphQL API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.add_member(:function_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'functionId', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.type = Types::GetFunctionRequest
    GetFunctionResponse.add_member(:function_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: 'functionConfiguration', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> object.</p>"}))
    GetFunctionResponse.type = Types::GetFunctionResponse
    GetGraphqlApiEnvironmentVariablesRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The ID of the API from which the environmental variable list will be retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphqlApiEnvironmentVariablesRequest.type = Types::GetGraphqlApiEnvironmentVariablesRequest
    GetGraphqlApiEnvironmentVariablesResponse.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The payload containing each environmental variable in the <code>\"key\" : \"value\"</code>\n         format.</p>"}))
    GetGraphqlApiEnvironmentVariablesResponse.type = Types::GetGraphqlApiEnvironmentVariablesResponse
    GetGraphqlApiRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID for the GraphQL API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphqlApiRequest.type = Types::GetGraphqlApiRequest
    GetGraphqlApiResponse.add_member(:graphql_api, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApi, location_name: 'graphqlApi', traits: {"smithy.api#documentation" => "<p>The <code>GraphqlApi</code> object.</p>"}))
    GetGraphqlApiResponse.type = Types::GetGraphqlApiResponse
    GetIntrospectionSchemaRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntrospectionSchemaRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputType, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The schema format: SDL or JSON.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetIntrospectionSchemaRequest.add_member(:include_directives, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'includeDirectives', traits: {"smithy.api#documentation" => "<p>A flag that specifies whether the schema introspection should contain directives.</p>", "smithy.api#httpQuery" => "includeDirectives"}))
    GetIntrospectionSchemaRequest.type = Types::GetIntrospectionSchemaRequest
    GetIntrospectionSchemaResponse.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema, in GraphQL Schema Definition Language (SDL) format.</p>\n         <p>For more information, see the <a href=\"http://graphql.org/learn/schema/\">GraphQL SDL\n            documentation</a>.</p>", "smithy.api#httpPayload" => {}}))
    GetIntrospectionSchemaResponse[:http_payload] = :schema
    GetIntrospectionSchemaResponse[:http_payload_member] = GetIntrospectionSchemaResponse.member(:schema)
    GetIntrospectionSchemaResponse.type = Types::GetIntrospectionSchemaResponse
    GetResolverRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The resolver type name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The resolver field name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.type = Types::GetResolverRequest
    GetResolverResponse.add_member(:resolver, Smithy::Schema::Shapes::ShapeRef.new(shape: Resolver, location_name: 'resolver', traits: {"smithy.api#documentation" => "<p>The <code>Resolver</code> object.</p>"}))
    GetResolverResponse.type = Types::GetResolverResponse
    GetSchemaCreationStatusRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaCreationStatusRequest.type = Types::GetSchemaCreationStatusRequest
    GetSchemaCreationStatusResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When\n         the schema is in the ACTIVE state, you can add data.</p>"}))
    GetSchemaCreationStatusResponse.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'details', traits: {"smithy.api#documentation" => "<p>Detailed information about the status of the schema creation operation.</p>"}))
    GetSchemaCreationStatusResponse.type = Types::GetSchemaCreationStatusResponse
    GetSourceApiAssociationRequest.add_member(:merged_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In\n         most cases, Merged APIs (especially in your account) only require the API ID value or ARN\n         of the merged API. However, Merged APIs in other accounts (cross-account use cases)\n         strictly require the full resource ARN of the merged API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceApiAssociationRequest.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID generated by the AppSync service for the source API association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceApiAssociationRequest.type = Types::GetSourceApiAssociationRequest
    GetSourceApiAssociationResponse.add_member(:source_api_association, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: 'sourceApiAssociation', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociation</code> object data.</p>"}))
    GetSourceApiAssociationResponse.type = Types::GetSourceApiAssociationResponse
    GetTypeRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTypeRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The type name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTypeRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The type format: SDL or JSON.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetTypeRequest.type = Types::GetTypeRequest
    GetTypeResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The <code>Type</code> object.</p>"}))
    GetTypeResponse.type = Types::GetTypeResponse
    GraphQLApiIntrospectionConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    GraphQLApiIntrospectionConfig.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    GraphQLApiType.add_member(:graphql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRAPHQL', traits: {"smithy.api#enumValue" => "GRAPHQL"}))
    GraphQLApiType.add_member(:merged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGED', traits: {"smithy.api#enumValue" => "MERGED"}))
    GraphQLApiVisibility.add_member(:global, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLOBAL', traits: {"smithy.api#enumValue" => "GLOBAL"}))
    GraphQLApiVisibility.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    GraphQLSchemaException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    GraphQLSchemaException.type = Types::GraphQLSchemaException
    GraphqlApi.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The API name.</p>"}))
    GraphqlApi.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>"}))
    GraphqlApi.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The authentication type.</p>"}))
    GraphqlApi.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'logConfig', traits: {"smithy.api#documentation" => "<p>The Amazon CloudWatch Logs configuration.</p>"}))
    GraphqlApi.add_member(:user_pool_config, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: 'userPoolConfig', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito user pool configuration.</p>"}))
    GraphqlApi.add_member(:open_id_connect_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig', traits: {"smithy.api#documentation" => "<p>The OpenID Connect configuration.</p>"}))
    GraphqlApi.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN).</p>"}))
    GraphqlApi.add_member(:uris, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'uris', traits: {"smithy.api#documentation" => "<p>The URIs.</p>"}))
    GraphqlApi.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags.</p>"}))
    GraphqlApi.add_member(:additional_authentication_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: 'additionalAuthenticationProviders', traits: {"smithy.api#documentation" => "<p>A list of additional authentication providers for the <code>GraphqlApi</code>\n         API.</p>"}))
    GraphqlApi.add_member(:xray_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'xrayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A flag indicating whether to use X-Ray tracing for this\n            <code>GraphqlApi</code>.</p>"}))
    GraphqlApi.add_member(:waf_web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'wafWebAclArn', traits: {"smithy.api#documentation" => "<p>The ARN of the WAF access control list (ACL) associated with this\n            <code>GraphqlApi</code>, if one exists.</p>"}))
    GraphqlApi.add_member(:lambda_authorizer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig', traits: {"smithy.api#documentation" => "<p>Configuration for Lambda function authorization.</p>"}))
    GraphqlApi.add_member(:dns, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'dns', traits: {"smithy.api#documentation" => "<p>The DNS records for the API.</p>"}))
    GraphqlApi.add_member(:visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiVisibility, location_name: 'visibility', traits: {"smithy.api#documentation" => "<p>Sets the value of the GraphQL API to public (<code>GLOBAL</code>) or private\n            (<code>PRIVATE</code>). If no value is provided, the visibility will be set to\n            <code>GLOBAL</code> by default. This value cannot be changed once the API has been\n         created.</p>"}))
    GraphqlApi.add_member(:api_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiType, location_name: 'apiType', traits: {"smithy.api#documentation" => "<p>The value that indicates whether the GraphQL API is a standard API\n         (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>"}))
    GraphqlApi.add_member(:merged_api_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The Identity and Access Management service role ARN for a merged API. The AppSync\n         service assumes this role on behalf of the Merged API to validate access to source APIs at\n         runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with\n         the source API changes automatically.</p>"}))
    GraphqlApi.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'owner', traits: {"smithy.api#documentation" => "<p>The account owner of the GraphQL API.</p>"}))
    GraphqlApi.add_member(:owner_contact, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact', traits: {"smithy.api#documentation" => "<p>The owner contact information for an API resource.</p>\n         <p>This field accepts any string input with a length of 0 - 256 characters.</p>"}))
    GraphqlApi.add_member(:introspection_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: 'introspectionConfig', traits: {"smithy.api#documentation" => "<p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable\n            (<code>DISABLED</code>) introspection. If no value is provided, the introspection\n         configuration will be set to <code>ENABLED</code> by default. This field will produce an\n         error if the operation attempts to use the introspection feature while this field is\n         disabled.</p>\n         <p>For more information about introspection, see <a href=\"https://graphql.org/learn/introspection/\">GraphQL introspection</a>.</p>"}))
    GraphqlApi.add_member(:query_depth_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: 'queryDepthLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum depth a query can have in a single request. Depth refers to the amount of\n         nested levels allowed in the body of query. The default value is <code>0</code> (or\n         unspecified), which indicates there's no depth limit. If you set a limit, it can be between\n            <code>1</code> and <code>75</code> nested levels. This field will produce a limit error\n         if the operation falls out of bounds.</p>\n         <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field\n         produces an error, the error will be thrown upwards to the first nullable field\n         available.</p>"}))
    GraphqlApi.add_member(:resolver_count_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: 'resolverCountLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of resolvers that can be invoked in a single request. The default\n         value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>.\n         When specified, the limit value can be between <code>1</code> and <code>10000</code>. This\n         field will produce a limit error if the operation falls out of bounds.</p>"}))
    GraphqlApi.add_member(:enhanced_metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: 'enhancedMetricsConfig', traits: {"smithy.api#documentation" => "<p>The <code>enhancedMetricsConfig</code> object.</p>"}))
    GraphqlApi.type = Types::GraphqlApi
    GraphqlApis.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApi)
    HandlerBehavior.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE', traits: {"smithy.api#enumValue" => "CODE"}))
    HandlerBehavior.add_member(:direct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT', traits: {"smithy.api#enumValue" => "DIRECT"}))
    HandlerConfig.add_member(:behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerBehavior, location_name: 'behavior', traits: {"smithy.api#documentation" => "<p>The behavior for the handler.</p>", "smithy.api#required" => {}}))
    HandlerConfig.add_member(:integration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, location_name: 'integration', traits: {"smithy.api#documentation" => "<p>The integration data source configuration for the handler.</p>", "smithy.api#required" => {}}))
    HandlerConfig.type = Types::HandlerConfig
    HandlerConfigs.add_member(:on_publish, Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfig, location_name: 'onPublish', traits: {"smithy.api#documentation" => "<p>The configuration for the <code>OnPublish</code> handler.</p>"}))
    HandlerConfigs.add_member(:on_subscribe, Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfig, location_name: 'onSubscribe', traits: {"smithy.api#documentation" => "<p>The configuration for the <code>OnSubscribe</code> handler.</p>"}))
    HandlerConfigs.type = Types::HandlerConfigs
    HttpDataSourceConfig.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The HTTP URL endpoint. You can specify either the domain name or IP, and port\n         combination, and the URL scheme must be HTTP or HTTPS. If you don't specify the port,\n            AppSync uses the default port 80 for the HTTP endpoint and port 443 for\n         HTTPS endpoints.</p>"}))
    HttpDataSourceConfig.add_member(:authorization_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationConfig, location_name: 'authorizationConfig', traits: {"smithy.api#documentation" => "<p>The authorization configuration in case the HTTP endpoint requires authorization.</p>"}))
    HttpDataSourceConfig.type = Types::HttpDataSourceConfig
    Integration.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSourceName', traits: {"smithy.api#documentation" => "<p>The unique name of the data source that has been configured on the API.</p>", "smithy.api#required" => {}}))
    Integration.add_member(:lambda_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConfig, location_name: 'lambdaConfig', traits: {"smithy.api#documentation" => "<p>The configuration for a Lambda data source.</p>"}))
    Integration.type = Types::Integration
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InternalFailureException.type = Types::InternalFailureException
    InvokeType.add_member(:request_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUEST_RESPONSE', traits: {"smithy.api#enumValue" => "REQUEST_RESPONSE"}))
    InvokeType.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    LambdaAuthorizerConfig.add_member(:authorizer_result_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'authorizerResultTtlInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of seconds a response should be cached for. The default is 0 seconds, which\n         disables caching. If you don't specify a value for\n            <code>authorizerResultTtlInSeconds</code>, the default value is used. The maximum value\n         is one hour (3600 seconds). The Lambda function can override this by returning\n         a <code>ttlOverride</code> key in its response.</p>"}))
    LambdaAuthorizerConfig.add_member(:authorizer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerUri', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function to be called for\n         authorization. This can be a standard Lambda ARN, a version ARN\n            (<code>.../v3</code>), or an alias ARN. </p>\n         <p>\n            <b>Note</b>: This Lambda function must have the\n         following resource-based policy assigned to it. When configuring Lambda\n         authorizers in the console, this is done for you. To use the Command Line Interface\n            (CLI), run the following:</p>\n         <p>\n            <code>aws lambda add-permission --function-name\n            \"arn:aws:lambda:us-east-2:111122223333:function:my-function\" --statement-id \"appsync\"\n            --principal appsync.amazonaws.com --action lambda:InvokeFunction</code>\n         </p>", "smithy.api#required" => {}}))
    LambdaAuthorizerConfig.add_member(:identity_validation_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityValidationExpression', traits: {"smithy.api#documentation" => "<p>A regular expression for validation of tokens before the Lambda function is\n         called.</p>"}))
    LambdaAuthorizerConfig.type = Types::LambdaAuthorizerConfig
    LambdaConfig.add_member(:invoke_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeType, location_name: 'invokeType', traits: {"smithy.api#documentation" => "<p>The invocation type for a Lambda data source.</p>"}))
    LambdaConfig.type = Types::LambdaConfig
    LambdaConflictHandlerConfig.add_member(:lambda_conflict_handler_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lambdaConflictHandlerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the Lambda function to use as the\n         Conflict Handler.</p>"}))
    LambdaConflictHandlerConfig.type = Types::LambdaConflictHandlerConfig
    LambdaDataSourceConfig.add_member(:lambda_function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lambdaFunctionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the Lambda function.</p>", "smithy.api#required" => {}}))
    LambdaDataSourceConfig.type = Types::LambdaDataSourceConfig
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListApiKeysRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApiKeysRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApiKeysRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApiKeysRequest.type = Types::ListApiKeysRequest
    ListApiKeysResponse.add_member(:api_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeys, location_name: 'apiKeys', traits: {"smithy.api#documentation" => "<p>The <code>ApiKey</code> objects.</p>"}))
    ListApiKeysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier to pass in the next request to this operation to return the next set of\n         items in the list.</p>"}))
    ListApiKeysResponse.type = Types::ListApiKeysResponse
    ListApisRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApisRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApisRequest.type = Types::ListApisRequest
    ListApisResponse.add_member(:apis, Smithy::Schema::Shapes::ShapeRef.new(shape: Apis, location_name: 'apis', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> objects.</p>"}))
    ListApisResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>"}))
    ListApisResponse.type = Types::ListApisResponse
    ListChannelNamespacesRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelNamespacesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListChannelNamespacesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListChannelNamespacesRequest.type = Types::ListChannelNamespacesRequest
    ListChannelNamespacesResponse.add_member(:channel_namespaces, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespaces, location_name: 'channelNamespaces', traits: {"smithy.api#documentation" => "<p>The <code>ChannelNamespace</code> objects.</p>"}))
    ListChannelNamespacesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>"}))
    ListChannelNamespacesResponse.type = Types::ListChannelNamespacesResponse
    ListDataSourcesRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataSourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The <code>DataSource</code> objects.</p>"}))
    ListDataSourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier to pass in the next request to this operation to return the next set of\n         items in the list.</p>"}))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListDomainNamesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDomainNamesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDomainNamesRequest.type = Types::ListDomainNamesRequest
    ListDomainNamesResponse.add_member(:domain_name_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfigs, location_name: 'domainNameConfigs', traits: {"smithy.api#documentation" => "<p>Lists configurations for multiple domain names.</p>"}))
    ListDomainNamesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>"}))
    ListDomainNamesResponse.type = Types::ListDomainNamesResponse
    ListFunctionsRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The GraphQL API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFunctionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFunctionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFunctionsRequest.type = Types::ListFunctionsRequest
    ListFunctionsResponse.add_member(:functions, Smithy::Schema::Shapes::ShapeRef.new(shape: Functions, location_name: 'functions', traits: {"smithy.api#documentation" => "<p>A list of <code>Function</code> objects.</p>"}))
    ListFunctionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>"}))
    ListFunctionsResponse.type = Types::ListFunctionsResponse
    ListGraphqlApisRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListGraphqlApisRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListGraphqlApisRequest.add_member(:api_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiType, location_name: 'apiType', traits: {"smithy.api#documentation" => "<p>The value that indicates whether the GraphQL API is a standard API\n         (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>", "smithy.api#httpQuery" => "apiType"}))
    ListGraphqlApisRequest.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Ownership, location_name: 'owner', traits: {"smithy.api#documentation" => "<p>The account owner of the GraphQL API.</p>", "smithy.api#httpQuery" => "owner"}))
    ListGraphqlApisRequest.type = Types::ListGraphqlApisRequest
    ListGraphqlApisResponse.add_member(:graphql_apis, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApis, location_name: 'graphqlApis', traits: {"smithy.api#documentation" => "<p>The <code>GraphqlApi</code> objects.</p>"}))
    ListGraphqlApisResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier to pass in the next request to this operation to return the next set of\n         items in the list.</p>"}))
    ListGraphqlApisResponse.type = Types::ListGraphqlApisResponse
    ListResolversByFunctionRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversByFunctionRequest.add_member(:function_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionId', traits: {"smithy.api#documentation" => "<p>The function ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversByFunctionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListResolversByFunctionRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListResolversByFunctionRequest.type = Types::ListResolversByFunctionRequest
    ListResolversByFunctionResponse.add_member(:resolvers, Smithy::Schema::Shapes::ShapeRef.new(shape: Resolvers, location_name: 'resolvers', traits: {"smithy.api#documentation" => "<p>The list of resolvers.</p>"}))
    ListResolversByFunctionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that you can use to return the next set of items in the list.</p>"}))
    ListResolversByFunctionResponse.type = Types::ListResolversByFunctionResponse
    ListResolversRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The type name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListResolversRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListResolversRequest.type = Types::ListResolversRequest
    ListResolversResponse.add_member(:resolvers, Smithy::Schema::Shapes::ShapeRef.new(shape: Resolvers, location_name: 'resolvers', traits: {"smithy.api#documentation" => "<p>The <code>Resolver</code> objects.</p>"}))
    ListResolversResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier to pass in the next request to this operation to return the next set of\n         items in the list.</p>"}))
    ListResolversResponse.type = Types::ListResolversResponse
    ListSourceApiAssociationsRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSourceApiAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSourceApiAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSourceApiAssociationsRequest.type = Types::ListSourceApiAssociationsRequest
    ListSourceApiAssociationsResponse.add_member(:source_api_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationSummaryList, location_name: 'sourceApiAssociationSummaries', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociationSummary</code> object data.</p>"}))
    ListSourceApiAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>"}))
    ListSourceApiAssociationsResponse.type = Types::ListSourceApiAssociationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A <code>TagMap</code> object.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTypesByAssociationRequest.add_member(:merged_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In\n         most cases, Merged APIs (especially in your account) only require the API ID value or ARN\n         of the merged API. However, Merged APIs in other accounts (cross-account use cases)\n         strictly require the full resource ARN of the merged API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID generated by the AppSync service for the source API association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format type.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTypesByAssociationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTypesByAssociationRequest.type = Types::ListTypesByAssociationRequest
    ListTypesByAssociationResponse.add_member(:types, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeList, location_name: 'types', traits: {"smithy.api#documentation" => "<p>The <code>Type</code> objects.</p>"}))
    ListTypesByAssociationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>"}))
    ListTypesByAssociationResponse.type = Types::ListTypesByAssociationResponse
    ListTypesRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The type format: SDL or JSON.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListTypesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which you can\n         use to return the next set of items in the list.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTypesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that you want the request to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTypesRequest.type = Types::ListTypesRequest
    ListTypesResponse.add_member(:types, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeList, location_name: 'types', traits: {"smithy.api#documentation" => "<p>The <code>Type</code> objects.</p>"}))
    ListTypesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier to pass in the next request to this operation to return the next set of\n         items in the list.</p>"}))
    ListTypesResponse.type = Types::ListTypesResponse
    LogConfig.add_member(:field_log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLogLevel, location_name: 'fieldLogLevel', traits: {"smithy.api#documentation" => "<p>The field logging level. Values can be NONE, ERROR, or ALL.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>NONE</b>: No field-level logs are\n               captured.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ERROR</b>: Logs the following information only for\n               the fields that are in error:</p>\n               <ul>\n                  <li>\n                     <p>The error section in the server response.</p>\n                  </li>\n                  <li>\n                     <p>Field-level errors.</p>\n                  </li>\n                  <li>\n                     <p>The generated request/response functions that got resolved for error\n                     fields.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>\n                  <b>ALL</b>: The following information is logged for\n               all fields in the query:</p>\n               <ul>\n                  <li>\n                     <p>Field-level tracing information.</p>\n                  </li>\n                  <li>\n                     <p>The generated request/response functions that got resolved for each\n                     field.</p>\n                  </li>\n               </ul>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    LogConfig.add_member(:cloud_watch_logs_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cloudWatchLogsRoleArn', traits: {"smithy.api#documentation" => "<p>The service role that AppSync assumes to publish to CloudWatch\n         logs in your account.</p>", "smithy.api#required" => {}}))
    LogConfig.add_member(:exclude_verbose_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'excludeVerboseContent', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to TRUE to exclude sections that contain information such as headers, context, and\n         evaluated mapping templates, regardless of logging level.</p>"}))
    LogConfig.type = Types::LogConfig
    Logs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfStringToString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfStringToString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MergeType.add_member(:manual_merge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL_MERGE', traits: {"smithy.api#enumValue" => "MANUAL_MERGE"}))
    MergeType.add_member(:auto_merge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_MERGE', traits: {"smithy.api#enumValue" => "AUTO_MERGE"}))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    OpenIDConnectConfig.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'issuer', traits: {"smithy.api#documentation" => "<p>The issuer for the OIDC configuration. The issuer returned by discovery must exactly\n         match the value of <code>iss</code> in the ID token.</p>", "smithy.api#required" => {}}))
    OpenIDConnectConfig.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The client identifier of the relying party at the OpenID identity provider. This\n         identifier is typically obtained when the relying party is registered with the OpenID\n         identity provider. You can specify a regular expression so that AppSync can\n         validate against multiple client identifiers at a time.</p>"}))
    OpenIDConnectConfig.add_member(:iat_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'iatTTL', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of milliseconds that a token is valid after it's issued to a user.</p>"}))
    OpenIDConnectConfig.add_member(:auth_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'authTTL', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of milliseconds that a token is valid after being authenticated.</p>"}))
    OpenIDConnectConfig.type = Types::OpenIDConnectConfig
    OpenSearchServiceDataSourceConfig.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint.</p>", "smithy.api#required" => {}}))
    OpenSearchServiceDataSourceConfig.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    OpenSearchServiceDataSourceConfig.type = Types::OpenSearchServiceDataSourceConfig
    OperationLevelMetricsConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    OperationLevelMetricsConfig.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    OutputType.add_member(:sdl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SDL', traits: {"smithy.api#enumValue" => "SDL"}))
    OutputType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    Ownership.add_member(:current_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURRENT_ACCOUNT', traits: {"smithy.api#enumValue" => "CURRENT_ACCOUNT"}))
    Ownership.add_member(:other_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER_ACCOUNTS', traits: {"smithy.api#enumValue" => "OTHER_ACCOUNTS"}))
    PipelineConfig.add_member(:functions, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionsIds, location_name: 'functions', traits: {"smithy.api#documentation" => "<p>A list of <code>Function</code> objects.</p>"}))
    PipelineConfig.type = Types::PipelineConfig
    PutGraphqlApiEnvironmentVariablesRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The ID of the API to which the environmental variable list will be written.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGraphqlApiEnvironmentVariablesRequest.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The list of environmental variables to add to the API.</p>\n         <p>When creating an environmental variable key-value pair, it must follow the additional\n         constraints below:</p>\n         <ul>\n            <li>\n               <p>Keys must begin with a letter.</p>\n            </li>\n            <li>\n               <p>Keys must be at least two characters long.</p>\n            </li>\n            <li>\n               <p>Keys can only contain letters, numbers, and the underscore character\n               (_).</p>\n            </li>\n            <li>\n               <p>Values can be up to 512 characters long.</p>\n            </li>\n            <li>\n               <p>You can configure up to 50 key-value pairs in a GraphQL API.</p>\n            </li>\n         </ul>\n         <p>You can create a list of environmental variables by adding it to the\n            <code>environmentVariables</code> payload as a list in the format\n            <code>{\"key1\":\"value1\",\"key2\":\"value2\", …}</code>. Note that each call of the\n            <code>PutGraphqlApiEnvironmentVariables</code> action will result in the overwriting of\n         the existing environmental variable list of that API. This means the existing environmental\n         variables will be lost. To avoid this, you must include all existing and new environmental\n         variables in the list each time you call this action.</p>", "smithy.api#required" => {}}))
    PutGraphqlApiEnvironmentVariablesRequest.type = Types::PutGraphqlApiEnvironmentVariablesRequest
    PutGraphqlApiEnvironmentVariablesResponse.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The payload containing each environmental variable in the <code>\"key\" : \"value\"</code>\n         format.</p>"}))
    PutGraphqlApiEnvironmentVariablesResponse.type = Types::PutGraphqlApiEnvironmentVariablesResponse
    RdsDataApiConfig.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDataApiConfigResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN of the RDS cluster.</p>", "smithy.api#required" => {}}))
    RdsDataApiConfig.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDataApiConfigSecretArn, location_name: 'secretArn', traits: {"smithy.api#documentation" => "<p>The secret's ARN that was obtained from Secrets Manager. A secret consists of secret\n         information, the secret value, plus metadata about the secret. A secret value can be a\n         string or binary. It typically includes the ARN, secret name and description, policies,\n         tags, encryption key from the Key Management Service, and key rotation data.</p>", "smithy.api#required" => {}}))
    RdsDataApiConfig.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDataApiConfigDatabaseName, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p>The name of the database in the cluster.</p>", "smithy.api#required" => {}}))
    RdsDataApiConfig.type = Types::RdsDataApiConfig
    RdsHttpEndpointConfig.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Region for Amazon RDS HTTP endpoint.</p>"}))
    RdsHttpEndpointConfig.add_member(:db_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dbClusterIdentifier', traits: {"smithy.api#documentation" => "<p>Amazon RDS cluster Amazon Resource Name (ARN).</p>"}))
    RdsHttpEndpointConfig.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p>Logical database name.</p>"}))
    RdsHttpEndpointConfig.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>Logical schema name.</p>"}))
    RdsHttpEndpointConfig.add_member(:aws_secret_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsSecretStoreArn', traits: {"smithy.api#documentation" => "<p>Amazon Web Services secret store Amazon Resource Name (ARN) for database\n         credentials.</p>"}))
    RdsHttpEndpointConfig.type = Types::RdsHttpEndpointConfig
    RelationalDatabaseDataSourceConfig.add_member(:relational_database_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseSourceType, location_name: 'relationalDatabaseSourceType', traits: {"smithy.api#documentation" => "<p>Source type for the relational database.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>RDS_HTTP_ENDPOINT</b>: The relational database\n               source type is an Amazon Relational Database Service (Amazon RDS) HTTP\n               endpoint.</p>\n            </li>\n         </ul>"}))
    RelationalDatabaseDataSourceConfig.add_member(:rds_http_endpoint_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsHttpEndpointConfig, location_name: 'rdsHttpEndpointConfig', traits: {"smithy.api#documentation" => "<p>Amazon RDS HTTP endpoint settings.</p>"}))
    RelationalDatabaseDataSourceConfig.type = Types::RelationalDatabaseDataSourceConfig
    RelationalDatabaseSourceType.add_member(:rds_http_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS_HTTP_ENDPOINT', traits: {"smithy.api#enumValue" => "RDS_HTTP_ENDPOINT"}))
    Resolver.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The resolver type name.</p>"}))
    Resolver.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The resolver field name.</p>"}))
    Resolver.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName', traits: {"smithy.api#documentation" => "<p>The resolver data source name.</p>"}))
    Resolver.add_member(:resolver_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resolverArn', traits: {"smithy.api#documentation" => "<p>The resolver Amazon Resource Name (ARN).</p>"}))
    Resolver.add_member(:request_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate', traits: {"smithy.api#documentation" => "<p>The request mapping template.</p>"}))
    Resolver.add_member(:response_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate', traits: {"smithy.api#documentation" => "<p>The response mapping template.</p>"}))
    Resolver.add_member(:kind, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverKind, location_name: 'kind', traits: {"smithy.api#documentation" => "<p>The resolver type.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is\n               the default resolver type. You can use a UNIT resolver to run a GraphQL query against\n               a single data source.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PIPELINE</b>: A PIPELINE resolver type. You can\n               use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a\n               serial manner. You can use a pipeline resolver to run a GraphQL query against\n               multiple data sources.</p>\n            </li>\n         </ul>"}))
    Resolver.add_member(:pipeline_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfig, location_name: 'pipelineConfig', traits: {"smithy.api#documentation" => "<p>The <code>PipelineConfig</code>.</p>"}))
    Resolver.add_member(:sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig', traits: {"smithy.api#documentation" => "<p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>"}))
    Resolver.add_member(:caching_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachingConfig, location_name: 'cachingConfig', traits: {"smithy.api#documentation" => "<p>The caching configuration for the resolver.</p>"}))
    Resolver.add_member(:max_batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum batching size for a resolver.</p>"}))
    Resolver.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    Resolver.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The <code>resolver</code> code that contains the request and response functions. When\n         code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be\n            <code>APPSYNC_JS</code>.</p>"}))
    Resolver.add_member(:metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: 'metricsConfig', traits: {"smithy.api#documentation" => "<p>Enables or disables enhanced resolver metrics for specified resolvers. Note that\n            <code>metricsConfig</code> won't be used unless the\n            <code>resolverLevelMetricsBehavior</code> value is set to\n            <code>PER_RESOLVER_METRICS</code>. If the <code>resolverLevelMetricsBehavior</code> is\n         set to <code>FULL_REQUEST_RESOLVER_METRICS</code> instead, <code>metricsConfig</code> will\n         be ignored. However, you can still set its value.</p>\n         <p>\n            <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>"}))
    Resolver.type = Types::Resolver
    ResolverKind.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNIT', traits: {"smithy.api#enumValue" => "UNIT"}))
    ResolverKind.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PIPELINE', traits: {"smithy.api#enumValue" => "PIPELINE"}))
    ResolverLevelMetricsBehavior.add_member(:full_request_resolver_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_REQUEST_RESOLVER_METRICS', traits: {"smithy.api#enumValue" => "FULL_REQUEST_RESOLVER_METRICS"}))
    ResolverLevelMetricsBehavior.add_member(:per_resolver_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_RESOLVER_METRICS', traits: {"smithy.api#enumValue" => "PER_RESOLVER_METRICS"}))
    ResolverLevelMetricsConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverLevelMetricsConfig.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    Resolvers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resolver)
    RuntimeName.add_member(:appsync_js, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPSYNC_JS', traits: {"smithy.api#enumValue" => "APPSYNC_JS"}))
    SchemaStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    SchemaStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SchemaStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    SchemaStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    SchemaStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    SchemaStatus.add_member(:not_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotApplicable', traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceApiAssociation.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID generated by the AppSync service for the source API association.</p>"}))
    SourceApiAssociation.add_member(:association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source API association.</p>"}))
    SourceApiAssociation.add_member(:source_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiId', traits: {"smithy.api#documentation" => "<p>The ID of the AppSync source API.</p>"}))
    SourceApiAssociation.add_member(:source_api_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AppSync source API.</p>"}))
    SourceApiAssociation.add_member(:merged_api_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AppSync Merged API.</p>"}))
    SourceApiAssociation.add_member(:merged_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiId', traits: {"smithy.api#documentation" => "<p>The ID of the AppSync Merged API.</p>"}))
    SourceApiAssociation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description field.</p>"}))
    SourceApiAssociation.add_member(:source_api_association_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: 'sourceApiAssociationConfig', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociationConfig</code> object data.</p>"}))
    SourceApiAssociation.add_member(:source_api_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: 'sourceApiAssociationStatus', traits: {"smithy.api#documentation" => "<p>The state of the source API association.</p>"}))
    SourceApiAssociation.add_member(:source_api_association_status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiAssociationStatusDetail', traits: {"smithy.api#documentation" => "<p>The detailed message related to the current state of the source API association.</p>"}))
    SourceApiAssociation.add_member(:last_successful_merge_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastSuccessfulMergeDate', traits: {"smithy.api#documentation" => "<p>The datetime value of the last successful merge of the source API association. The\n         result will be in UTC format and your local time zone.</p>"}))
    SourceApiAssociation.type = Types::SourceApiAssociation
    SourceApiAssociationConfig.add_member(:merge_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeType, location_name: 'mergeType', traits: {"smithy.api#documentation" => "<p>The property that indicates which merging option is enabled in the source API\n         association.</p>\n         <p>Valid merge types are <code>MANUAL_MERGE</code> (default) and <code>AUTO_MERGE</code>.\n         Manual merges are the default behavior and require the user to trigger any changes from the\n         source APIs to the merged API manually. Auto merges subscribe the merged API to the changes\n         performed on the source APIs so that any change in the source APIs are also made to the\n         merged API. Auto merges use <code>MergedApiExecutionRoleArn</code> to perform merge\n         operations.</p>"}))
    SourceApiAssociationConfig.type = Types::SourceApiAssociationConfig
    SourceApiAssociationStatus.add_member(:merge_scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE_SCHEDULED', traits: {"smithy.api#enumValue" => "MERGE_SCHEDULED"}))
    SourceApiAssociationStatus.add_member(:merge_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE_FAILED', traits: {"smithy.api#enumValue" => "MERGE_FAILED"}))
    SourceApiAssociationStatus.add_member(:merge_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE_SUCCESS', traits: {"smithy.api#enumValue" => "MERGE_SUCCESS"}))
    SourceApiAssociationStatus.add_member(:merge_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "MERGE_IN_PROGRESS"}))
    SourceApiAssociationStatus.add_member(:auto_merge_schedule_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_MERGE_SCHEDULE_FAILED', traits: {"smithy.api#enumValue" => "AUTO_MERGE_SCHEDULE_FAILED"}))
    SourceApiAssociationStatus.add_member(:deletion_scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_SCHEDULED', traits: {"smithy.api#enumValue" => "DELETION_SCHEDULED"}))
    SourceApiAssociationStatus.add_member(:deletion_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETION_IN_PROGRESS"}))
    SourceApiAssociationStatus.add_member(:deletion_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_FAILED', traits: {"smithy.api#enumValue" => "DELETION_FAILED"}))
    SourceApiAssociationSummary.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID generated by the AppSync service for the source API association.</p>"}))
    SourceApiAssociationSummary.add_member(:association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source API association.</p>"}))
    SourceApiAssociationSummary.add_member(:source_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiId', traits: {"smithy.api#documentation" => "<p>The ID of the AppSync source API.</p>"}))
    SourceApiAssociationSummary.add_member(:source_api_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AppSync Source API.</p>"}))
    SourceApiAssociationSummary.add_member(:merged_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiId', traits: {"smithy.api#documentation" => "<p>The ID of the AppSync Merged API.</p>"}))
    SourceApiAssociationSummary.add_member(:merged_api_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AppSync Merged API.</p>"}))
    SourceApiAssociationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description field.</p>"}))
    SourceApiAssociationSummary.type = Types::SourceApiAssociationSummary
    SourceApiAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationSummary)
    StartDataSourceIntrospectionRequest.add_member(:rds_data_api_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDataApiConfig, location_name: 'rdsDataApiConfig', traits: {"smithy.api#documentation" => "<p>The <code>rdsDataApiConfig</code> object data.</p>"}))
    StartDataSourceIntrospectionRequest.type = Types::StartDataSourceIntrospectionRequest
    StartDataSourceIntrospectionResponse.add_member(:introspection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionId', traits: {"smithy.api#documentation" => "<p>The introspection ID. Each introspection contains a unique ID that can be used to\n         reference the instrospection record.</p>"}))
    StartDataSourceIntrospectionResponse.add_member(:introspection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionStatus, location_name: 'introspectionStatus', traits: {"smithy.api#documentation" => "<p>The status of the introspection during creation. By default, when a new instrospection\n         has been created, the status will be set to <code>PROCESSING</code>. Once the operation has\n         been completed, the status will change to <code>SUCCESS</code> or <code>FAILED</code>\n         depending on how the data was parsed. A <code>FAILED</code> operation will return an error\n         and its details as an <code>introspectionStatusDetail</code>.</p>"}))
    StartDataSourceIntrospectionResponse.add_member(:introspection_status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionStatusDetail', traits: {"smithy.api#documentation" => "<p>The error detail field. When a <code>FAILED</code>\n            <code>introspectionStatus</code> is returned, the <code>introspectionStatusDetail</code>\n         will also return the exact error that was generated during the operation.</p>"}))
    StartDataSourceIntrospectionResponse.type = Types::StartDataSourceIntrospectionResponse
    StartSchemaCreationRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaCreationRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The schema definition, in GraphQL schema language format.</p>", "smithy.api#required" => {}}))
    StartSchemaCreationRequest.type = Types::StartSchemaCreationRequest
    StartSchemaCreationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When\n         the schema is in the ACTIVE state, you can add data.</p>"}))
    StartSchemaCreationResponse.type = Types::StartSchemaCreationResponse
    StartSchemaMergeRequest.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID generated by the AppSync service for the source API association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaMergeRequest.add_member(:merged_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In\n         most cases, Merged APIs (especially in your account) only require the API ID value or ARN\n         of the merged API. However, Merged APIs in other accounts (cross-account use cases)\n         strictly require the full resource ARN of the merged API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaMergeRequest.type = Types::StartSchemaMergeRequest
    StartSchemaMergeResponse.add_member(:source_api_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: 'sourceApiAssociationStatus', traits: {"smithy.api#documentation" => "<p>The state of the source API association.</p>"}))
    StartSchemaMergeResponse.type = Types::StartSchemaMergeResponse
    SyncConfig.add_member(:conflict_handler, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictHandlerType, location_name: 'conflictHandler', traits: {"smithy.api#documentation" => "<p>The Conflict Resolution strategy to perform in the event of a conflict.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>OPTIMISTIC_CONCURRENCY</b>: Resolve conflicts by\n               rejecting mutations when versions don't match the latest version at the\n               server.</p>\n            </li>\n            <li>\n               <p>\n                  <b>AUTOMERGE</b>: Resolve conflicts with the\n               Automerge conflict resolution strategy.</p>\n            </li>\n            <li>\n               <p>\n                  <b>LAMBDA</b>: Resolve conflicts with an Lambda function supplied in the\n               <code>LambdaConflictHandlerConfig</code>.</p>\n            </li>\n         </ul>"}))
    SyncConfig.add_member(:conflict_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetectionType, location_name: 'conflictDetection', traits: {"smithy.api#documentation" => "<p>The Conflict Detection strategy to use.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>VERSION</b>: Detect conflicts based on object\n               versions for this resolver.</p>\n            </li>\n            <li>\n               <p>\n                  <b>NONE</b>: Do not detect conflicts when invoking\n               this resolver.</p>\n            </li>\n         </ul>"}))
    SyncConfig.add_member(:lambda_conflict_handler_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConflictHandlerConfig, location_name: 'lambdaConflictHandlerConfig', traits: {"smithy.api#documentation" => "<p>The <code>LambdaConflictHandlerConfig</code> when configuring <code>LAMBDA</code> as the\n         Conflict Handler.</p>"}))
    SyncConfig.type = Types::SyncConfig
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A <code>TagMap</code> object.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Type.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The type name.</p>"}))
    Type.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The type description.</p>"}))
    Type.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The type Amazon Resource Name (ARN).</p>"}))
    Type.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The type definition.</p>"}))
    Type.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The type format: SDL or JSON.</p>"}))
    Type.type = Types::Type
    TypeDefinitionFormat.add_member(:sdl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SDL', traits: {"smithy.api#enumValue" => "SDL"}))
    TypeDefinitionFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    TypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Type)
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of <code>TagKey</code> objects.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApiCacheRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The GraphQL API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ttl', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>TTL in seconds for cache entries.</p>\n         <p>Valid values are 1–3,600 seconds.</p>", "smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:api_caching_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCachingBehavior, location_name: 'apiCachingBehavior', traits: {"smithy.api#documentation" => "<p>Caching behavior.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>FULL_REQUEST_CACHING</b>: All requests from the\n               same user are cached. Individual resolvers are automatically cached. All API calls\n               will try to return responses from the cache.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PER_RESOLVER_CACHING</b>: Individual resolvers\n               that you specify are cached.</p>\n            </li>\n            <li>\n               <p>\n                  <b>OPERATION_LEVEL_CACHING</b>: Full requests are cached together and returned without executing resolvers.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCacheType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The cache instance type. Valid values are </p>\n         <ul>\n            <li>\n               <p>\n                  <code>SMALL</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MEDIUM</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>XLARGE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_2X</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_4X</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_8X</code> (not available in all regions)</p>\n            </li>\n            <li>\n               <p>\n                  <code>LARGE_12X</code>\n               </p>\n            </li>\n         </ul>\n         <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>\n         <p>The following legacy instance types are available, but their use is discouraged:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>T2_SMALL</b>: A t2.small instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>T2_MEDIUM</b>: A t2.medium instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_LARGE</b>: A r4.large instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>\n            </li>\n            <li>\n               <p>\n                  <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:health_metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: 'healthMetricsConfig', traits: {"smithy.api#documentation" => "<p>Controls how cache health metrics will be emitted to CloudWatch. Cache health metrics\n         include:</p>\n         <ul>\n            <li>\n               <p>NetworkBandwidthOutAllowanceExceeded: The network packets dropped because the\n               throughput exceeded the aggregated bandwidth limit. This is useful for diagnosing\n               bottlenecks in a cache configuration.</p>\n            </li>\n            <li>\n               <p>EngineCPUUtilization: The CPU utilization (percentage) allocated to the Redis\n               process. This is useful for diagnosing bottlenecks in a cache\n               configuration.</p>\n            </li>\n         </ul>\n         <p>Metrics will be recorded by API ID. You can set the value to <code>ENABLED</code> or\n            <code>DISABLED</code>.</p>"}))
    UpdateApiCacheRequest.type = Types::UpdateApiCacheRequest
    UpdateApiCacheResponse.add_member(:api_cache, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCache, location_name: 'apiCache', traits: {"smithy.api#documentation" => "<p>The <code>ApiCache</code> object.</p>"}))
    UpdateApiCacheResponse.type = Types::UpdateApiCacheResponse
    UpdateApiKeyRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The ID for the GraphQL API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The API key ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the purpose of the API key.</p>"}))
    UpdateApiKeyRequest.add_member(:expires, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'expires', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>From the update time, the time after which the API key expires. The date is represented\n         as seconds since the epoch. For more information, see .</p>"}))
    UpdateApiKeyRequest.type = Types::UpdateApiKeyRequest
    UpdateApiKeyResponse.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'apiKey', traits: {"smithy.api#documentation" => "<p>The API key.</p>"}))
    UpdateApiKeyResponse.type = Types::UpdateApiKeyResponse
    UpdateApiRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Api.</p>", "smithy.api#required" => {}}))
    UpdateApiRequest.add_member(:owner_contact, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact', traits: {"smithy.api#documentation" => "<p>The owner contact information for the <code>Api</code>.</p>"}))
    UpdateApiRequest.add_member(:event_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventConfig, location_name: 'eventConfig', traits: {"smithy.api#documentation" => "<p>The new event configuration. This includes the default authorization configuration for\n         connecting, publishing, and subscribing to an Event API.</p>"}))
    UpdateApiRequest.type = Types::UpdateApiRequest
    UpdateApiResponse.add_member(:api, Smithy::Schema::Shapes::ShapeRef.new(shape: Api, location_name: 'api', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> object.</p>"}))
    UpdateApiResponse.type = Types::UpdateApiResponse
    UpdateChannelNamespaceRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The <code>Api</code> ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelNamespaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>ChannelNamespace</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelNamespaceRequest.add_member(:subscribe_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'subscribeAuthModes', traits: {"smithy.api#documentation" => "<p>The authorization mode to use for subscribing to messages on the channel namespace. This\n         configuration overrides the default <code>Api</code> authorization configuration.</p>"}))
    UpdateChannelNamespaceRequest.add_member(:publish_auth_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'publishAuthModes', traits: {"smithy.api#documentation" => "<p>The authorization mode to use for publishing messages on the channel namespace. This\n         configuration overrides the default <code>Api</code> authorization configuration.</p>"}))
    UpdateChannelNamespaceRequest.add_member(:code_handlers, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'codeHandlers', traits: {"smithy.api#documentation" => "<p>The event handler functions that run custom business logic to process published events\n         and subscribe requests.</p>"}))
    UpdateChannelNamespaceRequest.add_member(:handler_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfigs, location_name: 'handlerConfigs', traits: {"smithy.api#documentation" => "<p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>"}))
    UpdateChannelNamespaceRequest.type = Types::UpdateChannelNamespaceRequest
    UpdateChannelNamespaceResponse.add_member(:channel_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: 'channelNamespace', traits: {"smithy.api#documentation" => "<p>The <code>ChannelNamespace</code> object.</p>"}))
    UpdateChannelNamespaceResponse.type = Types::UpdateChannelNamespaceResponse
    UpdateDataSourceRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The new name for the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The new description for the data source.</p>"}))
    UpdateDataSourceRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The new data source type.</p>", "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRoleArn', traits: {"smithy.api#documentation" => "<p>The new service role Amazon Resource Name (ARN) for the data source.</p>"}))
    UpdateDataSourceRequest.add_member(:dynamodb_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: 'dynamodbConfig', traits: {"smithy.api#documentation" => "<p>The new Amazon DynamoDB configuration.</p>"}))
    UpdateDataSourceRequest.add_member(:lambda_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: 'lambdaConfig', traits: {"smithy.api#documentation" => "<p>The new Lambda configuration.</p>"}))
    UpdateDataSourceRequest.add_member(:elasticsearch_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: 'elasticsearchConfig', traits: {"smithy.api#documentation" => "<p>The new OpenSearch configuration.</p>\n         <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This\n         configuration is deprecated. Instead, use <a>UpdateDataSourceRequest$openSearchServiceConfig</a> to update an OpenSearch data source.</p>"}))
    UpdateDataSourceRequest.add_member(:open_search_service_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: 'openSearchServiceConfig', traits: {"smithy.api#documentation" => "<p>The new OpenSearch configuration.</p>"}))
    UpdateDataSourceRequest.add_member(:http_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: 'httpConfig', traits: {"smithy.api#documentation" => "<p>The new HTTP endpoint configuration.</p>"}))
    UpdateDataSourceRequest.add_member(:relational_database_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: 'relationalDatabaseConfig', traits: {"smithy.api#documentation" => "<p>The new relational database configuration.</p>"}))
    UpdateDataSourceRequest.add_member(:event_bridge_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: 'eventBridgeConfig', traits: {"smithy.api#documentation" => "<p>The new Amazon EventBridge settings.</p>"}))
    UpdateDataSourceRequest.add_member(:metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: 'metricsConfig', traits: {"smithy.api#documentation" => "<p>Enables or disables enhanced data source metrics for specified data sources. Note that\n            <code>metricsConfig</code> won't be used unless the\n            <code>dataSourceLevelMetricsBehavior</code> value is set to\n            <code>PER_DATA_SOURCE_METRICS</code>. If the <code>dataSourceLevelMetricsBehavior</code>\n         is set to <code>FULL_REQUEST_DATA_SOURCE_METRICS</code> instead, <code>metricsConfig</code>\n         will be ignored. However, you can still set its value.</p>\n         <p>\n            <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>"}))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateDataSourceResponse.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>The updated <code>DataSource</code> object.</p>"}))
    UpdateDataSourceResponse.type = Types::UpdateDataSourceResponse
    UpdateDomainNameRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainNameRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the <code>DomainName</code>.</p>"}))
    UpdateDomainNameRequest.type = Types::UpdateDomainNameRequest
    UpdateDomainNameResponse.add_member(:domain_name_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: 'domainNameConfig', traits: {"smithy.api#documentation" => "<p>The configuration for the <code>DomainName</code>.</p>"}))
    UpdateDomainNameResponse.type = Types::UpdateDomainNameResponse
    UpdateFunctionRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The GraphQL API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> name.</p>", "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> description.</p>"}))
    UpdateFunctionRequest.add_member(:function_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'functionId', traits: {"smithy.api#documentation" => "<p>The function ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName', traits: {"smithy.api#documentation" => "<p>The <code>Function</code>\n            <code>DataSource</code> name.</p>", "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:request_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> request mapping template. Functions support only the\n         2018-05-29 version of the request mapping template.</p>"}))
    UpdateFunctionRequest.add_member(:response_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> request mapping template.</p>"}))
    UpdateFunctionRequest.add_member(:function_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionVersion', traits: {"smithy.api#documentation" => "<p>The <code>version</code> of the request mapping template. Currently, the supported value\n         is 2018-05-29. Note that when using VTL and mapping templates, the\n            <code>functionVersion</code> is required.</p>"}))
    UpdateFunctionRequest.add_member(:sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    UpdateFunctionRequest.add_member(:max_batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum batching size for a resolver.</p>"}))
    UpdateFunctionRequest.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    UpdateFunctionRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The <code>function</code> code that contains the request and response functions. When\n         code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be\n            <code>APPSYNC_JS</code>.</p>"}))
    UpdateFunctionRequest.type = Types::UpdateFunctionRequest
    UpdateFunctionResponse.add_member(:function_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: 'functionConfiguration', traits: {"smithy.api#documentation" => "<p>The <code>Function</code> object.</p>"}))
    UpdateFunctionResponse.type = Types::UpdateFunctionResponse
    UpdateGraphqlApiRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The new name for the <code>GraphqlApi</code> object.</p>", "smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'logConfig', traits: {"smithy.api#documentation" => "<p>The Amazon CloudWatch Logs configuration for the <code>GraphqlApi</code> object.</p>"}))
    UpdateGraphqlApiRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The new authentication type for the <code>GraphqlApi</code> object.</p>", "smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:user_pool_config, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: 'userPoolConfig', traits: {"smithy.api#documentation" => "<p>The new Amazon Cognito user pool configuration for the <code>~GraphqlApi</code>\n         object.</p>"}))
    UpdateGraphqlApiRequest.add_member(:open_id_connect_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig', traits: {"smithy.api#documentation" => "<p>The OpenID Connect configuration for the <code>GraphqlApi</code> object.</p>"}))
    UpdateGraphqlApiRequest.add_member(:additional_authentication_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: 'additionalAuthenticationProviders', traits: {"smithy.api#documentation" => "<p>A list of additional authentication providers for the <code>GraphqlApi</code>\n         API.</p>"}))
    UpdateGraphqlApiRequest.add_member(:xray_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'xrayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A flag indicating whether to use X-Ray tracing for the\n            <code>GraphqlApi</code>.</p>"}))
    UpdateGraphqlApiRequest.add_member(:lambda_authorizer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig', traits: {"smithy.api#documentation" => "<p>Configuration for Lambda function authorization.</p>"}))
    UpdateGraphqlApiRequest.add_member(:merged_api_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The Identity and Access Management service role ARN for a merged API. The AppSync\n         service assumes this role on behalf of the Merged API to validate access to source APIs at\n         runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with\n         the source API changes automatically.</p>"}))
    UpdateGraphqlApiRequest.add_member(:owner_contact, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact', traits: {"smithy.api#documentation" => "<p>The owner contact information for an API resource.</p>\n         <p>This field accepts any string input with a length of 0 - 256 characters.</p>"}))
    UpdateGraphqlApiRequest.add_member(:introspection_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: 'introspectionConfig', traits: {"smithy.api#documentation" => "<p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable\n            (<code>DISABLED</code>) introspection. If no value is provided, the introspection\n         configuration will be set to <code>ENABLED</code> by default. This field will produce an\n         error if the operation attempts to use the introspection feature while this field is\n         disabled.</p>\n         <p>For more information about introspection, see <a href=\"https://graphql.org/learn/introspection/\">GraphQL introspection</a>.</p>"}))
    UpdateGraphqlApiRequest.add_member(:query_depth_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: 'queryDepthLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum depth a query can have in a single request. Depth refers to the amount of\n         nested levels allowed in the body of query. The default value is <code>0</code> (or\n         unspecified), which indicates there's no depth limit. If you set a limit, it can be between\n            <code>1</code> and <code>75</code> nested levels. This field will produce a limit error\n         if the operation falls out of bounds.</p>\n         <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field\n         produces an error, the error will be thrown upwards to the first nullable field\n         available.</p>"}))
    UpdateGraphqlApiRequest.add_member(:resolver_count_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: 'resolverCountLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of resolvers that can be invoked in a single request. The default\n         value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>.\n         When specified, the limit value can be between <code>1</code> and <code>10000</code>. This\n         field will produce a limit error if the operation falls out of bounds.</p>"}))
    UpdateGraphqlApiRequest.add_member(:enhanced_metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: 'enhancedMetricsConfig', traits: {"smithy.api#documentation" => "<p>The <code>enhancedMetricsConfig</code> object.</p>"}))
    UpdateGraphqlApiRequest.type = Types::UpdateGraphqlApiRequest
    UpdateGraphqlApiResponse.add_member(:graphql_api, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApi, location_name: 'graphqlApi', traits: {"smithy.api#documentation" => "<p>The updated <code>GraphqlApi</code> object.</p>"}))
    UpdateGraphqlApiResponse.type = Types::UpdateGraphqlApiResponse
    UpdateResolverRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The new type name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The new field name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName', traits: {"smithy.api#documentation" => "<p>The new data source name.</p>"}))
    UpdateResolverRequest.add_member(:request_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate', traits: {"smithy.api#documentation" => "<p>The new request mapping template.</p>\n         <p>A resolver uses a request mapping template to convert a GraphQL expression into a format\n         that a data source can understand. Mapping templates are written in Apache Velocity\n         Template Language (VTL).</p>\n         <p>VTL request mapping templates are optional when using an Lambda data\n         source. For all other data sources, VTL request and response mapping templates are\n         required.</p>"}))
    UpdateResolverRequest.add_member(:response_mapping_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate', traits: {"smithy.api#documentation" => "<p>The new response mapping template.</p>"}))
    UpdateResolverRequest.add_member(:kind, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverKind, location_name: 'kind', traits: {"smithy.api#documentation" => "<p>The resolver type.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is\n               the default resolver type. You can use a UNIT resolver to run a GraphQL query against\n               a single data source.</p>\n            </li>\n            <li>\n               <p>\n                  <b>PIPELINE</b>: A PIPELINE resolver type. You can\n               use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a\n               serial manner. You can use a pipeline resolver to run a GraphQL query against\n               multiple data sources.</p>\n            </li>\n         </ul>"}))
    UpdateResolverRequest.add_member(:pipeline_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfig, location_name: 'pipelineConfig', traits: {"smithy.api#documentation" => "<p>The <code>PipelineConfig</code>.</p>"}))
    UpdateResolverRequest.add_member(:sync_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig', traits: {"smithy.api#documentation" => "<p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>"}))
    UpdateResolverRequest.add_member(:caching_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachingConfig, location_name: 'cachingConfig', traits: {"smithy.api#documentation" => "<p>The caching configuration for the resolver.</p>"}))
    UpdateResolverRequest.add_member(:max_batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum batching size for a resolver.</p>"}))
    UpdateResolverRequest.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    UpdateResolverRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The <code>resolver</code> code that contains the request and response functions. When\n         code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be\n            <code>APPSYNC_JS</code>.</p>"}))
    UpdateResolverRequest.add_member(:metrics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: 'metricsConfig', traits: {"smithy.api#documentation" => "<p>Enables or disables enhanced resolver metrics for specified resolvers. Note that\n            <code>metricsConfig</code> won't be used unless the\n            <code>resolverLevelMetricsBehavior</code> value is set to\n            <code>PER_RESOLVER_METRICS</code>. If the <code>resolverLevelMetricsBehavior</code> is\n         set to <code>FULL_REQUEST_RESOLVER_METRICS</code> instead, <code>metricsConfig</code> will\n         be ignored. However, you can still set its value.</p>\n         <p>\n            <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>"}))
    UpdateResolverRequest.type = Types::UpdateResolverRequest
    UpdateResolverResponse.add_member(:resolver, Smithy::Schema::Shapes::ShapeRef.new(shape: Resolver, location_name: 'resolver', traits: {"smithy.api#documentation" => "<p>The updated <code>Resolver</code> object.</p>"}))
    UpdateResolverResponse.type = Types::UpdateResolverResponse
    UpdateSourceApiAssociationRequest.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID generated by the AppSync service for the source API association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSourceApiAssociationRequest.add_member(:merged_api_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In\n         most cases, Merged APIs (especially in your account) only require the API ID value or ARN\n         of the merged API. However, Merged APIs in other accounts (cross-account use cases)\n         strictly require the full resource ARN of the merged API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSourceApiAssociationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description field.</p>"}))
    UpdateSourceApiAssociationRequest.add_member(:source_api_association_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: 'sourceApiAssociationConfig', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociationConfig</code> object data.</p>"}))
    UpdateSourceApiAssociationRequest.type = Types::UpdateSourceApiAssociationRequest
    UpdateSourceApiAssociationResponse.add_member(:source_api_association, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: 'sourceApiAssociation', traits: {"smithy.api#documentation" => "<p>The <code>SourceApiAssociation</code> object data.</p>"}))
    UpdateSourceApiAssociationResponse.type = Types::UpdateSourceApiAssociationResponse
    UpdateTypeRequest.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTypeRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The new type name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTypeRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The new definition.</p>"}))
    UpdateTypeRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The new type format: SDL or JSON.</p>", "smithy.api#required" => {}}))
    UpdateTypeRequest.type = Types::UpdateTypeRequest
    UpdateTypeResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The updated <code>Type</code> object.</p>"}))
    UpdateTypeResponse.type = Types::UpdateTypeResponse
    UserPoolConfig.add_member(:user_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userPoolId', traits: {"smithy.api#documentation" => "<p>The user pool ID.</p>", "smithy.api#required" => {}}))
    UserPoolConfig.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the user pool was created.</p>", "smithy.api#required" => {}}))
    UserPoolConfig.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultAction, location_name: 'defaultAction', traits: {"smithy.api#documentation" => "<p>The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool\n         configuration.</p>", "smithy.api#required" => {}}))
    UserPoolConfig.add_member(:app_id_client_regex, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'appIdClientRegex', traits: {"smithy.api#documentation" => "<p>A regular expression for validating the incoming Amazon Cognito user pool app client\n         ID. If this value isn't set, no filtering is applied.</p>"}))
    UserPoolConfig.type = Types::UserPoolConfig

    AWSDeepdishControlPlaneService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appsync#AWSDeepdishControlPlaneService"
      service.name = "AWSDeepdishControlPlaneService"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "AppSync", "arnNamespace" => "appsync", "cloudFormationName" => "AppSync", "cloudTrailEventSource" => "appsync.amazonaws.com", "endpointPrefix" => "appsync"}, "aws.auth#sigv4" => {"name" => "appsync"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS AppSync", "smithy.api#xmlNamespace" => {"uri" => "http://appsync.amazonaws.com"}}
      service.add_operation(:associate_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateApi"
        operation.name = "AssociateApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:associate_merged_graphql_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateMergedGraphqlApi"
        operation.name = "AssociateMergedGraphqlApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMergedGraphqlApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMergedGraphqlApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations", "code" => 200}}
      end)
      service.add_operation(:associate_source_graphql_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateSourceGraphqlApi"
        operation.name = "AssociateSourceGraphqlApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceGraphqlApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceGraphqlApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations", "code" => 200}}
      end)
      service.add_operation(:create_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApi"
        operation.name = "CreateApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis", "code" => 200}}
      end)
      service.add_operation(:create_api_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApiCache"
        operation.name = "CreateApiCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiCacheResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:create_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApiKey"
        operation.name = "CreateApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyValidityOutOfBoundsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/apikeys", "code" => 200}}
      end)
      service.add_operation(:create_channel_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateChannelNamespace"
        operation.name = "CreateChannelNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}/channelNamespaces", "code" => 200}}
      end)
      service.add_operation(:create_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateDataSource"
        operation.name = "CreateDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/datasources", "code" => 200}}
      end)
      service.add_operation(:create_domain_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateDomainName"
        operation.name = "CreateDomainName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainNameResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames", "code" => 200}}
      end)
      service.add_operation(:create_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateFunction"
        operation.name = "CreateFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/functions", "code" => 200}}
      end)
      service.add_operation(:create_graphql_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateGraphqlApi"
        operation.name = "CreateGraphqlApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphqlApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphqlApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApiLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis", "code" => 200}}
      end)
      service.add_operation(:create_resolver, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateResolver"
        operation.name = "CreateResolver"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers", "code" => 200}}
      end)
      service.add_operation(:create_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateType"
        operation.name = "CreateType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types", "code" => 200}}
      end)
      service.add_operation(:delete_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApi"
        operation.name = "DeleteApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{apiId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_api_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApiCache"
        operation.name = "DeleteApiCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiCacheResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:delete_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApiKey"
        operation.name = "DeleteApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/apikeys/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_channel_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteChannelNamespace"
        operation.name = "DeleteChannelNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:delete_domain_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteDomainName"
        operation.name = "DeleteDomainName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainNameResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:delete_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFunctionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:delete_graphql_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteGraphqlApi"
        operation.name = "DeleteGraphqlApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphqlApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphqlApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:delete_resolver, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteResolver"
        operation.name = "DeleteResolver"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:delete_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteType"
        operation.name = "DeleteType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/types/{typeName}", "code" => 200}}
      end)
      service.add_operation(:disassociate_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateApi"
        operation.name = "DisassociateApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:disassociate_merged_graphql_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateMergedGraphqlApi"
        operation.name = "DisassociateMergedGraphqlApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMergedGraphqlApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMergedGraphqlApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_source_graphql_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateSourceGraphqlApi"
        operation.name = "DisassociateSourceGraphqlApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceGraphqlApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceGraphqlApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:evaluate_code, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#EvaluateCode"
        operation.name = "EvaluateCode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateCodeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateCodeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/dataplane-evaluatecode", "code" => 200}}
      end)
      service.add_operation(:evaluate_mapping_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#EvaluateMappingTemplate"
        operation.name = "EvaluateMappingTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateMappingTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateMappingTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/dataplane-evaluatetemplate", "code" => 200}}
      end)
      service.add_operation(:flush_api_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#FlushApiCache"
        operation.name = "FlushApiCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: FlushApiCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: FlushApiCacheResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/FlushCache", "code" => 200}}
      end)
      service.add_operation(:get_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApi"
        operation.name = "GetApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:get_api_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApiAssociation"
        operation.name = "GetApiAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:get_api_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApiCache"
        operation.name = "GetApiCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiCacheResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:get_channel_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetChannelNamespace"
        operation.name = "GetChannelNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}}
      end)
      service.add_operation(:get_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:get_data_source_introspection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDataSourceIntrospection"
        operation.name = "GetDataSourceIntrospection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceIntrospectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceIntrospectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/datasources/introspections/{introspectionId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDomainName"
        operation.name = "GetDomainName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNameResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:get_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetFunction"
        operation.name = "GetFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:get_graphql_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetGraphqlApi"
        operation.name = "GetGraphqlApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphqlApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphqlApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:get_graphql_api_environment_variables, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetGraphqlApiEnvironmentVariables"
        operation.name = "GetGraphqlApiEnvironmentVariables"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphqlApiEnvironmentVariablesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphqlApiEnvironmentVariablesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/environmentVariables", "code" => 200}}
      end)
      service.add_operation(:get_introspection_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetIntrospectionSchema"
        operation.name = "GetIntrospectionSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntrospectionSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntrospectionSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLSchemaException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/schema", "code" => 200}}
      end)
      service.add_operation(:get_resolver, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetResolver"
        operation.name = "GetResolver"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:get_schema_creation_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetSchemaCreationStatus"
        operation.name = "GetSchemaCreationStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaCreationStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaCreationStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/schemacreation", "code" => 200}}
      end)
      service.add_operation(:get_source_api_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetSourceApiAssociation"
        operation.name = "GetSourceApiAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSourceApiAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSourceApiAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:get_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetType"
        operation.name = "GetType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}", "code" => 200}}
      end)
      service.add_operation(:list_api_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListApiKeys"
        operation.name = "ListApiKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiKeysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiKeysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/apikeys", "code" => 200}}
        operation[:paginator] = Paginators::ListApiKeys.new
      end)
      service.add_operation(:list_apis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListApis"
        operation.name = "ListApis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis", "code" => 200}}
        operation[:paginator] = Paginators::ListApis.new
      end)
      service.add_operation(:list_channel_namespaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListChannelNamespaces"
        operation.name = "ListChannelNamespaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelNamespacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelNamespacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}/channelNamespaces", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelNamespaces.new
      end)
      service.add_operation(:list_data_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/datasources", "code" => 200}}
        operation[:paginator] = Paginators::ListDataSources.new
      end)
      service.add_operation(:list_domain_names, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListDomainNames"
        operation.name = "ListDomainNames"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainNames.new
      end)
      service.add_operation(:list_functions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions", "code" => 200}}
        operation[:paginator] = Paginators::ListFunctions.new
      end)
      service.add_operation(:list_graphql_apis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListGraphqlApis"
        operation.name = "ListGraphqlApis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphqlApisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphqlApisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis", "code" => 200}}
        operation[:paginator] = Paginators::ListGraphqlApis.new
      end)
      service.add_operation(:list_resolvers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListResolvers"
        operation.name = "ListResolvers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolversRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolversResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers", "code" => 200}}
        operation[:paginator] = Paginators::ListResolvers.new
      end)
      service.add_operation(:list_resolvers_by_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListResolversByFunction"
        operation.name = "ListResolversByFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolversByFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolversByFunctionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions/{functionId}/resolvers", "code" => 200}}
        operation[:paginator] = Paginators::ListResolversByFunction.new
      end)
      service.add_operation(:list_source_api_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListSourceApiAssociations"
        operation.name = "ListSourceApiAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceApiAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceApiAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/sourceApiAssociations", "code" => 200}}
        operation[:paginator] = Paginators::ListSourceApiAssociations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTypes"
        operation.name = "ListTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types", "code" => 200}}
        operation[:paginator] = Paginators::ListTypes.new
      end)
      service.add_operation(:list_types_by_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTypesByAssociation"
        operation.name = "ListTypesByAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesByAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesByAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/types", "code" => 200}}
        operation[:paginator] = Paginators::ListTypesByAssociation.new
      end)
      service.add_operation(:put_graphql_api_environment_variables, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#PutGraphqlApiEnvironmentVariables"
        operation.name = "PutGraphqlApiEnvironmentVariables"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutGraphqlApiEnvironmentVariablesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutGraphqlApiEnvironmentVariablesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apis/{apiId}/environmentVariables", "code" => 200}}
      end)
      service.add_operation(:start_data_source_introspection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartDataSourceIntrospection"
        operation.name = "StartDataSourceIntrospection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataSourceIntrospectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataSourceIntrospectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/datasources/introspections", "code" => 200}}
      end)
      service.add_operation(:start_schema_creation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartSchemaCreation"
        operation.name = "StartSchemaCreation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaCreationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaCreationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/schemacreation", "code" => 200}}
      end)
      service.add_operation(:start_schema_merge, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartSchemaMerge"
        operation.name = "StartSchemaMerge"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaMergeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaMergeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/merge", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApi"
        operation.name = "UpdateApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:update_api_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApiCache"
        operation.name = "UpdateApiCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiCacheResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/ApiCaches/update", "code" => 200}}
      end)
      service.add_operation(:update_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApiKey"
        operation.name = "UpdateApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyValidityOutOfBoundsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/apikeys/{id}", "code" => 200}}
      end)
      service.add_operation(:update_channel_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateChannelNamespace"
        operation.name = "UpdateChannelNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}}
      end)
      service.add_operation(:update_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:update_domain_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateDomainName"
        operation.name = "UpdateDomainName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainNameResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:update_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateFunction"
        operation.name = "UpdateFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFunctionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:update_graphql_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateGraphqlApi"
        operation.name = "UpdateGraphqlApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGraphqlApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGraphqlApiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:update_resolver, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateResolver"
        operation.name = "UpdateResolver"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:update_source_api_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateSourceApiAssociation"
        operation.name = "UpdateSourceApiAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceApiAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceApiAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:update_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateType"
        operation.name = "UpdateType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types/{typeName}", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
