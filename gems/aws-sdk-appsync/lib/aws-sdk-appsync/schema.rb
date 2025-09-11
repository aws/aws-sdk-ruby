# frozen_string_literal: true

# This is generated code!

module Aws::AppSync
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AdditionalAuthenticationProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AdditionalAuthenticationProvider', name: 'AdditionalAuthenticationProvider')
    AdditionalAuthenticationProviders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#AdditionalAuthenticationProviders', name: 'AdditionalAuthenticationProviders')
    Api = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#Api', name: 'Api')
    ApiAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiAssociation', name: 'ApiAssociation')
    ApiCache = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiCache', name: 'ApiCache')
    ApiCacheStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ApiCacheStatus', name: 'ApiCacheStatus')
    ApiCacheType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ApiCacheType', name: 'ApiCacheType')
    ApiCachingBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ApiCachingBehavior', name: 'ApiCachingBehavior')
    ApiKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiKey', name: 'ApiKey')
    ApiKeyLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiKeyLimitExceededException', name: 'ApiKeyLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiKeyValidityOutOfBoundsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiKeyValidityOutOfBoundsException', name: 'ApiKeyValidityOutOfBoundsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#ApiKeys', name: 'ApiKeys')
    ApiLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ApiLimitExceededException', name: 'ApiLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#ApiName', name: 'ApiName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-\\ ]+$"})
    Apis = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#Apis', name: 'Apis')
    AppSyncRuntime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AppSyncRuntime', name: 'AppSyncRuntime')
    AssociateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateApiRequest', name: 'AssociateApiRequest')
    AssociateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateApiResponse', name: 'AssociateApiResponse')
    AssociateMergedGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateMergedGraphqlApiRequest', name: 'AssociateMergedGraphqlApiRequest')
    AssociateMergedGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateMergedGraphqlApiResponse', name: 'AssociateMergedGraphqlApiResponse')
    AssociateSourceGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateSourceGraphqlApiRequest', name: 'AssociateSourceGraphqlApiRequest')
    AssociateSourceGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AssociateSourceGraphqlApiResponse', name: 'AssociateSourceGraphqlApiResponse')
    AssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#AssociationStatus', name: 'AssociationStatus')
    AuthMode = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AuthMode', name: 'AuthMode')
    AuthModes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#AuthModes', name: 'AuthModes')
    AuthProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AuthProvider', name: 'AuthProvider')
    AuthProviders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#AuthProviders', name: 'AuthProviders')
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#AuthenticationType', name: 'AuthenticationType')
    AuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AuthorizationConfig', name: 'AuthorizationConfig')
    AuthorizationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#AuthorizationType', name: 'AuthorizationType')
    AwsIamConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#AwsIamConfig', name: 'AwsIamConfig')
    BadRequestDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#BadRequestDetail', name: 'BadRequestDetail')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BadRequestReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#BadRequestReason', name: 'BadRequestReason')
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.appsync#Blob', name: 'Blob')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.appsync#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BooleanValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.appsync#BooleanValue', name: 'BooleanValue')
    CacheHealthMetricsConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#CacheHealthMetricsConfig', name: 'CacheHealthMetricsConfig')
    CachingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CachingConfig', name: 'CachingConfig')
    CachingKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#CachingKeys', name: 'CachingKeys')
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#CertificateArn', name: 'CertificateArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:(acm|iam):[a-z0-9-]*:\\d{12}:(certificate|server-certificate)/[0-9A-Za-z_/-]*$"})
    ChannelNamespace = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ChannelNamespace', name: 'ChannelNamespace')
    ChannelNamespaces = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#ChannelNamespaces', name: 'ChannelNamespaces')
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Code', name: 'Code', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CodeError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CodeError', name: 'CodeError')
    CodeErrorColumn = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#CodeErrorColumn', name: 'CodeErrorColumn', traits: {"smithy.api#default" => 0})
    CodeErrorLine = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#CodeErrorLine', name: 'CodeErrorLine', traits: {"smithy.api#default" => 0})
    CodeErrorLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CodeErrorLocation', name: 'CodeErrorLocation')
    CodeErrorSpan = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#CodeErrorSpan', name: 'CodeErrorSpan', traits: {"smithy.api#default" => 0})
    CodeErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#CodeErrors', name: 'CodeErrors')
    CognitoConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CognitoConfig', name: 'CognitoConfig')
    CognitoUserPoolConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CognitoUserPoolConfig', name: 'CognitoUserPoolConfig')
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictDetectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ConflictDetectionType', name: 'ConflictDetectionType')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictHandlerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ConflictHandlerType', name: 'ConflictHandlerType')
    Context = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Context', name: 'Context', traits: {"smithy.api#length" => {"min" => 2, "max" => 28000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CreateApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiCacheRequest', name: 'CreateApiCacheRequest')
    CreateApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiCacheResponse', name: 'CreateApiCacheResponse')
    CreateApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiKeyRequest', name: 'CreateApiKeyRequest')
    CreateApiKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiKeyResponse', name: 'CreateApiKeyResponse')
    CreateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiRequest', name: 'CreateApiRequest')
    CreateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateApiResponse', name: 'CreateApiResponse')
    CreateChannelNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateChannelNamespaceRequest', name: 'CreateChannelNamespaceRequest')
    CreateChannelNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateChannelNamespaceResponse', name: 'CreateChannelNamespaceResponse')
    CreateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateDataSourceRequest', name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateDataSourceResponse', name: 'CreateDataSourceResponse')
    CreateDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateDomainNameRequest', name: 'CreateDomainNameRequest')
    CreateDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateDomainNameResponse', name: 'CreateDomainNameResponse')
    CreateFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateFunctionRequest', name: 'CreateFunctionRequest')
    CreateFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateFunctionResponse', name: 'CreateFunctionResponse')
    CreateGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateGraphqlApiRequest', name: 'CreateGraphqlApiRequest')
    CreateGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateGraphqlApiResponse', name: 'CreateGraphqlApiResponse')
    CreateResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateResolverRequest', name: 'CreateResolverRequest')
    CreateResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateResolverResponse', name: 'CreateResolverResponse')
    CreateTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateTypeRequest', name: 'CreateTypeRequest')
    CreateTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#CreateTypeResponse', name: 'CreateTypeResponse')
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSource', name: 'DataSource')
    DataSourceIntrospectionModel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModel', name: 'DataSourceIntrospectionModel')
    DataSourceIntrospectionModelField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelField', name: 'DataSourceIntrospectionModelField')
    DataSourceIntrospectionModelFieldType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelFieldType', name: 'DataSourceIntrospectionModelFieldType')
    DataSourceIntrospectionModelFieldTypeValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelFieldTypeValues', name: 'DataSourceIntrospectionModelFieldTypeValues')
    DataSourceIntrospectionModelFields = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelFields', name: 'DataSourceIntrospectionModelFields')
    DataSourceIntrospectionModelIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelIndex', name: 'DataSourceIntrospectionModelIndex')
    DataSourceIntrospectionModelIndexFields = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelIndexFields', name: 'DataSourceIntrospectionModelIndexFields')
    DataSourceIntrospectionModelIndexes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModelIndexes', name: 'DataSourceIntrospectionModelIndexes')
    DataSourceIntrospectionModels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionModels', name: 'DataSourceIntrospectionModels')
    DataSourceIntrospectionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionResult', name: 'DataSourceIntrospectionResult')
    DataSourceIntrospectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DataSourceIntrospectionStatus', name: 'DataSourceIntrospectionStatus')
    DataSourceLevelMetricsBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DataSourceLevelMetricsBehavior', name: 'DataSourceLevelMetricsBehavior')
    DataSourceLevelMetricsConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DataSourceLevelMetricsConfig', name: 'DataSourceLevelMetricsConfig')
    DataSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DataSourceType', name: 'DataSourceType')
    DataSources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DataSources', name: 'DataSources')
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.appsync#Date', name: 'Date')
    DefaultAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#DefaultAction', name: 'DefaultAction')
    DeleteApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiCacheRequest', name: 'DeleteApiCacheRequest')
    DeleteApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiCacheResponse', name: 'DeleteApiCacheResponse')
    DeleteApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiKeyRequest', name: 'DeleteApiKeyRequest')
    DeleteApiKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiKeyResponse', name: 'DeleteApiKeyResponse')
    DeleteApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiRequest', name: 'DeleteApiRequest')
    DeleteApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteApiResponse', name: 'DeleteApiResponse')
    DeleteChannelNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteChannelNamespaceRequest', name: 'DeleteChannelNamespaceRequest')
    DeleteChannelNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteChannelNamespaceResponse', name: 'DeleteChannelNamespaceResponse')
    DeleteDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteDataSourceRequest', name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteDataSourceResponse', name: 'DeleteDataSourceResponse')
    DeleteDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteDomainNameRequest', name: 'DeleteDomainNameRequest')
    DeleteDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteDomainNameResponse', name: 'DeleteDomainNameResponse')
    DeleteFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteFunctionRequest', name: 'DeleteFunctionRequest')
    DeleteFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteFunctionResponse', name: 'DeleteFunctionResponse')
    DeleteGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteGraphqlApiRequest', name: 'DeleteGraphqlApiRequest')
    DeleteGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteGraphqlApiResponse', name: 'DeleteGraphqlApiResponse')
    DeleteResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteResolverRequest', name: 'DeleteResolverRequest')
    DeleteResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteResolverResponse', name: 'DeleteResolverResponse')
    DeleteTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteTypeRequest', name: 'DeleteTypeRequest')
    DeleteTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeleteTypeResponse', name: 'DeleteTypeResponse')
    DeltaSyncConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DeltaSyncConfig', name: 'DeltaSyncConfig')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    DisassociateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateApiRequest', name: 'DisassociateApiRequest')
    DisassociateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateApiResponse', name: 'DisassociateApiResponse')
    DisassociateMergedGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateMergedGraphqlApiRequest', name: 'DisassociateMergedGraphqlApiRequest')
    DisassociateMergedGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateMergedGraphqlApiResponse', name: 'DisassociateMergedGraphqlApiResponse')
    DisassociateSourceGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateSourceGraphqlApiRequest', name: 'DisassociateSourceGraphqlApiRequest')
    DisassociateSourceGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DisassociateSourceGraphqlApiResponse', name: 'DisassociateSourceGraphqlApiResponse')
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(\\*[\\w\\d-]*\\.)?([\\w\\d-]+\\.)+[\\w\\d-]+$"})
    DomainNameConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DomainNameConfig', name: 'DomainNameConfig')
    DomainNameConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#DomainNameConfigs', name: 'DomainNameConfigs')
    DynamodbDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#DynamodbDataSourceConfig', name: 'DynamodbDataSourceConfig')
    ElasticsearchDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ElasticsearchDataSourceConfig', name: 'ElasticsearchDataSourceConfig')
    EnhancedMetricsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EnhancedMetricsConfig', name: 'EnhancedMetricsConfig')
    EnvironmentVariableKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#EnvironmentVariableKey', name: 'EnvironmentVariableKey', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+\\w*$"})
    EnvironmentVariableMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appsync#EnvironmentVariableMap', name: 'EnvironmentVariableMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#EnvironmentVariableValue', name: 'EnvironmentVariableValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ErrorDetail', name: 'ErrorDetail')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#ErrorMessage', name: 'ErrorMessage')
    EvaluateCodeErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateCodeErrorDetail', name: 'EvaluateCodeErrorDetail')
    EvaluateCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateCodeRequest', name: 'EvaluateCodeRequest')
    EvaluateCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateCodeResponse', name: 'EvaluateCodeResponse')
    EvaluateMappingTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateMappingTemplateRequest', name: 'EvaluateMappingTemplateRequest')
    EvaluateMappingTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EvaluateMappingTemplateResponse', name: 'EvaluateMappingTemplateResponse')
    EvaluationResult = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#EvaluationResult', name: 'EvaluationResult', traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    EventBridgeDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EventBridgeDataSourceConfig', name: 'EventBridgeDataSourceConfig')
    EventConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EventConfig', name: 'EventConfig')
    EventLogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#EventLogConfig', name: 'EventLogConfig')
    EventLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#EventLogLevel', name: 'EventLogLevel')
    FieldLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#FieldLogLevel', name: 'FieldLogLevel')
    FlushApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#FlushApiCacheRequest', name: 'FlushApiCacheRequest')
    FlushApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#FlushApiCacheResponse', name: 'FlushApiCacheResponse')
    FunctionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#FunctionConfiguration', name: 'FunctionConfiguration')
    Functions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#Functions', name: 'Functions')
    FunctionsIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#FunctionsIds', name: 'FunctionsIds')
    GetApiAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiAssociationRequest', name: 'GetApiAssociationRequest')
    GetApiAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiAssociationResponse', name: 'GetApiAssociationResponse')
    GetApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiCacheRequest', name: 'GetApiCacheRequest')
    GetApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiCacheResponse', name: 'GetApiCacheResponse')
    GetApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiRequest', name: 'GetApiRequest')
    GetApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetApiResponse', name: 'GetApiResponse')
    GetChannelNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetChannelNamespaceRequest', name: 'GetChannelNamespaceRequest')
    GetChannelNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetChannelNamespaceResponse', name: 'GetChannelNamespaceResponse')
    GetDataSourceIntrospectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDataSourceIntrospectionRequest', name: 'GetDataSourceIntrospectionRequest')
    GetDataSourceIntrospectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDataSourceIntrospectionResponse', name: 'GetDataSourceIntrospectionResponse')
    GetDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDataSourceRequest', name: 'GetDataSourceRequest')
    GetDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDataSourceResponse', name: 'GetDataSourceResponse')
    GetDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDomainNameRequest', name: 'GetDomainNameRequest')
    GetDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetDomainNameResponse', name: 'GetDomainNameResponse')
    GetFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetFunctionRequest', name: 'GetFunctionRequest')
    GetFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetFunctionResponse', name: 'GetFunctionResponse')
    GetGraphqlApiEnvironmentVariablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetGraphqlApiEnvironmentVariablesRequest', name: 'GetGraphqlApiEnvironmentVariablesRequest')
    GetGraphqlApiEnvironmentVariablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetGraphqlApiEnvironmentVariablesResponse', name: 'GetGraphqlApiEnvironmentVariablesResponse')
    GetGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetGraphqlApiRequest', name: 'GetGraphqlApiRequest')
    GetGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetGraphqlApiResponse', name: 'GetGraphqlApiResponse')
    GetIntrospectionSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetIntrospectionSchemaRequest', name: 'GetIntrospectionSchemaRequest')
    GetIntrospectionSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetIntrospectionSchemaResponse', name: 'GetIntrospectionSchemaResponse')
    GetResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetResolverRequest', name: 'GetResolverRequest')
    GetResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetResolverResponse', name: 'GetResolverResponse')
    GetSchemaCreationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetSchemaCreationStatusRequest', name: 'GetSchemaCreationStatusRequest')
    GetSchemaCreationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetSchemaCreationStatusResponse', name: 'GetSchemaCreationStatusResponse')
    GetSourceApiAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetSourceApiAssociationRequest', name: 'GetSourceApiAssociationRequest')
    GetSourceApiAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetSourceApiAssociationResponse', name: 'GetSourceApiAssociationResponse')
    GetTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetTypeRequest', name: 'GetTypeRequest')
    GetTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GetTypeResponse', name: 'GetTypeResponse')
    GraphQLApiIntrospectionConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#GraphQLApiIntrospectionConfig', name: 'GraphQLApiIntrospectionConfig')
    GraphQLApiType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#GraphQLApiType', name: 'GraphQLApiType')
    GraphQLApiVisibility = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#GraphQLApiVisibility', name: 'GraphQLApiVisibility')
    GraphQLSchemaException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GraphQLSchemaException', name: 'GraphQLSchemaException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GraphqlApi = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#GraphqlApi', name: 'GraphqlApi')
    GraphqlApis = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#GraphqlApis', name: 'GraphqlApis')
    HandlerBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#HandlerBehavior', name: 'HandlerBehavior')
    HandlerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#HandlerConfig', name: 'HandlerConfig')
    HandlerConfigs = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#HandlerConfigs', name: 'HandlerConfigs')
    HttpDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#HttpDataSourceConfig', name: 'HttpDataSourceConfig')
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#Integration', name: 'Integration')
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvokeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#InvokeType', name: 'InvokeType')
    LambdaAuthorizerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LambdaAuthorizerConfig', name: 'LambdaAuthorizerConfig')
    LambdaConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LambdaConfig', name: 'LambdaConfig')
    LambdaConflictHandlerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LambdaConflictHandlerConfig', name: 'LambdaConflictHandlerConfig')
    LambdaDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LambdaDataSourceConfig', name: 'LambdaDataSourceConfig')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListApiKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListApiKeysRequest', name: 'ListApiKeysRequest')
    ListApiKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListApiKeysResponse', name: 'ListApiKeysResponse')
    ListApisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListApisRequest', name: 'ListApisRequest')
    ListApisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListApisResponse', name: 'ListApisResponse')
    ListChannelNamespacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListChannelNamespacesRequest', name: 'ListChannelNamespacesRequest')
    ListChannelNamespacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListChannelNamespacesResponse', name: 'ListChannelNamespacesResponse')
    ListDataSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListDataSourcesRequest', name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListDataSourcesResponse', name: 'ListDataSourcesResponse')
    ListDomainNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListDomainNamesRequest', name: 'ListDomainNamesRequest')
    ListDomainNamesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListDomainNamesResponse', name: 'ListDomainNamesResponse')
    ListFunctionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListFunctionsRequest', name: 'ListFunctionsRequest')
    ListFunctionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListFunctionsResponse', name: 'ListFunctionsResponse')
    ListGraphqlApisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListGraphqlApisRequest', name: 'ListGraphqlApisRequest')
    ListGraphqlApisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListGraphqlApisResponse', name: 'ListGraphqlApisResponse')
    ListResolversByFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListResolversByFunctionRequest', name: 'ListResolversByFunctionRequest')
    ListResolversByFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListResolversByFunctionResponse', name: 'ListResolversByFunctionResponse')
    ListResolversRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListResolversRequest', name: 'ListResolversRequest')
    ListResolversResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListResolversResponse', name: 'ListResolversResponse')
    ListSourceApiAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListSourceApiAssociationsRequest', name: 'ListSourceApiAssociationsRequest')
    ListSourceApiAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListSourceApiAssociationsResponse', name: 'ListSourceApiAssociationsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTypesByAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTypesByAssociationRequest', name: 'ListTypesByAssociationRequest')
    ListTypesByAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTypesByAssociationResponse', name: 'ListTypesByAssociationResponse')
    ListTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTypesRequest', name: 'ListTypesRequest')
    ListTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ListTypesResponse', name: 'ListTypesResponse')
    LogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#LogConfig', name: 'LogConfig')
    Logs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#Logs', name: 'Logs')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MapOfStringToString = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appsync#MapOfStringToString', name: 'MapOfStringToString')
    MappingTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#MappingTemplate', name: 'MappingTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^.*$"})
    MaxBatchSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#MaxBatchSize', name: 'MaxBatchSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 25}})
    MergeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#MergeType', name: 'MergeType')
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^([A-Za-z0-9](?:[A-Za-z0-9\\-]{0,48}[A-Za-z0-9])?)$"})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OpenIDConnectConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#OpenIDConnectConfig', name: 'OpenIDConnectConfig')
    OpenSearchServiceDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#OpenSearchServiceDataSourceConfig', name: 'OpenSearchServiceDataSourceConfig')
    OperationLevelMetricsConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#OperationLevelMetricsConfig', name: 'OperationLevelMetricsConfig')
    OutErrors = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#OutErrors', name: 'OutErrors', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    OutputType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#OutputType', name: 'OutputType')
    OwnerContact = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#OwnerContact', name: 'OwnerContact', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-\\ \\.]+$"})
    Ownership = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#Ownership', name: 'Ownership')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[\\S]+$"})
    PipelineConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#PipelineConfig', name: 'PipelineConfig')
    PutGraphqlApiEnvironmentVariablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#PutGraphqlApiEnvironmentVariablesRequest', name: 'PutGraphqlApiEnvironmentVariablesRequest')
    PutGraphqlApiEnvironmentVariablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#PutGraphqlApiEnvironmentVariablesResponse', name: 'PutGraphqlApiEnvironmentVariablesResponse')
    QueryDepthLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#QueryDepthLimit', name: 'QueryDepthLimit', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 75}})
    RdsDataApiConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#RdsDataApiConfig', name: 'RdsDataApiConfig')
    RdsDataApiConfigDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#RdsDataApiConfigDatabaseName', name: 'RdsDataApiConfigDatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RdsDataApiConfigResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#RdsDataApiConfigResourceArn', name: 'RdsDataApiConfigResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:rds:[a-z0-9-]*:\\d{12}:cluster:[0-9A-Za-z_/-]*$"})
    RdsDataApiConfigSecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#RdsDataApiConfigSecretArn', name: 'RdsDataApiConfigSecretArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:secretsmanager:[a-z0-9-]*:\\d{12}:secret:[0-9A-Za-z_/+=.@!-]*$"})
    RdsHttpEndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#RdsHttpEndpointConfig', name: 'RdsHttpEndpointConfig')
    RelationalDatabaseDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#RelationalDatabaseDataSourceConfig', name: 'RelationalDatabaseDataSourceConfig')
    RelationalDatabaseSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#RelationalDatabaseSourceType', name: 'RelationalDatabaseSourceType')
    Resolver = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#Resolver', name: 'Resolver')
    ResolverCountLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#ResolverCountLimit', name: 'ResolverCountLimit', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10000}})
    ResolverKind = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ResolverKind', name: 'ResolverKind')
    ResolverLevelMetricsBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ResolverLevelMetricsBehavior', name: 'ResolverLevelMetricsBehavior')
    ResolverLevelMetricsConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#ResolverLevelMetricsConfig', name: 'ResolverLevelMetricsConfig')
    Resolvers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#Resolvers', name: 'Resolvers')
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 70, "max" => 75}, "smithy.api#pattern" => "^arn:aws:appsync:[A-Za-z0-9_/.-]{0,63}:\\d{12}:apis/[0-9A-Za-z_-]{26}$"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[_A-Za-z][_0-9A-Za-z]*$"})
    RuntimeName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#RuntimeName', name: 'RuntimeName')
    SchemaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#SchemaStatus', name: 'SchemaStatus')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceApiAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#SourceApiAssociation', name: 'SourceApiAssociation')
    SourceApiAssociationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#SourceApiAssociationConfig', name: 'SourceApiAssociationConfig')
    SourceApiAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#SourceApiAssociationStatus', name: 'SourceApiAssociationStatus')
    SourceApiAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#SourceApiAssociationSummary', name: 'SourceApiAssociationSummary')
    SourceApiAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#SourceApiAssociationSummaryList', name: 'SourceApiAssociationSummaryList')
    StartDataSourceIntrospectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartDataSourceIntrospectionRequest', name: 'StartDataSourceIntrospectionRequest')
    StartDataSourceIntrospectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartDataSourceIntrospectionResponse', name: 'StartDataSourceIntrospectionResponse')
    StartSchemaCreationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartSchemaCreationRequest', name: 'StartSchemaCreationRequest')
    StartSchemaCreationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartSchemaCreationResponse', name: 'StartSchemaCreationResponse')
    StartSchemaMergeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartSchemaMergeRequest', name: 'StartSchemaMergeRequest')
    StartSchemaMergeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#StartSchemaMergeResponse', name: 'StartSchemaMergeResponse')
    Stash = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Stash', name: 'Stash', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#String', name: 'String')
    SyncConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#SyncConfig', name: 'SyncConfig')
    TTL = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appsync#TTL', name: 'TTL', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 3600}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[ a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appsync#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w+-=\\.:/@]*$"})
    Template = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appsync#Template', name: 'Template', traits: {"smithy.api#length" => {"min" => 2, "max" => 65536}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.appsync#Timestamp', name: 'Timestamp')
    Type = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#Type', name: 'Type')
    TypeDefinitionFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appsync#TypeDefinitionFormat', name: 'TypeDefinitionFormat')
    TypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appsync#TypeList', name: 'TypeList')
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiCacheRequest', name: 'UpdateApiCacheRequest')
    UpdateApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiCacheResponse', name: 'UpdateApiCacheResponse')
    UpdateApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiKeyRequest', name: 'UpdateApiKeyRequest')
    UpdateApiKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiKeyResponse', name: 'UpdateApiKeyResponse')
    UpdateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiRequest', name: 'UpdateApiRequest')
    UpdateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateApiResponse', name: 'UpdateApiResponse')
    UpdateChannelNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateChannelNamespaceRequest', name: 'UpdateChannelNamespaceRequest')
    UpdateChannelNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateChannelNamespaceResponse', name: 'UpdateChannelNamespaceResponse')
    UpdateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateDataSourceRequest', name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateDataSourceResponse', name: 'UpdateDataSourceResponse')
    UpdateDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateDomainNameRequest', name: 'UpdateDomainNameRequest')
    UpdateDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateDomainNameResponse', name: 'UpdateDomainNameResponse')
    UpdateFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateFunctionRequest', name: 'UpdateFunctionRequest')
    UpdateFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateFunctionResponse', name: 'UpdateFunctionResponse')
    UpdateGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateGraphqlApiRequest', name: 'UpdateGraphqlApiRequest')
    UpdateGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateGraphqlApiResponse', name: 'UpdateGraphqlApiResponse')
    UpdateResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateResolverRequest', name: 'UpdateResolverRequest')
    UpdateResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateResolverResponse', name: 'UpdateResolverResponse')
    UpdateSourceApiAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateSourceApiAssociationRequest', name: 'UpdateSourceApiAssociationRequest')
    UpdateSourceApiAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateSourceApiAssociationResponse', name: 'UpdateSourceApiAssociationResponse')
    UpdateTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateTypeRequest', name: 'UpdateTypeRequest')
    UpdateTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UpdateTypeResponse', name: 'UpdateTypeResponse')
    UserPoolConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appsync#UserPoolConfig', name: 'UserPoolConfig')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalAuthenticationProvider.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType'))
    AdditionalAuthenticationProvider.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig'))
    AdditionalAuthenticationProvider.add_member(:user_pool_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoUserPoolConfig, location_name: 'userPoolConfig'))
    AdditionalAuthenticationProvider.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig'))
    AdditionalAuthenticationProvider.type = Types::AdditionalAuthenticationProvider
    AdditionalAuthenticationProviders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAuthenticationProvider)
    Api.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId'))
    Api.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiName, location_name: 'name'))
    Api.add_member(:owner_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerContact, location_name: 'ownerContact'))
    Api.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Api.add_member(:dns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'dns'))
    Api.add_member(:api_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiArn'))
    Api.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created'))
    Api.add_member(:xray_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'xrayEnabled', traits: {"smithy.api#default" => false}))
    Api.add_member(:waf_web_acl_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'wafWebAclArn'))
    Api.add_member(:event_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventConfig, location_name: 'eventConfig'))
    Api.type = Types::Api
    ApiAssociation.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName'))
    ApiAssociation.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId'))
    ApiAssociation.add_member(:association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationStatus, location_name: 'associationStatus'))
    ApiAssociation.add_member(:deployment_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentDetail'))
    ApiAssociation.type = Types::ApiAssociation
    ApiCache.add_member(:ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ttl', traits: {"smithy.api#default" => 0}))
    ApiCache.add_member(:api_caching_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCachingBehavior, location_name: 'apiCachingBehavior'))
    ApiCache.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'transitEncryptionEnabled', traits: {"smithy.api#default" => false}))
    ApiCache.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'atRestEncryptionEnabled', traits: {"smithy.api#default" => false}))
    ApiCache.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCacheType, location_name: 'type'))
    ApiCache.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCacheStatus, location_name: 'status'))
    ApiCache.add_member(:health_metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: 'healthMetricsConfig'))
    ApiCache.type = Types::ApiCache
    ApiCacheStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ApiCacheStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ApiCacheStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApiCacheStatus.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ApiCacheStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ApiCacheType.add_member(:t2_small, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T2_SMALL', traits: {"smithy.api#enumValue" => "T2_SMALL"}))
    ApiCacheType.add_member(:t2_medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'T2_MEDIUM', traits: {"smithy.api#enumValue" => "T2_MEDIUM"}))
    ApiCacheType.add_member(:r4_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_LARGE', traits: {"smithy.api#enumValue" => "R4_LARGE"}))
    ApiCacheType.add_member(:r4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_XLARGE', traits: {"smithy.api#enumValue" => "R4_XLARGE"}))
    ApiCacheType.add_member(:r4_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_2XLARGE', traits: {"smithy.api#enumValue" => "R4_2XLARGE"}))
    ApiCacheType.add_member(:r4_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_4XLARGE', traits: {"smithy.api#enumValue" => "R4_4XLARGE"}))
    ApiCacheType.add_member(:r4_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'R4_8XLARGE', traits: {"smithy.api#enumValue" => "R4_8XLARGE"}))
    ApiCacheType.add_member(:small, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL', traits: {"smithy.api#enumValue" => "SMALL"}))
    ApiCacheType.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ApiCacheType.add_member(:large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE', traits: {"smithy.api#enumValue" => "LARGE"}))
    ApiCacheType.add_member(:xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XLARGE', traits: {"smithy.api#enumValue" => "XLARGE"}))
    ApiCacheType.add_member(:large_2_x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_2X', traits: {"smithy.api#enumValue" => "LARGE_2X"}))
    ApiCacheType.add_member(:large_4_x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_4X', traits: {"smithy.api#enumValue" => "LARGE_4X"}))
    ApiCacheType.add_member(:large_8_x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_8X', traits: {"smithy.api#enumValue" => "LARGE_8X"}))
    ApiCacheType.add_member(:large_12_x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_12X', traits: {"smithy.api#enumValue" => "LARGE_12X"}))
    ApiCachingBehavior.add_member(:full_request_caching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_REQUEST_CACHING', traits: {"smithy.api#enumValue" => "FULL_REQUEST_CACHING"}))
    ApiCachingBehavior.add_member(:per_resolver_caching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_RESOLVER_CACHING', traits: {"smithy.api#enumValue" => "PER_RESOLVER_CACHING"}))
    ApiCachingBehavior.add_member(:operation_level_caching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATION_LEVEL_CACHING', traits: {"smithy.api#enumValue" => "OPERATION_LEVEL_CACHING"}))
    ApiKey.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    ApiKey.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    ApiKey.add_member(:expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'expires', traits: {"smithy.api#default" => 0}))
    ApiKey.add_member(:deletes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'deletes', traits: {"smithy.api#default" => 0}))
    ApiKey.type = Types::ApiKey
    ApiKeyLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ApiKeyLimitExceededException.type = Types::ApiKeyLimitExceededException
    ApiKeyValidityOutOfBoundsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ApiKeyValidityOutOfBoundsException.type = Types::ApiKeyValidityOutOfBoundsException
    ApiKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey)
    ApiLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ApiLimitExceededException.type = Types::ApiLimitExceededException
    Apis.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Api)
    AppSyncRuntime.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AppSyncRuntime.add_member(:runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'runtimeVersion', traits: {"smithy.api#required" => {}}))
    AppSyncRuntime.type = Types::AppSyncRuntime
    AssociateApiRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#required" => {}}))
    AssociateApiRequest.type = Types::AssociateApiRequest
    AssociateApiResponse.add_member(:api_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAssociation, location_name: 'apiAssociation'))
    AssociateApiResponse.type = Types::AssociateApiResponse
    AssociateMergedGraphqlApiRequest.add_member(:source_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMergedGraphqlApiRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#required" => {}}))
    AssociateMergedGraphqlApiRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    AssociateMergedGraphqlApiRequest.add_member(:source_api_association_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: 'sourceApiAssociationConfig'))
    AssociateMergedGraphqlApiRequest.type = Types::AssociateMergedGraphqlApiRequest
    AssociateMergedGraphqlApiResponse.add_member(:source_api_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: 'sourceApiAssociation'))
    AssociateMergedGraphqlApiResponse.type = Types::AssociateMergedGraphqlApiResponse
    AssociateSourceGraphqlApiRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateSourceGraphqlApiRequest.add_member(:source_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiIdentifier', traits: {"smithy.api#required" => {}}))
    AssociateSourceGraphqlApiRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    AssociateSourceGraphqlApiRequest.add_member(:source_api_association_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: 'sourceApiAssociationConfig'))
    AssociateSourceGraphqlApiRequest.type = Types::AssociateSourceGraphqlApiRequest
    AssociateSourceGraphqlApiResponse.add_member(:source_api_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: 'sourceApiAssociation'))
    AssociateSourceGraphqlApiResponse.type = Types::AssociateSourceGraphqlApiResponse
    AssociationStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    AssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssociationStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AuthMode.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authType', traits: {"smithy.api#required" => {}}))
    AuthMode.type = Types::AuthMode
    AuthModes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMode)
    AuthProvider.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authType', traits: {"smithy.api#required" => {}}))
    AuthProvider.add_member(:cognito_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoConfig, location_name: 'cognitoConfig'))
    AuthProvider.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig'))
    AuthProvider.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig'))
    AuthProvider.type = Types::AuthProvider
    AuthProviders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthProvider)
    AuthenticationType.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_KEY', traits: {"smithy.api#enumValue" => "API_KEY"}))
    AuthenticationType.add_member(:aws_iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM', traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    AuthenticationType.add_member(:amazon_cognito_user_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_COGNITO_USER_POOLS', traits: {"smithy.api#enumValue" => "AMAZON_COGNITO_USER_POOLS"}))
    AuthenticationType.add_member(:openid_connect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENID_CONNECT', traits: {"smithy.api#enumValue" => "OPENID_CONNECT"}))
    AuthenticationType.add_member(:aws_lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_LAMBDA', traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    AuthorizationConfig.add_member(:authorization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationType, location_name: 'authorizationType', traits: {"smithy.api#required" => {}}))
    AuthorizationConfig.add_member(:aws_iam_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsIamConfig, location_name: 'awsIamConfig'))
    AuthorizationConfig.type = Types::AuthorizationConfig
    AuthorizationType.add_member(:aws_iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM', traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    AwsIamConfig.add_member(:signing_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signingRegion'))
    AwsIamConfig.add_member(:signing_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signingServiceName'))
    AwsIamConfig.type = Types::AwsIamConfig
    BadRequestDetail.add_member(:code_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrors, location_name: 'codeErrors'))
    BadRequestDetail.type = Types::BadRequestDetail
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    BadRequestException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestReason, location_name: 'reason'))
    BadRequestException.add_member(:detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestDetail, location_name: 'detail'))
    BadRequestException.type = Types::BadRequestException
    BadRequestReason.add_member(:code_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_ERROR', traits: {"smithy.api#enumValue" => "CODE_ERROR"}))
    CacheHealthMetricsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CacheHealthMetricsConfig.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CachingConfig.add_member(:ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ttl', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CachingConfig.add_member(:caching_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CachingKeys, location_name: 'cachingKeys'))
    CachingConfig.type = Types::CachingConfig
    CachingKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChannelNamespace.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId'))
    ChannelNamespace.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name'))
    ChannelNamespace.add_member(:subscribe_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'subscribeAuthModes'))
    ChannelNamespace.add_member(:publish_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'publishAuthModes'))
    ChannelNamespace.add_member(:code_handlers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'codeHandlers'))
    ChannelNamespace.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ChannelNamespace.add_member(:channel_namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'channelNamespaceArn'))
    ChannelNamespace.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created'))
    ChannelNamespace.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModified'))
    ChannelNamespace.add_member(:handler_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfigs, location_name: 'handlerConfigs'))
    ChannelNamespace.type = Types::ChannelNamespace
    ChannelNamespaces.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespace)
    CodeError.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorType'))
    CodeError.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value'))
    CodeError.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrorLocation, location_name: 'location'))
    CodeError.type = Types::CodeError
    CodeErrorLocation.add_member(:line, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrorLine, location_name: 'line', traits: {"smithy.api#default" => 0}))
    CodeErrorLocation.add_member(:column, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrorColumn, location_name: 'column', traits: {"smithy.api#default" => 0}))
    CodeErrorLocation.add_member(:span, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrorSpan, location_name: 'span', traits: {"smithy.api#default" => 0}))
    CodeErrorLocation.type = Types::CodeErrorLocation
    CodeErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeError)
    CognitoConfig.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userPoolId', traits: {"smithy.api#required" => {}}))
    CognitoConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#required" => {}}))
    CognitoConfig.add_member(:app_id_client_regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'appIdClientRegex'))
    CognitoConfig.type = Types::CognitoConfig
    CognitoUserPoolConfig.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userPoolId', traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfig.add_member(:app_id_client_regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'appIdClientRegex'))
    CognitoUserPoolConfig.type = Types::CognitoUserPoolConfig
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictDetectionType.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERSION', traits: {"smithy.api#enumValue" => "VERSION"}))
    ConflictDetectionType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConflictHandlerType.add_member(:optimistic_concurrency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIMISTIC_CONCURRENCY', traits: {"smithy.api#enumValue" => "OPTIMISTIC_CONCURRENCY"}))
    ConflictHandlerType.add_member(:lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ConflictHandlerType.add_member(:automerge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMERGE', traits: {"smithy.api#enumValue" => "AUTOMERGE"}))
    ConflictHandlerType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    CreateApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ttl', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'transitEncryptionEnabled', traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "5/15/2025", "message" => "transitEncryptionEnabled attribute is deprecated. Encryption in transit is always enabled."}}))
    CreateApiCacheRequest.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'atRestEncryptionEnabled', traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "5/15/2025", "message" => "atRestEncryptionEnabled attribute is deprecated. Encryption at rest is always enabled."}}))
    CreateApiCacheRequest.add_member(:api_caching_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCachingBehavior, location_name: 'apiCachingBehavior', traits: {"smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCacheType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:health_metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: 'healthMetricsConfig'))
    CreateApiCacheRequest.type = Types::CreateApiCacheRequest
    CreateApiCacheResponse.add_member(:api_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCache, location_name: 'apiCache'))
    CreateApiCacheResponse.type = Types::CreateApiCacheResponse
    CreateApiKeyRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApiKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    CreateApiKeyRequest.add_member(:expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'expires', traits: {"smithy.api#default" => 0}))
    CreateApiKeyRequest.type = Types::CreateApiKeyRequest
    CreateApiKeyResponse.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'apiKey'))
    CreateApiKeyResponse.type = Types::CreateApiKeyResponse
    CreateApiRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateApiRequest.add_member(:owner_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact'))
    CreateApiRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateApiRequest.add_member(:event_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventConfig, location_name: 'eventConfig'))
    CreateApiRequest.type = Types::CreateApiRequest
    CreateApiResponse.add_member(:api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Api, location_name: 'api'))
    CreateApiResponse.type = Types::CreateApiResponse
    CreateChannelNamespaceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateChannelNamespaceRequest.add_member(:subscribe_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'subscribeAuthModes'))
    CreateChannelNamespaceRequest.add_member(:publish_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'publishAuthModes'))
    CreateChannelNamespaceRequest.add_member(:code_handlers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'codeHandlers'))
    CreateChannelNamespaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateChannelNamespaceRequest.add_member(:handler_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfigs, location_name: 'handlerConfigs'))
    CreateChannelNamespaceRequest.type = Types::CreateChannelNamespaceRequest
    CreateChannelNamespaceResponse.add_member(:channel_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: 'channelNamespace'))
    CreateChannelNamespaceResponse.type = Types::CreateChannelNamespaceResponse
    CreateDataSourceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    CreateDataSourceRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRoleArn'))
    CreateDataSourceRequest.add_member(:dynamodb_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: 'dynamodbConfig'))
    CreateDataSourceRequest.add_member(:lambda_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: 'lambdaConfig'))
    CreateDataSourceRequest.add_member(:elasticsearch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: 'elasticsearchConfig'))
    CreateDataSourceRequest.add_member(:open_search_service_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: 'openSearchServiceConfig'))
    CreateDataSourceRequest.add_member(:http_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: 'httpConfig'))
    CreateDataSourceRequest.add_member(:relational_database_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: 'relationalDatabaseConfig'))
    CreateDataSourceRequest.add_member(:event_bridge_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: 'eventBridgeConfig'))
    CreateDataSourceRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: 'metricsConfig'))
    CreateDataSourceRequest.type = Types::CreateDataSourceRequest
    CreateDataSourceResponse.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource'))
    CreateDataSourceResponse.type = Types::CreateDataSourceResponse
    CreateDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateDomainNameRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateDomainNameRequest.type = Types::CreateDomainNameRequest
    CreateDomainNameResponse.add_member(:domain_name_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: 'domainNameConfig'))
    CreateDomainNameResponse.type = Types::CreateDomainNameResponse
    CreateFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    CreateFunctionRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName', traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate'))
    CreateFunctionRequest.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate'))
    CreateFunctionRequest.add_member(:function_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionVersion'))
    CreateFunctionRequest.add_member(:sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    CreateFunctionRequest.add_member(:max_batch_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0}))
    CreateFunctionRequest.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    CreateFunctionRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code'))
    CreateFunctionRequest.type = Types::CreateFunctionRequest
    CreateFunctionResponse.add_member(:function_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: 'functionConfiguration'))
    CreateFunctionResponse.type = Types::CreateFunctionResponse
    CreateGraphqlApiRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateGraphqlApiRequest.add_member(:log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'logConfig'))
    CreateGraphqlApiRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#required" => {}}))
    CreateGraphqlApiRequest.add_member(:user_pool_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: 'userPoolConfig'))
    CreateGraphqlApiRequest.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig'))
    CreateGraphqlApiRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateGraphqlApiRequest.add_member(:additional_authentication_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: 'additionalAuthenticationProviders'))
    CreateGraphqlApiRequest.add_member(:xray_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'xrayEnabled', traits: {"smithy.api#default" => false}))
    CreateGraphqlApiRequest.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig'))
    CreateGraphqlApiRequest.add_member(:api_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiType, location_name: 'apiType'))
    CreateGraphqlApiRequest.add_member(:merged_api_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiExecutionRoleArn'))
    CreateGraphqlApiRequest.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiVisibility, location_name: 'visibility'))
    CreateGraphqlApiRequest.add_member(:owner_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact'))
    CreateGraphqlApiRequest.add_member(:introspection_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: 'introspectionConfig'))
    CreateGraphqlApiRequest.add_member(:query_depth_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: 'queryDepthLimit', traits: {"smithy.api#default" => 0}))
    CreateGraphqlApiRequest.add_member(:resolver_count_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: 'resolverCountLimit', traits: {"smithy.api#default" => 0}))
    CreateGraphqlApiRequest.add_member(:enhanced_metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: 'enhancedMetricsConfig'))
    CreateGraphqlApiRequest.type = Types::CreateGraphqlApiRequest
    CreateGraphqlApiResponse.add_member(:graphql_api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApi, location_name: 'graphqlApi'))
    CreateGraphqlApiResponse.type = Types::CreateGraphqlApiResponse
    CreateResolverRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName'))
    CreateResolverRequest.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate'))
    CreateResolverRequest.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate'))
    CreateResolverRequest.add_member(:kind, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverKind, location_name: 'kind'))
    CreateResolverRequest.add_member(:pipeline_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfig, location_name: 'pipelineConfig'))
    CreateResolverRequest.add_member(:sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    CreateResolverRequest.add_member(:caching_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CachingConfig, location_name: 'cachingConfig'))
    CreateResolverRequest.add_member(:max_batch_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0}))
    CreateResolverRequest.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    CreateResolverRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code'))
    CreateResolverRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: 'metricsConfig'))
    CreateResolverRequest.type = Types::CreateResolverRequest
    CreateResolverResponse.add_member(:resolver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolver, location_name: 'resolver'))
    CreateResolverResponse.type = Types::CreateResolverResponse
    CreateTypeRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'definition', traits: {"smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#required" => {}}))
    CreateTypeRequest.type = Types::CreateTypeRequest
    CreateTypeResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type'))
    CreateTypeResponse.type = Types::CreateTypeResponse
    DataSource.add_member(:data_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSourceArn'))
    DataSource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name'))
    DataSource.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    DataSource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type'))
    DataSource.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRoleArn'))
    DataSource.add_member(:dynamodb_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: 'dynamodbConfig'))
    DataSource.add_member(:lambda_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: 'lambdaConfig'))
    DataSource.add_member(:elasticsearch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: 'elasticsearchConfig'))
    DataSource.add_member(:open_search_service_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: 'openSearchServiceConfig'))
    DataSource.add_member(:http_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: 'httpConfig'))
    DataSource.add_member(:relational_database_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: 'relationalDatabaseConfig'))
    DataSource.add_member(:event_bridge_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: 'eventBridgeConfig'))
    DataSource.add_member(:metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: 'metricsConfig'))
    DataSource.type = Types::DataSource
    DataSourceIntrospectionModel.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    DataSourceIntrospectionModel.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFields, location_name: 'fields'))
    DataSourceIntrospectionModel.add_member(:primary_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndex, location_name: 'primaryKey'))
    DataSourceIntrospectionModel.add_member(:indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndexes, location_name: 'indexes'))
    DataSourceIntrospectionModel.add_member(:sdl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sdl'))
    DataSourceIntrospectionModel.type = Types::DataSourceIntrospectionModel
    DataSourceIntrospectionModelField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    DataSourceIntrospectionModelField.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldType, location_name: 'type'))
    DataSourceIntrospectionModelField.add_member(:length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'length', traits: {"smithy.api#default" => 0}))
    DataSourceIntrospectionModelField.type = Types::DataSourceIntrospectionModelField
    DataSourceIntrospectionModelFieldType.add_member(:kind, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kind'))
    DataSourceIntrospectionModelFieldType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    DataSourceIntrospectionModelFieldType.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldType, location_name: 'type'))
    DataSourceIntrospectionModelFieldType.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelFieldTypeValues, location_name: 'values'))
    DataSourceIntrospectionModelFieldType.type = Types::DataSourceIntrospectionModelFieldType
    DataSourceIntrospectionModelFieldTypeValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DataSourceIntrospectionModelFields.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelField)
    DataSourceIntrospectionModelIndex.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    DataSourceIntrospectionModelIndex.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndexFields, location_name: 'fields'))
    DataSourceIntrospectionModelIndex.type = Types::DataSourceIntrospectionModelIndex
    DataSourceIntrospectionModelIndexFields.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DataSourceIntrospectionModelIndexes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModelIndex)
    DataSourceIntrospectionModels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModel)
    DataSourceIntrospectionResult.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionModels, location_name: 'models'))
    DataSourceIntrospectionResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    DataSourceIntrospectionResult.type = Types::DataSourceIntrospectionResult
    DataSourceIntrospectionStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    DataSourceIntrospectionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceIntrospectionStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DataSourceLevelMetricsBehavior.add_member(:full_request_data_source_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_REQUEST_DATA_SOURCE_METRICS', traits: {"smithy.api#enumValue" => "FULL_REQUEST_DATA_SOURCE_METRICS"}))
    DataSourceLevelMetricsBehavior.add_member(:per_data_source_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_DATA_SOURCE_METRICS', traits: {"smithy.api#enumValue" => "PER_DATA_SOURCE_METRICS"}))
    DataSourceLevelMetricsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DataSourceLevelMetricsConfig.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DataSourceType.add_member(:aws_lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_LAMBDA', traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    DataSourceType.add_member(:amazon_dynamodb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_DYNAMODB', traits: {"smithy.api#enumValue" => "AMAZON_DYNAMODB"}))
    DataSourceType.add_member(:amazon_elasticsearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_ELASTICSEARCH', traits: {"smithy.api#enumValue" => "AMAZON_ELASTICSEARCH"}))
    DataSourceType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DataSourceType.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    DataSourceType.add_member(:relational_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELATIONAL_DATABASE', traits: {"smithy.api#enumValue" => "RELATIONAL_DATABASE"}))
    DataSourceType.add_member(:amazon_opensearch_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_OPENSEARCH_SERVICE', traits: {"smithy.api#enumValue" => "AMAZON_OPENSEARCH_SERVICE"}))
    DataSourceType.add_member(:amazon_eventbridge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_EVENTBRIDGE', traits: {"smithy.api#enumValue" => "AMAZON_EVENTBRIDGE"}))
    DataSourceType.add_member(:amazon_bedrock_runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_BEDROCK_RUNTIME', traits: {"smithy.api#enumValue" => "AMAZON_BEDROCK_RUNTIME"}))
    DataSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DefaultAction.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    DefaultAction.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    DeleteApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiCacheRequest.type = Types::DeleteApiCacheRequest
    DeleteApiCacheResponse.type = Types::DeleteApiCacheResponse
    DeleteApiKeyRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiKeyRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiKeyRequest.type = Types::DeleteApiKeyRequest
    DeleteApiKeyResponse.type = Types::DeleteApiKeyResponse
    DeleteApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiRequest.type = Types::DeleteApiRequest
    DeleteApiResponse.type = Types::DeleteApiResponse
    DeleteChannelNamespaceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelNamespaceRequest.type = Types::DeleteChannelNamespaceRequest
    DeleteChannelNamespaceResponse.type = Types::DeleteChannelNamespaceResponse
    DeleteDataSourceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteDataSourceResponse.type = Types::DeleteDataSourceResponse
    DeleteDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainNameRequest.type = Types::DeleteDomainNameRequest
    DeleteDomainNameResponse.type = Types::DeleteDomainNameResponse
    DeleteFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'functionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest
    DeleteFunctionResponse.type = Types::DeleteFunctionResponse
    DeleteGraphqlApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGraphqlApiRequest.type = Types::DeleteGraphqlApiRequest
    DeleteGraphqlApiResponse.type = Types::DeleteGraphqlApiResponse
    DeleteResolverRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.type = Types::DeleteResolverRequest
    DeleteResolverResponse.type = Types::DeleteResolverResponse
    DeleteTypeRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTypeRequest.type = Types::DeleteTypeRequest
    DeleteTypeResponse.type = Types::DeleteTypeResponse
    DeltaSyncConfig.add_member(:base_table_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'baseTableTTL', traits: {"smithy.api#default" => 0}))
    DeltaSyncConfig.add_member(:delta_sync_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deltaSyncTableName'))
    DeltaSyncConfig.add_member(:delta_sync_table_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'deltaSyncTableTTL', traits: {"smithy.api#default" => 0}))
    DeltaSyncConfig.type = Types::DeltaSyncConfig
    DisassociateApiRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateApiRequest.type = Types::DisassociateApiRequest
    DisassociateApiResponse.type = Types::DisassociateApiResponse
    DisassociateMergedGraphqlApiRequest.add_member(:source_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMergedGraphqlApiRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMergedGraphqlApiRequest.type = Types::DisassociateMergedGraphqlApiRequest
    DisassociateMergedGraphqlApiResponse.add_member(:source_api_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: 'sourceApiAssociationStatus'))
    DisassociateMergedGraphqlApiResponse.type = Types::DisassociateMergedGraphqlApiResponse
    DisassociateSourceGraphqlApiRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSourceGraphqlApiRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSourceGraphqlApiRequest.type = Types::DisassociateSourceGraphqlApiRequest
    DisassociateSourceGraphqlApiResponse.add_member(:source_api_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: 'sourceApiAssociationStatus'))
    DisassociateSourceGraphqlApiResponse.type = Types::DisassociateSourceGraphqlApiResponse
    DomainNameConfig.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName'))
    DomainNameConfig.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    DomainNameConfig.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn'))
    DomainNameConfig.add_member(:appsync_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'appsyncDomainName'))
    DomainNameConfig.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'hostedZoneId'))
    DomainNameConfig.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DomainNameConfig.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn'))
    DomainNameConfig.type = Types::DomainNameConfig
    DomainNameConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfig)
    DynamodbDataSourceConfig.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'tableName', traits: {"smithy.api#required" => {}}))
    DynamodbDataSourceConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#required" => {}}))
    DynamodbDataSourceConfig.add_member(:use_caller_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'useCallerCredentials', traits: {"smithy.api#default" => false}))
    DynamodbDataSourceConfig.add_member(:delta_sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeltaSyncConfig, location_name: 'deltaSyncConfig'))
    DynamodbDataSourceConfig.add_member(:versioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'versioned', traits: {"smithy.api#default" => false}))
    DynamodbDataSourceConfig.type = Types::DynamodbDataSourceConfig
    ElasticsearchDataSourceConfig.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint', traits: {"smithy.api#required" => {}}))
    ElasticsearchDataSourceConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#required" => {}}))
    ElasticsearchDataSourceConfig.type = Types::ElasticsearchDataSourceConfig
    EnhancedMetricsConfig.add_member(:resolver_level_metrics_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverLevelMetricsBehavior, location_name: 'resolverLevelMetricsBehavior', traits: {"smithy.api#required" => {}}))
    EnhancedMetricsConfig.add_member(:data_source_level_metrics_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceLevelMetricsBehavior, location_name: 'dataSourceLevelMetricsBehavior', traits: {"smithy.api#required" => {}}))
    EnhancedMetricsConfig.add_member(:operation_level_metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationLevelMetricsConfig, location_name: 'operationLevelMetricsConfig', traits: {"smithy.api#required" => {}}))
    EnhancedMetricsConfig.type = Types::EnhancedMetricsConfig
    EnvironmentVariableMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariableMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableValue)
    ErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ErrorDetail.type = Types::ErrorDetail
    EvaluateCodeErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    EvaluateCodeErrorDetail.add_member(:code_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeErrors, location_name: 'codeErrors'))
    EvaluateCodeErrorDetail.type = Types::EvaluateCodeErrorDetail
    EvaluateCodeRequest.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime', traits: {"smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context', traits: {"smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:function, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'function'))
    EvaluateCodeRequest.type = Types::EvaluateCodeRequest
    EvaluateCodeResponse.add_member(:evaluation_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult, location_name: 'evaluationResult'))
    EvaluateCodeResponse.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateCodeErrorDetail, location_name: 'error'))
    EvaluateCodeResponse.add_member(:logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Logs, location_name: 'logs'))
    EvaluateCodeResponse.add_member(:stash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stash, location_name: 'stash'))
    EvaluateCodeResponse.add_member(:out_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutErrors, location_name: 'outErrors'))
    EvaluateCodeResponse.type = Types::EvaluateCodeResponse
    EvaluateMappingTemplateRequest.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'template', traits: {"smithy.api#required" => {}}))
    EvaluateMappingTemplateRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context', traits: {"smithy.api#required" => {}}))
    EvaluateMappingTemplateRequest.type = Types::EvaluateMappingTemplateRequest
    EvaluateMappingTemplateResponse.add_member(:evaluation_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult, location_name: 'evaluationResult'))
    EvaluateMappingTemplateResponse.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error'))
    EvaluateMappingTemplateResponse.add_member(:logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Logs, location_name: 'logs'))
    EvaluateMappingTemplateResponse.add_member(:stash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stash, location_name: 'stash'))
    EvaluateMappingTemplateResponse.add_member(:out_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutErrors, location_name: 'outErrors'))
    EvaluateMappingTemplateResponse.type = Types::EvaluateMappingTemplateResponse
    EventBridgeDataSourceConfig.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventBusArn', traits: {"smithy.api#required" => {}}))
    EventBridgeDataSourceConfig.type = Types::EventBridgeDataSourceConfig
    EventConfig.add_member(:auth_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthProviders, location_name: 'authProviders', traits: {"smithy.api#required" => {}}))
    EventConfig.add_member(:connection_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'connectionAuthModes', traits: {"smithy.api#required" => {}}))
    EventConfig.add_member(:default_publish_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'defaultPublishAuthModes', traits: {"smithy.api#required" => {}}))
    EventConfig.add_member(:default_subscribe_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'defaultSubscribeAuthModes', traits: {"smithy.api#required" => {}}))
    EventConfig.add_member(:log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventLogConfig, location_name: 'logConfig'))
    EventConfig.type = Types::EventConfig
    EventLogConfig.add_member(:log_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventLogLevel, location_name: 'logLevel', traits: {"smithy.api#required" => {}}))
    EventLogConfig.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cloudWatchLogsRoleArn', traits: {"smithy.api#required" => {}}))
    EventLogConfig.type = Types::EventLogConfig
    EventLogLevel.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    EventLogLevel.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    EventLogLevel.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    EventLogLevel.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    EventLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    FieldLogLevel.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    FieldLogLevel.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    FieldLogLevel.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    FieldLogLevel.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    FieldLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    FlushApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushApiCacheRequest.type = Types::FlushApiCacheRequest
    FlushApiCacheResponse.type = Types::FlushApiCacheResponse
    FunctionConfiguration.add_member(:function_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionId'))
    FunctionConfiguration.add_member(:function_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionArn'))
    FunctionConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name'))
    FunctionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    FunctionConfiguration.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName'))
    FunctionConfiguration.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate'))
    FunctionConfiguration.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate'))
    FunctionConfiguration.add_member(:function_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionVersion'))
    FunctionConfiguration.add_member(:sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    FunctionConfiguration.add_member(:max_batch_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0}))
    FunctionConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    FunctionConfiguration.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code'))
    FunctionConfiguration.type = Types::FunctionConfiguration
    Functions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration)
    FunctionsIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    GetApiAssociationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiAssociationRequest.type = Types::GetApiAssociationRequest
    GetApiAssociationResponse.add_member(:api_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAssociation, location_name: 'apiAssociation'))
    GetApiAssociationResponse.type = Types::GetApiAssociationResponse
    GetApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiCacheRequest.type = Types::GetApiCacheRequest
    GetApiCacheResponse.add_member(:api_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCache, location_name: 'apiCache'))
    GetApiCacheResponse.type = Types::GetApiCacheResponse
    GetApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiRequest.type = Types::GetApiRequest
    GetApiResponse.add_member(:api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Api, location_name: 'api'))
    GetApiResponse.type = Types::GetApiResponse
    GetChannelNamespaceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelNamespaceRequest.type = Types::GetChannelNamespaceRequest
    GetChannelNamespaceResponse.add_member(:channel_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: 'channelNamespace'))
    GetChannelNamespaceResponse.type = Types::GetChannelNamespaceResponse
    GetDataSourceIntrospectionRequest.add_member(:introspection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceIntrospectionRequest.add_member(:include_models_sdl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'includeModelsSDL', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeModelsSDL"}))
    GetDataSourceIntrospectionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetDataSourceIntrospectionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    GetDataSourceIntrospectionRequest.type = Types::GetDataSourceIntrospectionRequest
    GetDataSourceIntrospectionResponse.add_member(:introspection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionId'))
    GetDataSourceIntrospectionResponse.add_member(:introspection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionStatus, location_name: 'introspectionStatus'))
    GetDataSourceIntrospectionResponse.add_member(:introspection_status_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionStatusDetail'))
    GetDataSourceIntrospectionResponse.add_member(:introspection_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionResult, location_name: 'introspectionResult'))
    GetDataSourceIntrospectionResponse.type = Types::GetDataSourceIntrospectionResponse
    GetDataSourceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.type = Types::GetDataSourceRequest
    GetDataSourceResponse.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource'))
    GetDataSourceResponse.type = Types::GetDataSourceResponse
    GetDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainNameRequest.type = Types::GetDomainNameRequest
    GetDomainNameResponse.add_member(:domain_name_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: 'domainNameConfig'))
    GetDomainNameResponse.type = Types::GetDomainNameResponse
    GetFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'functionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.type = Types::GetFunctionRequest
    GetFunctionResponse.add_member(:function_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: 'functionConfiguration'))
    GetFunctionResponse.type = Types::GetFunctionResponse
    GetGraphqlApiEnvironmentVariablesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphqlApiEnvironmentVariablesRequest.type = Types::GetGraphqlApiEnvironmentVariablesRequest
    GetGraphqlApiEnvironmentVariablesResponse.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables'))
    GetGraphqlApiEnvironmentVariablesResponse.type = Types::GetGraphqlApiEnvironmentVariablesResponse
    GetGraphqlApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphqlApiRequest.type = Types::GetGraphqlApiRequest
    GetGraphqlApiResponse.add_member(:graphql_api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApi, location_name: 'graphqlApi'))
    GetGraphqlApiResponse.type = Types::GetGraphqlApiResponse
    GetIntrospectionSchemaRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntrospectionSchemaRequest.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputType, location_name: 'format', traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetIntrospectionSchemaRequest.add_member(:include_directives, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'includeDirectives', traits: {"smithy.api#httpQuery" => "includeDirectives"}))
    GetIntrospectionSchemaRequest.type = Types::GetIntrospectionSchemaRequest
    GetIntrospectionSchemaResponse.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'schema', traits: {"smithy.api#httpPayload" => {}}))
    GetIntrospectionSchemaResponse[:http_payload] = :schema
    GetIntrospectionSchemaResponse[:http_payload_member] = GetIntrospectionSchemaResponse.member(:schema)
    GetIntrospectionSchemaResponse.type = Types::GetIntrospectionSchemaResponse
    GetResolverRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.type = Types::GetResolverRequest
    GetResolverResponse.add_member(:resolver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolver, location_name: 'resolver'))
    GetResolverResponse.type = Types::GetResolverResponse
    GetSchemaCreationStatusRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaCreationStatusRequest.type = Types::GetSchemaCreationStatusRequest
    GetSchemaCreationStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatus, location_name: 'status'))
    GetSchemaCreationStatusResponse.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'details'))
    GetSchemaCreationStatusResponse.type = Types::GetSchemaCreationStatusResponse
    GetSourceApiAssociationRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceApiAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceApiAssociationRequest.type = Types::GetSourceApiAssociationRequest
    GetSourceApiAssociationResponse.add_member(:source_api_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: 'sourceApiAssociation'))
    GetSourceApiAssociationResponse.type = Types::GetSourceApiAssociationResponse
    GetTypeRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTypeRequest.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetTypeRequest.type = Types::GetTypeRequest
    GetTypeResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type'))
    GetTypeResponse.type = Types::GetTypeResponse
    GraphQLApiIntrospectionConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    GraphQLApiIntrospectionConfig.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    GraphQLApiType.add_member(:graphql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRAPHQL', traits: {"smithy.api#enumValue" => "GRAPHQL"}))
    GraphQLApiType.add_member(:merged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGED', traits: {"smithy.api#enumValue" => "MERGED"}))
    GraphQLApiVisibility.add_member(:global, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLOBAL', traits: {"smithy.api#enumValue" => "GLOBAL"}))
    GraphQLApiVisibility.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    GraphQLSchemaException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    GraphQLSchemaException.type = Types::GraphQLSchemaException
    GraphqlApi.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name'))
    GraphqlApi.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId'))
    GraphqlApi.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType'))
    GraphqlApi.add_member(:log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'logConfig'))
    GraphqlApi.add_member(:user_pool_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: 'userPoolConfig'))
    GraphqlApi.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig'))
    GraphqlApi.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    GraphqlApi.add_member(:uris, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'uris'))
    GraphqlApi.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GraphqlApi.add_member(:additional_authentication_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: 'additionalAuthenticationProviders'))
    GraphqlApi.add_member(:xray_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'xrayEnabled', traits: {"smithy.api#default" => false}))
    GraphqlApi.add_member(:waf_web_acl_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'wafWebAclArn'))
    GraphqlApi.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig'))
    GraphqlApi.add_member(:dns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'dns'))
    GraphqlApi.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiVisibility, location_name: 'visibility'))
    GraphqlApi.add_member(:api_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiType, location_name: 'apiType'))
    GraphqlApi.add_member(:merged_api_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiExecutionRoleArn'))
    GraphqlApi.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'owner'))
    GraphqlApi.add_member(:owner_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact'))
    GraphqlApi.add_member(:introspection_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: 'introspectionConfig'))
    GraphqlApi.add_member(:query_depth_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: 'queryDepthLimit', traits: {"smithy.api#default" => 0}))
    GraphqlApi.add_member(:resolver_count_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: 'resolverCountLimit', traits: {"smithy.api#default" => 0}))
    GraphqlApi.add_member(:enhanced_metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: 'enhancedMetricsConfig'))
    GraphqlApi.type = Types::GraphqlApi
    GraphqlApis.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApi)
    HandlerBehavior.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE', traits: {"smithy.api#enumValue" => "CODE"}))
    HandlerBehavior.add_member(:direct, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT', traits: {"smithy.api#enumValue" => "DIRECT"}))
    HandlerConfig.add_member(:behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerBehavior, location_name: 'behavior', traits: {"smithy.api#required" => {}}))
    HandlerConfig.add_member(:integration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, location_name: 'integration', traits: {"smithy.api#required" => {}}))
    HandlerConfig.type = Types::HandlerConfig
    HandlerConfigs.add_member(:on_publish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfig, location_name: 'onPublish'))
    HandlerConfigs.add_member(:on_subscribe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfig, location_name: 'onSubscribe'))
    HandlerConfigs.type = Types::HandlerConfigs
    HttpDataSourceConfig.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint'))
    HttpDataSourceConfig.add_member(:authorization_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationConfig, location_name: 'authorizationConfig'))
    HttpDataSourceConfig.type = Types::HttpDataSourceConfig
    Integration.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSourceName', traits: {"smithy.api#required" => {}}))
    Integration.add_member(:lambda_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConfig, location_name: 'lambdaConfig'))
    Integration.type = Types::Integration
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InternalFailureException.type = Types::InternalFailureException
    InvokeType.add_member(:request_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUEST_RESPONSE', traits: {"smithy.api#enumValue" => "REQUEST_RESPONSE"}))
    InvokeType.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    LambdaAuthorizerConfig.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'authorizerResultTtlInSeconds', traits: {"smithy.api#default" => 0}))
    LambdaAuthorizerConfig.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerUri', traits: {"smithy.api#required" => {}}))
    LambdaAuthorizerConfig.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityValidationExpression'))
    LambdaAuthorizerConfig.type = Types::LambdaAuthorizerConfig
    LambdaConfig.add_member(:invoke_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeType, location_name: 'invokeType'))
    LambdaConfig.type = Types::LambdaConfig
    LambdaConflictHandlerConfig.add_member(:lambda_conflict_handler_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lambdaConflictHandlerArn'))
    LambdaConflictHandlerConfig.type = Types::LambdaConflictHandlerConfig
    LambdaDataSourceConfig.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lambdaFunctionArn', traits: {"smithy.api#required" => {}}))
    LambdaDataSourceConfig.type = Types::LambdaDataSourceConfig
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListApiKeysRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApiKeysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApiKeysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApiKeysRequest.type = Types::ListApiKeysRequest
    ListApiKeysResponse.add_member(:api_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeys, location_name: 'apiKeys'))
    ListApiKeysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListApiKeysResponse.type = Types::ListApiKeysResponse
    ListApisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApisRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApisRequest.type = Types::ListApisRequest
    ListApisResponse.add_member(:apis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Apis, location_name: 'apis'))
    ListApisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListApisResponse.type = Types::ListApisResponse
    ListChannelNamespacesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelNamespacesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelNamespacesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListChannelNamespacesRequest.type = Types::ListChannelNamespacesRequest
    ListChannelNamespacesResponse.add_member(:channel_namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespaces, location_name: 'channelNamespaces'))
    ListChannelNamespacesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListChannelNamespacesResponse.type = Types::ListChannelNamespacesResponse
    ListDataSourcesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    ListDataSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListDomainNamesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDomainNamesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDomainNamesRequest.type = Types::ListDomainNamesRequest
    ListDomainNamesResponse.add_member(:domain_name_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfigs, location_name: 'domainNameConfigs'))
    ListDomainNamesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDomainNamesResponse.type = Types::ListDomainNamesResponse
    ListFunctionsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFunctionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFunctionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListFunctionsRequest.type = Types::ListFunctionsRequest
    ListFunctionsResponse.add_member(:functions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Functions, location_name: 'functions'))
    ListFunctionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListFunctionsResponse.type = Types::ListFunctionsResponse
    ListGraphqlApisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGraphqlApisRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListGraphqlApisRequest.add_member(:api_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiType, location_name: 'apiType', traits: {"smithy.api#httpQuery" => "apiType"}))
    ListGraphqlApisRequest.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ownership, location_name: 'owner', traits: {"smithy.api#httpQuery" => "owner"}))
    ListGraphqlApisRequest.type = Types::ListGraphqlApisRequest
    ListGraphqlApisResponse.add_member(:graphql_apis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApis, location_name: 'graphqlApis'))
    ListGraphqlApisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListGraphqlApisResponse.type = Types::ListGraphqlApisResponse
    ListResolversByFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversByFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversByFunctionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResolversByFunctionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListResolversByFunctionRequest.type = Types::ListResolversByFunctionRequest
    ListResolversByFunctionResponse.add_member(:resolvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolvers, location_name: 'resolvers'))
    ListResolversByFunctionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListResolversByFunctionResponse.type = Types::ListResolversByFunctionResponse
    ListResolversRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversRequest.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'typeName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResolversRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListResolversRequest.type = Types::ListResolversRequest
    ListResolversResponse.add_member(:resolvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolvers, location_name: 'resolvers'))
    ListResolversResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListResolversResponse.type = Types::ListResolversResponse
    ListSourceApiAssociationsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSourceApiAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSourceApiAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListSourceApiAssociationsRequest.type = Types::ListSourceApiAssociationsRequest
    ListSourceApiAssociationsResponse.add_member(:source_api_association_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationSummaryList, location_name: 'sourceApiAssociationSummaries'))
    ListSourceApiAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSourceApiAssociationsResponse.type = Types::ListSourceApiAssociationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTypesByAssociationRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTypesByAssociationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTypesByAssociationRequest.type = Types::ListTypesByAssociationRequest
    ListTypesByAssociationResponse.add_member(:types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeList, location_name: 'types'))
    ListTypesByAssociationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTypesByAssociationResponse.type = Types::ListTypesByAssociationResponse
    ListTypesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesRequest.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTypesRequest.type = Types::ListTypesRequest
    ListTypesResponse.add_member(:types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeList, location_name: 'types'))
    ListTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTypesResponse.type = Types::ListTypesResponse
    LogConfig.add_member(:field_log_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLogLevel, location_name: 'fieldLogLevel', traits: {"smithy.api#required" => {}}))
    LogConfig.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cloudWatchLogsRoleArn', traits: {"smithy.api#required" => {}}))
    LogConfig.add_member(:exclude_verbose_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'excludeVerboseContent', traits: {"smithy.api#default" => false}))
    LogConfig.type = Types::LogConfig
    Logs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfStringToString.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfStringToString.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MergeType.add_member(:manual_merge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL_MERGE', traits: {"smithy.api#enumValue" => "MANUAL_MERGE"}))
    MergeType.add_member(:auto_merge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_MERGE', traits: {"smithy.api#enumValue" => "AUTO_MERGE"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    OpenIDConnectConfig.add_member(:issuer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'issuer', traits: {"smithy.api#required" => {}}))
    OpenIDConnectConfig.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientId'))
    OpenIDConnectConfig.add_member(:iat_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'iatTTL', traits: {"smithy.api#default" => 0}))
    OpenIDConnectConfig.add_member(:auth_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'authTTL', traits: {"smithy.api#default" => 0}))
    OpenIDConnectConfig.type = Types::OpenIDConnectConfig
    OpenSearchServiceDataSourceConfig.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint', traits: {"smithy.api#required" => {}}))
    OpenSearchServiceDataSourceConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#required" => {}}))
    OpenSearchServiceDataSourceConfig.type = Types::OpenSearchServiceDataSourceConfig
    OperationLevelMetricsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    OperationLevelMetricsConfig.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    OutputType.add_member(:sdl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SDL', traits: {"smithy.api#enumValue" => "SDL"}))
    OutputType.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    Ownership.add_member(:current_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURRENT_ACCOUNT', traits: {"smithy.api#enumValue" => "CURRENT_ACCOUNT"}))
    Ownership.add_member(:other_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER_ACCOUNTS', traits: {"smithy.api#enumValue" => "OTHER_ACCOUNTS"}))
    PipelineConfig.add_member(:functions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionsIds, location_name: 'functions'))
    PipelineConfig.type = Types::PipelineConfig
    PutGraphqlApiEnvironmentVariablesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGraphqlApiEnvironmentVariablesRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables', traits: {"smithy.api#required" => {}}))
    PutGraphqlApiEnvironmentVariablesRequest.type = Types::PutGraphqlApiEnvironmentVariablesRequest
    PutGraphqlApiEnvironmentVariablesResponse.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables'))
    PutGraphqlApiEnvironmentVariablesResponse.type = Types::PutGraphqlApiEnvironmentVariablesResponse
    RdsDataApiConfig.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDataApiConfigResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    RdsDataApiConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDataApiConfigSecretArn, location_name: 'secretArn', traits: {"smithy.api#required" => {}}))
    RdsDataApiConfig.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDataApiConfigDatabaseName, location_name: 'databaseName', traits: {"smithy.api#required" => {}}))
    RdsDataApiConfig.type = Types::RdsDataApiConfig
    RdsHttpEndpointConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion'))
    RdsHttpEndpointConfig.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dbClusterIdentifier'))
    RdsHttpEndpointConfig.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'databaseName'))
    RdsHttpEndpointConfig.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema'))
    RdsHttpEndpointConfig.add_member(:aws_secret_store_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsSecretStoreArn'))
    RdsHttpEndpointConfig.type = Types::RdsHttpEndpointConfig
    RelationalDatabaseDataSourceConfig.add_member(:relational_database_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseSourceType, location_name: 'relationalDatabaseSourceType'))
    RelationalDatabaseDataSourceConfig.add_member(:rds_http_endpoint_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsHttpEndpointConfig, location_name: 'rdsHttpEndpointConfig'))
    RelationalDatabaseDataSourceConfig.type = Types::RelationalDatabaseDataSourceConfig
    RelationalDatabaseSourceType.add_member(:rds_http_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS_HTTP_ENDPOINT', traits: {"smithy.api#enumValue" => "RDS_HTTP_ENDPOINT"}))
    Resolver.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName'))
    Resolver.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName'))
    Resolver.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName'))
    Resolver.add_member(:resolver_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resolverArn'))
    Resolver.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate'))
    Resolver.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate'))
    Resolver.add_member(:kind, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverKind, location_name: 'kind'))
    Resolver.add_member(:pipeline_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfig, location_name: 'pipelineConfig'))
    Resolver.add_member(:sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    Resolver.add_member(:caching_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CachingConfig, location_name: 'cachingConfig'))
    Resolver.add_member(:max_batch_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0}))
    Resolver.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    Resolver.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code'))
    Resolver.add_member(:metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: 'metricsConfig'))
    Resolver.type = Types::Resolver
    ResolverKind.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNIT', traits: {"smithy.api#enumValue" => "UNIT"}))
    ResolverKind.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PIPELINE', traits: {"smithy.api#enumValue" => "PIPELINE"}))
    ResolverLevelMetricsBehavior.add_member(:full_request_resolver_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_REQUEST_RESOLVER_METRICS', traits: {"smithy.api#enumValue" => "FULL_REQUEST_RESOLVER_METRICS"}))
    ResolverLevelMetricsBehavior.add_member(:per_resolver_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_RESOLVER_METRICS', traits: {"smithy.api#enumValue" => "PER_RESOLVER_METRICS"}))
    ResolverLevelMetricsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverLevelMetricsConfig.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    Resolvers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolver)
    RuntimeName.add_member(:appsync_js, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPSYNC_JS', traits: {"smithy.api#enumValue" => "APPSYNC_JS"}))
    SchemaStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    SchemaStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SchemaStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    SchemaStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    SchemaStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    SchemaStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotApplicable', traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceApiAssociation.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId'))
    SourceApiAssociation.add_member(:association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationArn'))
    SourceApiAssociation.add_member(:source_api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiId'))
    SourceApiAssociation.add_member(:source_api_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiArn'))
    SourceApiAssociation.add_member(:merged_api_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiArn'))
    SourceApiAssociation.add_member(:merged_api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiId'))
    SourceApiAssociation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    SourceApiAssociation.add_member(:source_api_association_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: 'sourceApiAssociationConfig'))
    SourceApiAssociation.add_member(:source_api_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: 'sourceApiAssociationStatus'))
    SourceApiAssociation.add_member(:source_api_association_status_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiAssociationStatusDetail'))
    SourceApiAssociation.add_member(:last_successful_merge_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastSuccessfulMergeDate'))
    SourceApiAssociation.type = Types::SourceApiAssociation
    SourceApiAssociationConfig.add_member(:merge_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergeType, location_name: 'mergeType'))
    SourceApiAssociationConfig.type = Types::SourceApiAssociationConfig
    SourceApiAssociationStatus.add_member(:merge_scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE_SCHEDULED', traits: {"smithy.api#enumValue" => "MERGE_SCHEDULED"}))
    SourceApiAssociationStatus.add_member(:merge_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE_FAILED', traits: {"smithy.api#enumValue" => "MERGE_FAILED"}))
    SourceApiAssociationStatus.add_member(:merge_success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE_SUCCESS', traits: {"smithy.api#enumValue" => "MERGE_SUCCESS"}))
    SourceApiAssociationStatus.add_member(:merge_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "MERGE_IN_PROGRESS"}))
    SourceApiAssociationStatus.add_member(:auto_merge_schedule_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_MERGE_SCHEDULE_FAILED', traits: {"smithy.api#enumValue" => "AUTO_MERGE_SCHEDULE_FAILED"}))
    SourceApiAssociationStatus.add_member(:deletion_scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_SCHEDULED', traits: {"smithy.api#enumValue" => "DELETION_SCHEDULED"}))
    SourceApiAssociationStatus.add_member(:deletion_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETION_IN_PROGRESS"}))
    SourceApiAssociationStatus.add_member(:deletion_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_FAILED', traits: {"smithy.api#enumValue" => "DELETION_FAILED"}))
    SourceApiAssociationSummary.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId'))
    SourceApiAssociationSummary.add_member(:association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationArn'))
    SourceApiAssociationSummary.add_member(:source_api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiId'))
    SourceApiAssociationSummary.add_member(:source_api_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceApiArn'))
    SourceApiAssociationSummary.add_member(:merged_api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiId'))
    SourceApiAssociationSummary.add_member(:merged_api_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiArn'))
    SourceApiAssociationSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    SourceApiAssociationSummary.type = Types::SourceApiAssociationSummary
    SourceApiAssociationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationSummary)
    StartDataSourceIntrospectionRequest.add_member(:rds_data_api_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDataApiConfig, location_name: 'rdsDataApiConfig'))
    StartDataSourceIntrospectionRequest.type = Types::StartDataSourceIntrospectionRequest
    StartDataSourceIntrospectionResponse.add_member(:introspection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionId'))
    StartDataSourceIntrospectionResponse.add_member(:introspection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIntrospectionStatus, location_name: 'introspectionStatus'))
    StartDataSourceIntrospectionResponse.add_member(:introspection_status_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'introspectionStatusDetail'))
    StartDataSourceIntrospectionResponse.type = Types::StartDataSourceIntrospectionResponse
    StartSchemaCreationRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaCreationRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'definition', traits: {"smithy.api#required" => {}}))
    StartSchemaCreationRequest.type = Types::StartSchemaCreationRequest
    StartSchemaCreationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatus, location_name: 'status'))
    StartSchemaCreationResponse.type = Types::StartSchemaCreationResponse
    StartSchemaMergeRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaMergeRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaMergeRequest.type = Types::StartSchemaMergeRequest
    StartSchemaMergeResponse.add_member(:source_api_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationStatus, location_name: 'sourceApiAssociationStatus'))
    StartSchemaMergeResponse.type = Types::StartSchemaMergeResponse
    SyncConfig.add_member(:conflict_handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictHandlerType, location_name: 'conflictHandler'))
    SyncConfig.add_member(:conflict_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetectionType, location_name: 'conflictDetection'))
    SyncConfig.add_member(:lambda_conflict_handler_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConflictHandlerConfig, location_name: 'lambdaConflictHandlerConfig'))
    SyncConfig.type = Types::SyncConfig
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Type.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name'))
    Type.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    Type.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    Type.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'definition'))
    Type.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format'))
    Type.type = Types::Type
    TypeDefinitionFormat.add_member(:sdl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SDL', traits: {"smithy.api#enumValue" => "SDL"}))
    TypeDefinitionFormat.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    TypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type)
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ttl', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:api_caching_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCachingBehavior, location_name: 'apiCachingBehavior', traits: {"smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCacheType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:health_metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheHealthMetricsConfig, location_name: 'healthMetricsConfig'))
    UpdateApiCacheRequest.type = Types::UpdateApiCacheRequest
    UpdateApiCacheResponse.add_member(:api_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCache, location_name: 'apiCache'))
    UpdateApiCacheResponse.type = Types::UpdateApiCacheResponse
    UpdateApiKeyRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    UpdateApiKeyRequest.add_member(:expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'expires', traits: {"smithy.api#default" => 0}))
    UpdateApiKeyRequest.type = Types::UpdateApiKeyRequest
    UpdateApiKeyResponse.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'apiKey'))
    UpdateApiKeyResponse.type = Types::UpdateApiKeyResponse
    UpdateApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateApiRequest.add_member(:owner_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact'))
    UpdateApiRequest.add_member(:event_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventConfig, location_name: 'eventConfig'))
    UpdateApiRequest.type = Types::UpdateApiRequest
    UpdateApiResponse.add_member(:api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Api, location_name: 'api'))
    UpdateApiResponse.type = Types::UpdateApiResponse
    UpdateChannelNamespaceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelNamespaceRequest.add_member(:subscribe_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'subscribeAuthModes'))
    UpdateChannelNamespaceRequest.add_member(:publish_auth_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthModes, location_name: 'publishAuthModes'))
    UpdateChannelNamespaceRequest.add_member(:code_handlers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'codeHandlers'))
    UpdateChannelNamespaceRequest.add_member(:handler_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HandlerConfigs, location_name: 'handlerConfigs'))
    UpdateChannelNamespaceRequest.type = Types::UpdateChannelNamespaceRequest
    UpdateChannelNamespaceResponse.add_member(:channel_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNamespace, location_name: 'channelNamespace'))
    UpdateChannelNamespaceResponse.type = Types::UpdateChannelNamespaceResponse
    UpdateDataSourceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    UpdateDataSourceRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRoleArn'))
    UpdateDataSourceRequest.add_member(:dynamodb_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbDataSourceConfig, location_name: 'dynamodbConfig'))
    UpdateDataSourceRequest.add_member(:lambda_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaDataSourceConfig, location_name: 'lambdaConfig'))
    UpdateDataSourceRequest.add_member(:elasticsearch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchDataSourceConfig, location_name: 'elasticsearchConfig'))
    UpdateDataSourceRequest.add_member(:open_search_service_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServiceDataSourceConfig, location_name: 'openSearchServiceConfig'))
    UpdateDataSourceRequest.add_member(:http_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpDataSourceConfig, location_name: 'httpConfig'))
    UpdateDataSourceRequest.add_member(:relational_database_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationalDatabaseDataSourceConfig, location_name: 'relationalDatabaseConfig'))
    UpdateDataSourceRequest.add_member(:event_bridge_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeDataSourceConfig, location_name: 'eventBridgeConfig'))
    UpdateDataSourceRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceLevelMetricsConfig, location_name: 'metricsConfig'))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateDataSourceResponse.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource'))
    UpdateDataSourceResponse.type = Types::UpdateDataSourceResponse
    UpdateDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainNameRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateDomainNameRequest.type = Types::UpdateDomainNameRequest
    UpdateDomainNameResponse.add_member(:domain_name_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameConfig, location_name: 'domainNameConfig'))
    UpdateDomainNameResponse.type = Types::UpdateDomainNameResponse
    UpdateFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    UpdateFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'functionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName', traits: {"smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate'))
    UpdateFunctionRequest.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate'))
    UpdateFunctionRequest.add_member(:function_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'functionVersion'))
    UpdateFunctionRequest.add_member(:sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    UpdateFunctionRequest.add_member(:max_batch_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0}))
    UpdateFunctionRequest.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    UpdateFunctionRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code'))
    UpdateFunctionRequest.type = Types::UpdateFunctionRequest
    UpdateFunctionResponse.add_member(:function_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: 'functionConfiguration'))
    UpdateFunctionResponse.type = Types::UpdateFunctionResponse
    UpdateGraphqlApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfig, location_name: 'logConfig'))
    UpdateGraphqlApiRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:user_pool_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolConfig, location_name: 'userPoolConfig'))
    UpdateGraphqlApiRequest.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectConfig, location_name: 'openIDConnectConfig'))
    UpdateGraphqlApiRequest.add_member(:additional_authentication_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAuthenticationProviders, location_name: 'additionalAuthenticationProviders'))
    UpdateGraphqlApiRequest.add_member(:xray_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'xrayEnabled', traits: {"smithy.api#default" => false}))
    UpdateGraphqlApiRequest.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAuthorizerConfig, location_name: 'lambdaAuthorizerConfig'))
    UpdateGraphqlApiRequest.add_member(:merged_api_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiExecutionRoleArn'))
    UpdateGraphqlApiRequest.add_member(:owner_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerContact'))
    UpdateGraphqlApiRequest.add_member(:introspection_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLApiIntrospectionConfig, location_name: 'introspectionConfig'))
    UpdateGraphqlApiRequest.add_member(:query_depth_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDepthLimit, location_name: 'queryDepthLimit', traits: {"smithy.api#default" => 0}))
    UpdateGraphqlApiRequest.add_member(:resolver_count_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverCountLimit, location_name: 'resolverCountLimit', traits: {"smithy.api#default" => 0}))
    UpdateGraphqlApiRequest.add_member(:enhanced_metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMetricsConfig, location_name: 'enhancedMetricsConfig'))
    UpdateGraphqlApiRequest.type = Types::UpdateGraphqlApiRequest
    UpdateGraphqlApiResponse.add_member(:graphql_api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphqlApi, location_name: 'graphqlApi'))
    UpdateGraphqlApiResponse.type = Types::UpdateGraphqlApiResponse
    UpdateResolverRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'fieldName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'dataSourceName'))
    UpdateResolverRequest.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'requestMappingTemplate'))
    UpdateResolverRequest.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTemplate, location_name: 'responseMappingTemplate'))
    UpdateResolverRequest.add_member(:kind, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverKind, location_name: 'kind'))
    UpdateResolverRequest.add_member(:pipeline_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfig, location_name: 'pipelineConfig'))
    UpdateResolverRequest.add_member(:sync_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfig, location_name: 'syncConfig'))
    UpdateResolverRequest.add_member(:caching_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CachingConfig, location_name: 'cachingConfig'))
    UpdateResolverRequest.add_member(:max_batch_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#default" => 0}))
    UpdateResolverRequest.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppSyncRuntime, location_name: 'runtime'))
    UpdateResolverRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code'))
    UpdateResolverRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverLevelMetricsConfig, location_name: 'metricsConfig'))
    UpdateResolverRequest.type = Types::UpdateResolverRequest
    UpdateResolverResponse.add_member(:resolver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolver, location_name: 'resolver'))
    UpdateResolverResponse.type = Types::UpdateResolverResponse
    UpdateSourceApiAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSourceApiAssociationRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mergedApiIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSourceApiAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    UpdateSourceApiAssociationRequest.add_member(:source_api_association_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociationConfig, location_name: 'sourceApiAssociationConfig'))
    UpdateSourceApiAssociationRequest.type = Types::UpdateSourceApiAssociationRequest
    UpdateSourceApiAssociationResponse.add_member(:source_api_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceApiAssociation, location_name: 'sourceApiAssociation'))
    UpdateSourceApiAssociationResponse.type = Types::UpdateSourceApiAssociationResponse
    UpdateTypeRequest.add_member(:api_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'typeName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTypeRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'definition'))
    UpdateTypeRequest.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeDefinitionFormat, location_name: 'format', traits: {"smithy.api#required" => {}}))
    UpdateTypeRequest.type = Types::UpdateTypeRequest
    UpdateTypeResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type'))
    UpdateTypeResponse.type = Types::UpdateTypeResponse
    UserPoolConfig.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userPoolId', traits: {"smithy.api#required" => {}}))
    UserPoolConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#required" => {}}))
    UserPoolConfig.add_member(:default_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultAction, location_name: 'defaultAction', traits: {"smithy.api#required" => {}}))
    UserPoolConfig.add_member(:app_id_client_regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'appIdClientRegex'))
    UserPoolConfig.type = Types::UserPoolConfig

    AWSDeepdishControlPlaneService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appsync#AWSDeepdishControlPlaneService"
      service.name = "AWSDeepdishControlPlaneService"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "AppSync", "arnNamespace" => "appsync", "cloudFormationName" => "AppSync", "cloudTrailEventSource" => "appsync.amazonaws.com", "endpointPrefix" => "appsync"}, "aws.auth#sigv4" => {"name" => "appsync"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS AppSync", "smithy.api#xmlNamespace" => {"uri" => "http://appsync.amazonaws.com"}}
      service.add_operation(:associate_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateApi"
        operation.name = "AssociateApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:associate_merged_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateMergedGraphqlApi"
        operation.name = "AssociateMergedGraphqlApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMergedGraphqlApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMergedGraphqlApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations", "code" => 200}}
      end)
      service.add_operation(:associate_source_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateSourceGraphqlApi"
        operation.name = "AssociateSourceGraphqlApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceGraphqlApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceGraphqlApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations", "code" => 200}}
      end)
      service.add_operation(:create_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApi"
        operation.name = "CreateApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis", "code" => 200}}
      end)
      service.add_operation(:create_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApiCache"
        operation.name = "CreateApiCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiCacheResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:create_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApiKey"
        operation.name = "CreateApiKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyValidityOutOfBoundsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/apikeys", "code" => 200}}
      end)
      service.add_operation(:create_channel_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateChannelNamespace"
        operation.name = "CreateChannelNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelNamespaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}/channelNamespaces", "code" => 200}}
      end)
      service.add_operation(:create_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateDataSource"
        operation.name = "CreateDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/datasources", "code" => 200}}
      end)
      service.add_operation(:create_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateDomainName"
        operation.name = "CreateDomainName"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainNameRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainNameResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames", "code" => 200}}
      end)
      service.add_operation(:create_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateFunction"
        operation.name = "CreateFunction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/functions", "code" => 200}}
      end)
      service.add_operation(:create_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateGraphqlApi"
        operation.name = "CreateGraphqlApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphqlApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphqlApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis", "code" => 200}}
      end)
      service.add_operation(:create_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateResolver"
        operation.name = "CreateResolver"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers", "code" => 200}}
      end)
      service.add_operation(:create_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateType"
        operation.name = "CreateType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types", "code" => 200}}
      end)
      service.add_operation(:delete_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApi"
        operation.name = "DeleteApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{apiId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApiCache"
        operation.name = "DeleteApiCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiCacheResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:delete_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApiKey"
        operation.name = "DeleteApiKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/apikeys/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_channel_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteChannelNamespace"
        operation.name = "DeleteChannelNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelNamespaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:delete_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteDomainName"
        operation.name = "DeleteDomainName"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainNameRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainNameResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:delete_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFunctionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:delete_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteGraphqlApi"
        operation.name = "DeleteGraphqlApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphqlApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphqlApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:delete_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteResolver"
        operation.name = "DeleteResolver"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:delete_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteType"
        operation.name = "DeleteType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/types/{typeName}", "code" => 200}}
      end)
      service.add_operation(:disassociate_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateApi"
        operation.name = "DisassociateApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:disassociate_merged_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateMergedGraphqlApi"
        operation.name = "DisassociateMergedGraphqlApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMergedGraphqlApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMergedGraphqlApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_source_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateSourceGraphqlApi"
        operation.name = "DisassociateSourceGraphqlApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceGraphqlApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceGraphqlApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:evaluate_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#EvaluateCode"
        operation.name = "EvaluateCode"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateCodeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateCodeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/dataplane-evaluatecode", "code" => 200}}
      end)
      service.add_operation(:evaluate_mapping_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#EvaluateMappingTemplate"
        operation.name = "EvaluateMappingTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateMappingTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateMappingTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/dataplane-evaluatetemplate", "code" => 200}}
      end)
      service.add_operation(:flush_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#FlushApiCache"
        operation.name = "FlushApiCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlushApiCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlushApiCacheResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/FlushCache", "code" => 200}}
      end)
      service.add_operation(:get_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApi"
        operation.name = "GetApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:get_api_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApiAssociation"
        operation.name = "GetApiAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:get_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApiCache"
        operation.name = "GetApiCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiCacheResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:get_channel_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetChannelNamespace"
        operation.name = "GetChannelNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelNamespaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}}
      end)
      service.add_operation(:get_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:get_data_source_introspection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDataSourceIntrospection"
        operation.name = "GetDataSourceIntrospection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceIntrospectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceIntrospectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/datasources/introspections/{introspectionId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDomainName"
        operation.name = "GetDomainName"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNameRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNameResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:get_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetFunction"
        operation.name = "GetFunction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:get_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetGraphqlApi"
        operation.name = "GetGraphqlApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphqlApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphqlApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:get_graphql_api_environment_variables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetGraphqlApiEnvironmentVariables"
        operation.name = "GetGraphqlApiEnvironmentVariables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphqlApiEnvironmentVariablesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphqlApiEnvironmentVariablesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/environmentVariables", "code" => 200}}
      end)
      service.add_operation(:get_introspection_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetIntrospectionSchema"
        operation.name = "GetIntrospectionSchema"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntrospectionSchemaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntrospectionSchemaResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLSchemaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/schema", "code" => 200}}
      end)
      service.add_operation(:get_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetResolver"
        operation.name = "GetResolver"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:get_schema_creation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetSchemaCreationStatus"
        operation.name = "GetSchemaCreationStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaCreationStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaCreationStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/schemacreation", "code" => 200}}
      end)
      service.add_operation(:get_source_api_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetSourceApiAssociation"
        operation.name = "GetSourceApiAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSourceApiAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSourceApiAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:get_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetType"
        operation.name = "GetType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}", "code" => 200}}
      end)
      service.add_operation(:list_api_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListApiKeys"
        operation.name = "ListApiKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiKeysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiKeysResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/apikeys", "code" => 200}}
        operation[:paginator] = Paginators::ListApiKeys.new
      end)
      service.add_operation(:list_apis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListApis"
        operation.name = "ListApis"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApisRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApisResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis", "code" => 200}}
        operation[:paginator] = Paginators::ListApis.new
      end)
      service.add_operation(:list_channel_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListChannelNamespaces"
        operation.name = "ListChannelNamespaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelNamespacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelNamespacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}/channelNamespaces", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelNamespaces.new
      end)
      service.add_operation(:list_data_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/datasources", "code" => 200}}
        operation[:paginator] = Paginators::ListDataSources.new
      end)
      service.add_operation(:list_domain_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListDomainNames"
        operation.name = "ListDomainNames"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainNames.new
      end)
      service.add_operation(:list_functions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions", "code" => 200}}
        operation[:paginator] = Paginators::ListFunctions.new
      end)
      service.add_operation(:list_graphql_apis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListGraphqlApis"
        operation.name = "ListGraphqlApis"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphqlApisRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphqlApisResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis", "code" => 200}}
        operation[:paginator] = Paginators::ListGraphqlApis.new
      end)
      service.add_operation(:list_resolvers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListResolvers"
        operation.name = "ListResolvers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolversRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolversResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers", "code" => 200}}
        operation[:paginator] = Paginators::ListResolvers.new
      end)
      service.add_operation(:list_resolvers_by_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListResolversByFunction"
        operation.name = "ListResolversByFunction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolversByFunctionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolversByFunctionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions/{functionId}/resolvers", "code" => 200}}
        operation[:paginator] = Paginators::ListResolversByFunction.new
      end)
      service.add_operation(:list_source_api_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListSourceApiAssociations"
        operation.name = "ListSourceApiAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceApiAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceApiAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/sourceApiAssociations", "code" => 200}}
        operation[:paginator] = Paginators::ListSourceApiAssociations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTypes"
        operation.name = "ListTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types", "code" => 200}}
        operation[:paginator] = Paginators::ListTypes.new
      end)
      service.add_operation(:list_types_by_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTypesByAssociation"
        operation.name = "ListTypesByAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesByAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesByAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/types", "code" => 200}}
        operation[:paginator] = Paginators::ListTypesByAssociation.new
      end)
      service.add_operation(:put_graphql_api_environment_variables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#PutGraphqlApiEnvironmentVariables"
        operation.name = "PutGraphqlApiEnvironmentVariables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutGraphqlApiEnvironmentVariablesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutGraphqlApiEnvironmentVariablesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apis/{apiId}/environmentVariables", "code" => 200}}
      end)
      service.add_operation(:start_data_source_introspection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartDataSourceIntrospection"
        operation.name = "StartDataSourceIntrospection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataSourceIntrospectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataSourceIntrospectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/datasources/introspections", "code" => 200}}
      end)
      service.add_operation(:start_schema_creation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartSchemaCreation"
        operation.name = "StartSchemaCreation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaCreationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaCreationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/schemacreation", "code" => 200}}
      end)
      service.add_operation(:start_schema_merge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartSchemaMerge"
        operation.name = "StartSchemaMerge"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaMergeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaMergeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/merge", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApi"
        operation.name = "UpdateApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:update_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApiCache"
        operation.name = "UpdateApiCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiCacheResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/ApiCaches/update", "code" => 200}}
      end)
      service.add_operation(:update_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApiKey"
        operation.name = "UpdateApiKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyValidityOutOfBoundsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/apikeys/{id}", "code" => 200}}
      end)
      service.add_operation(:update_channel_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateChannelNamespace"
        operation.name = "UpdateChannelNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelNamespaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}}
      end)
      service.add_operation(:update_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:update_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateDomainName"
        operation.name = "UpdateDomainName"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainNameRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainNameResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:update_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateFunction"
        operation.name = "UpdateFunction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFunctionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFunctionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:update_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateGraphqlApi"
        operation.name = "UpdateGraphqlApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGraphqlApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGraphqlApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:update_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateResolver"
        operation.name = "UpdateResolver"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:update_source_api_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateSourceApiAssociation"
        operation.name = "UpdateSourceApiAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceApiAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceApiAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:update_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateType"
        operation.name = "UpdateType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types/{typeName}", "code" => 200}}
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
