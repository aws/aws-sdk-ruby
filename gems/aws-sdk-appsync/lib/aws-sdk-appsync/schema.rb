# frozen_string_literal: true

# This is generated code!

module Aws::AppSync
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AdditionalAuthenticationProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AdditionalAuthenticationProvider", name: "AdditionalAuthenticationProvider")
    AdditionalAuthenticationProviders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#AdditionalAuthenticationProviders", name: "AdditionalAuthenticationProviders")
    Api = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#Api", name: "Api")
    ApiAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ApiAssociation", name: "ApiAssociation")
    ApiCache = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ApiCache", name: "ApiCache")
    ApiCacheStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#ApiCacheStatus", name: "ApiCacheStatus")
    ApiCacheType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#ApiCacheType", name: "ApiCacheType")
    ApiCachingBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#ApiCachingBehavior", name: "ApiCachingBehavior")
    ApiKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ApiKey", name: "ApiKey")
    ApiKeyLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ApiKeyLimitExceededException", name: "ApiKeyLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiKeyValidityOutOfBoundsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ApiKeyValidityOutOfBoundsException", name: "ApiKeyValidityOutOfBoundsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#ApiKeys", name: "ApiKeys")
    ApiLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ApiLimitExceededException", name: "ApiLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApiName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#ApiName", name: "ApiName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-\\ ]+$"})
    Apis = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#Apis", name: "Apis")
    AppSyncRuntime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AppSyncRuntime", name: "AppSyncRuntime")
    AssociateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AssociateApiRequest", name: "AssociateApiRequest")
    AssociateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AssociateApiResponse", name: "AssociateApiResponse")
    AssociateMergedGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AssociateMergedGraphqlApiRequest", name: "AssociateMergedGraphqlApiRequest")
    AssociateMergedGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AssociateMergedGraphqlApiResponse", name: "AssociateMergedGraphqlApiResponse")
    AssociateSourceGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AssociateSourceGraphqlApiRequest", name: "AssociateSourceGraphqlApiRequest")
    AssociateSourceGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AssociateSourceGraphqlApiResponse", name: "AssociateSourceGraphqlApiResponse")
    AssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#AssociationStatus", name: "AssociationStatus")
    AuthMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AuthMode", name: "AuthMode")
    AuthModes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#AuthModes", name: "AuthModes")
    AuthProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AuthProvider", name: "AuthProvider")
    AuthProviders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#AuthProviders", name: "AuthProviders")
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#AuthenticationType", name: "AuthenticationType")
    AuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AuthorizationConfig", name: "AuthorizationConfig")
    AuthorizationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#AuthorizationType", name: "AuthorizationType")
    AwsIamConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#AwsIamConfig", name: "AwsIamConfig")
    BadRequestDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#BadRequestDetail", name: "BadRequestDetail")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BadRequestReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#BadRequestReason", name: "BadRequestReason")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.appsync#Blob", name: "Blob")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.appsync#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BooleanValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.appsync#BooleanValue", name: "BooleanValue")
    CacheHealthMetricsConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#CacheHealthMetricsConfig", name: "CacheHealthMetricsConfig")
    CachingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CachingConfig", name: "CachingConfig")
    CachingKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#CachingKeys", name: "CachingKeys")
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#CertificateArn", name: "CertificateArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:(acm|iam):[a-z0-9-]*:\\d{12}:(certificate|server-certificate)/[0-9A-Za-z_/-]*$"})
    ChannelNamespace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ChannelNamespace", name: "ChannelNamespace")
    ChannelNamespaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#ChannelNamespaces", name: "ChannelNamespaces")
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#Code", name: "Code", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CodeError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CodeError", name: "CodeError")
    CodeErrorColumn = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#CodeErrorColumn", name: "CodeErrorColumn", traits: {"smithy.api#default" => 0})
    CodeErrorLine = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#CodeErrorLine", name: "CodeErrorLine", traits: {"smithy.api#default" => 0})
    CodeErrorLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CodeErrorLocation", name: "CodeErrorLocation")
    CodeErrorSpan = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#CodeErrorSpan", name: "CodeErrorSpan", traits: {"smithy.api#default" => 0})
    CodeErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#CodeErrors", name: "CodeErrors")
    CognitoConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CognitoConfig", name: "CognitoConfig")
    CognitoUserPoolConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CognitoUserPoolConfig", name: "CognitoUserPoolConfig")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictDetectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#ConflictDetectionType", name: "ConflictDetectionType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictHandlerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#ConflictHandlerType", name: "ConflictHandlerType")
    Context = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#Context", name: "Context", traits: {"smithy.api#length" => {"min" => 2, "max" => 28000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CreateApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateApiCacheRequest", name: "CreateApiCacheRequest")
    CreateApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateApiCacheResponse", name: "CreateApiCacheResponse")
    CreateApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateApiKeyRequest", name: "CreateApiKeyRequest")
    CreateApiKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateApiKeyResponse", name: "CreateApiKeyResponse")
    CreateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateApiRequest", name: "CreateApiRequest")
    CreateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateApiResponse", name: "CreateApiResponse")
    CreateChannelNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateChannelNamespaceRequest", name: "CreateChannelNamespaceRequest")
    CreateChannelNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateChannelNamespaceResponse", name: "CreateChannelNamespaceResponse")
    CreateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateDataSourceRequest", name: "CreateDataSourceRequest")
    CreateDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateDataSourceResponse", name: "CreateDataSourceResponse")
    CreateDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateDomainNameRequest", name: "CreateDomainNameRequest")
    CreateDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateDomainNameResponse", name: "CreateDomainNameResponse")
    CreateFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateFunctionRequest", name: "CreateFunctionRequest")
    CreateFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateFunctionResponse", name: "CreateFunctionResponse")
    CreateGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateGraphqlApiRequest", name: "CreateGraphqlApiRequest")
    CreateGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateGraphqlApiResponse", name: "CreateGraphqlApiResponse")
    CreateResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateResolverRequest", name: "CreateResolverRequest")
    CreateResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateResolverResponse", name: "CreateResolverResponse")
    CreateTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateTypeRequest", name: "CreateTypeRequest")
    CreateTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#CreateTypeResponse", name: "CreateTypeResponse")
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DataSource", name: "DataSource")
    DataSourceIntrospectionModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModel", name: "DataSourceIntrospectionModel")
    DataSourceIntrospectionModelField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModelField", name: "DataSourceIntrospectionModelField")
    DataSourceIntrospectionModelFieldType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModelFieldType", name: "DataSourceIntrospectionModelFieldType")
    DataSourceIntrospectionModelFieldTypeValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModelFieldTypeValues", name: "DataSourceIntrospectionModelFieldTypeValues")
    DataSourceIntrospectionModelFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModelFields", name: "DataSourceIntrospectionModelFields")
    DataSourceIntrospectionModelIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModelIndex", name: "DataSourceIntrospectionModelIndex")
    DataSourceIntrospectionModelIndexFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModelIndexFields", name: "DataSourceIntrospectionModelIndexFields")
    DataSourceIntrospectionModelIndexes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModelIndexes", name: "DataSourceIntrospectionModelIndexes")
    DataSourceIntrospectionModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionModels", name: "DataSourceIntrospectionModels")
    DataSourceIntrospectionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionResult", name: "DataSourceIntrospectionResult")
    DataSourceIntrospectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#DataSourceIntrospectionStatus", name: "DataSourceIntrospectionStatus")
    DataSourceLevelMetricsBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#DataSourceLevelMetricsBehavior", name: "DataSourceLevelMetricsBehavior")
    DataSourceLevelMetricsConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#DataSourceLevelMetricsConfig", name: "DataSourceLevelMetricsConfig")
    DataSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#DataSourceType", name: "DataSourceType")
    DataSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#DataSources", name: "DataSources")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.appsync#Date", name: "Date")
    DefaultAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#DefaultAction", name: "DefaultAction")
    DeleteApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteApiCacheRequest", name: "DeleteApiCacheRequest")
    DeleteApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteApiCacheResponse", name: "DeleteApiCacheResponse")
    DeleteApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteApiKeyRequest", name: "DeleteApiKeyRequest")
    DeleteApiKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteApiKeyResponse", name: "DeleteApiKeyResponse")
    DeleteApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteApiRequest", name: "DeleteApiRequest")
    DeleteApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteApiResponse", name: "DeleteApiResponse")
    DeleteChannelNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteChannelNamespaceRequest", name: "DeleteChannelNamespaceRequest")
    DeleteChannelNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteChannelNamespaceResponse", name: "DeleteChannelNamespaceResponse")
    DeleteDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteDataSourceRequest", name: "DeleteDataSourceRequest")
    DeleteDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteDataSourceResponse", name: "DeleteDataSourceResponse")
    DeleteDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteDomainNameRequest", name: "DeleteDomainNameRequest")
    DeleteDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteDomainNameResponse", name: "DeleteDomainNameResponse")
    DeleteFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteFunctionRequest", name: "DeleteFunctionRequest")
    DeleteFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteFunctionResponse", name: "DeleteFunctionResponse")
    DeleteGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteGraphqlApiRequest", name: "DeleteGraphqlApiRequest")
    DeleteGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteGraphqlApiResponse", name: "DeleteGraphqlApiResponse")
    DeleteResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteResolverRequest", name: "DeleteResolverRequest")
    DeleteResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteResolverResponse", name: "DeleteResolverResponse")
    DeleteTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteTypeRequest", name: "DeleteTypeRequest")
    DeleteTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeleteTypeResponse", name: "DeleteTypeResponse")
    DeltaSyncConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DeltaSyncConfig", name: "DeltaSyncConfig")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    DisassociateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DisassociateApiRequest", name: "DisassociateApiRequest")
    DisassociateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DisassociateApiResponse", name: "DisassociateApiResponse")
    DisassociateMergedGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DisassociateMergedGraphqlApiRequest", name: "DisassociateMergedGraphqlApiRequest")
    DisassociateMergedGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DisassociateMergedGraphqlApiResponse", name: "DisassociateMergedGraphqlApiResponse")
    DisassociateSourceGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DisassociateSourceGraphqlApiRequest", name: "DisassociateSourceGraphqlApiRequest")
    DisassociateSourceGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DisassociateSourceGraphqlApiResponse", name: "DisassociateSourceGraphqlApiResponse")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(\\*[\\w\\d-]*\\.)?([\\w\\d-]+\\.)+[\\w\\d-]+$"})
    DomainNameConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DomainNameConfig", name: "DomainNameConfig")
    DomainNameConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#DomainNameConfigs", name: "DomainNameConfigs")
    DynamodbDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#DynamodbDataSourceConfig", name: "DynamodbDataSourceConfig")
    ElasticsearchDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ElasticsearchDataSourceConfig", name: "ElasticsearchDataSourceConfig")
    EnhancedMetricsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EnhancedMetricsConfig", name: "EnhancedMetricsConfig")
    EnvironmentVariableKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#EnvironmentVariableKey", name: "EnvironmentVariableKey", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+\\w*$"})
    EnvironmentVariableMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appsync#EnvironmentVariableMap", name: "EnvironmentVariableMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#EnvironmentVariableValue", name: "EnvironmentVariableValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ErrorDetail", name: "ErrorDetail")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#ErrorMessage", name: "ErrorMessage")
    EvaluateCodeErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EvaluateCodeErrorDetail", name: "EvaluateCodeErrorDetail")
    EvaluateCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EvaluateCodeRequest", name: "EvaluateCodeRequest")
    EvaluateCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EvaluateCodeResponse", name: "EvaluateCodeResponse")
    EvaluateMappingTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EvaluateMappingTemplateRequest", name: "EvaluateMappingTemplateRequest")
    EvaluateMappingTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EvaluateMappingTemplateResponse", name: "EvaluateMappingTemplateResponse")
    EvaluationResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#EvaluationResult", name: "EvaluationResult", traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    EventBridgeDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EventBridgeDataSourceConfig", name: "EventBridgeDataSourceConfig")
    EventConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EventConfig", name: "EventConfig")
    EventLogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#EventLogConfig", name: "EventLogConfig")
    EventLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#EventLogLevel", name: "EventLogLevel")
    FieldLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#FieldLogLevel", name: "FieldLogLevel")
    FlushApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#FlushApiCacheRequest", name: "FlushApiCacheRequest")
    FlushApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#FlushApiCacheResponse", name: "FlushApiCacheResponse")
    FunctionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#FunctionConfiguration", name: "FunctionConfiguration")
    Functions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#Functions", name: "Functions")
    FunctionsIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#FunctionsIds", name: "FunctionsIds")
    GetApiAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetApiAssociationRequest", name: "GetApiAssociationRequest")
    GetApiAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetApiAssociationResponse", name: "GetApiAssociationResponse")
    GetApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetApiCacheRequest", name: "GetApiCacheRequest")
    GetApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetApiCacheResponse", name: "GetApiCacheResponse")
    GetApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetApiRequest", name: "GetApiRequest")
    GetApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetApiResponse", name: "GetApiResponse")
    GetChannelNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetChannelNamespaceRequest", name: "GetChannelNamespaceRequest")
    GetChannelNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetChannelNamespaceResponse", name: "GetChannelNamespaceResponse")
    GetDataSourceIntrospectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetDataSourceIntrospectionRequest", name: "GetDataSourceIntrospectionRequest")
    GetDataSourceIntrospectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetDataSourceIntrospectionResponse", name: "GetDataSourceIntrospectionResponse")
    GetDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetDataSourceRequest", name: "GetDataSourceRequest")
    GetDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetDataSourceResponse", name: "GetDataSourceResponse")
    GetDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetDomainNameRequest", name: "GetDomainNameRequest")
    GetDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetDomainNameResponse", name: "GetDomainNameResponse")
    GetFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetFunctionRequest", name: "GetFunctionRequest")
    GetFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetFunctionResponse", name: "GetFunctionResponse")
    GetGraphqlApiEnvironmentVariablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetGraphqlApiEnvironmentVariablesRequest", name: "GetGraphqlApiEnvironmentVariablesRequest")
    GetGraphqlApiEnvironmentVariablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetGraphqlApiEnvironmentVariablesResponse", name: "GetGraphqlApiEnvironmentVariablesResponse")
    GetGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetGraphqlApiRequest", name: "GetGraphqlApiRequest")
    GetGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetGraphqlApiResponse", name: "GetGraphqlApiResponse")
    GetIntrospectionSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetIntrospectionSchemaRequest", name: "GetIntrospectionSchemaRequest")
    GetIntrospectionSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetIntrospectionSchemaResponse", name: "GetIntrospectionSchemaResponse")
    GetResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetResolverRequest", name: "GetResolverRequest")
    GetResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetResolverResponse", name: "GetResolverResponse")
    GetSchemaCreationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetSchemaCreationStatusRequest", name: "GetSchemaCreationStatusRequest")
    GetSchemaCreationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetSchemaCreationStatusResponse", name: "GetSchemaCreationStatusResponse")
    GetSourceApiAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetSourceApiAssociationRequest", name: "GetSourceApiAssociationRequest")
    GetSourceApiAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetSourceApiAssociationResponse", name: "GetSourceApiAssociationResponse")
    GetTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetTypeRequest", name: "GetTypeRequest")
    GetTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GetTypeResponse", name: "GetTypeResponse")
    GraphQLApiIntrospectionConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#GraphQLApiIntrospectionConfig", name: "GraphQLApiIntrospectionConfig")
    GraphQLApiType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#GraphQLApiType", name: "GraphQLApiType")
    GraphQLApiVisibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#GraphQLApiVisibility", name: "GraphQLApiVisibility")
    GraphQLSchemaException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GraphQLSchemaException", name: "GraphQLSchemaException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GraphqlApi = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#GraphqlApi", name: "GraphqlApi")
    GraphqlApis = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#GraphqlApis", name: "GraphqlApis")
    HandlerBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#HandlerBehavior", name: "HandlerBehavior")
    HandlerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#HandlerConfig", name: "HandlerConfig")
    HandlerConfigs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#HandlerConfigs", name: "HandlerConfigs")
    HttpDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#HttpDataSourceConfig", name: "HttpDataSourceConfig")
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#Integration", name: "Integration")
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvokeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#InvokeType", name: "InvokeType")
    LambdaAuthorizerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#LambdaAuthorizerConfig", name: "LambdaAuthorizerConfig")
    LambdaConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#LambdaConfig", name: "LambdaConfig")
    LambdaConflictHandlerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#LambdaConflictHandlerConfig", name: "LambdaConflictHandlerConfig")
    LambdaDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#LambdaDataSourceConfig", name: "LambdaDataSourceConfig")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListApiKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListApiKeysRequest", name: "ListApiKeysRequest")
    ListApiKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListApiKeysResponse", name: "ListApiKeysResponse")
    ListApisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListApisRequest", name: "ListApisRequest")
    ListApisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListApisResponse", name: "ListApisResponse")
    ListChannelNamespacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListChannelNamespacesRequest", name: "ListChannelNamespacesRequest")
    ListChannelNamespacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListChannelNamespacesResponse", name: "ListChannelNamespacesResponse")
    ListDataSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListDataSourcesRequest", name: "ListDataSourcesRequest")
    ListDataSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListDataSourcesResponse", name: "ListDataSourcesResponse")
    ListDomainNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListDomainNamesRequest", name: "ListDomainNamesRequest")
    ListDomainNamesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListDomainNamesResponse", name: "ListDomainNamesResponse")
    ListFunctionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListFunctionsRequest", name: "ListFunctionsRequest")
    ListFunctionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListFunctionsResponse", name: "ListFunctionsResponse")
    ListGraphqlApisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListGraphqlApisRequest", name: "ListGraphqlApisRequest")
    ListGraphqlApisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListGraphqlApisResponse", name: "ListGraphqlApisResponse")
    ListResolversByFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListResolversByFunctionRequest", name: "ListResolversByFunctionRequest")
    ListResolversByFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListResolversByFunctionResponse", name: "ListResolversByFunctionResponse")
    ListResolversRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListResolversRequest", name: "ListResolversRequest")
    ListResolversResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListResolversResponse", name: "ListResolversResponse")
    ListSourceApiAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListSourceApiAssociationsRequest", name: "ListSourceApiAssociationsRequest")
    ListSourceApiAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListSourceApiAssociationsResponse", name: "ListSourceApiAssociationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTypesByAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListTypesByAssociationRequest", name: "ListTypesByAssociationRequest")
    ListTypesByAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListTypesByAssociationResponse", name: "ListTypesByAssociationResponse")
    ListTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListTypesRequest", name: "ListTypesRequest")
    ListTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ListTypesResponse", name: "ListTypesResponse")
    LogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#LogConfig", name: "LogConfig")
    Logs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#Logs", name: "Logs")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MapOfStringToString = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appsync#MapOfStringToString", name: "MapOfStringToString")
    MappingTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#MappingTemplate", name: "MappingTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^.*$"})
    MaxBatchSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#MaxBatchSize", name: "MaxBatchSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 25}})
    MergeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#MergeType", name: "MergeType")
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#Namespace", name: "Namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^([A-Za-z0-9](?:[A-Za-z0-9\\-]{0,48}[A-Za-z0-9])?)$"})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OpenIDConnectConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#OpenIDConnectConfig", name: "OpenIDConnectConfig")
    OpenSearchServiceDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#OpenSearchServiceDataSourceConfig", name: "OpenSearchServiceDataSourceConfig")
    OperationLevelMetricsConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#OperationLevelMetricsConfig", name: "OperationLevelMetricsConfig")
    OutErrors = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#OutErrors", name: "OutErrors", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    OutputType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#OutputType", name: "OutputType")
    OwnerContact = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#OwnerContact", name: "OwnerContact", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-\\ \\.]+$"})
    Ownership = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#Ownership", name: "Ownership")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[\\S]+$"})
    PipelineConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#PipelineConfig", name: "PipelineConfig")
    PutGraphqlApiEnvironmentVariablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#PutGraphqlApiEnvironmentVariablesRequest", name: "PutGraphqlApiEnvironmentVariablesRequest")
    PutGraphqlApiEnvironmentVariablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#PutGraphqlApiEnvironmentVariablesResponse", name: "PutGraphqlApiEnvironmentVariablesResponse")
    QueryDepthLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#QueryDepthLimit", name: "QueryDepthLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 75}})
    RdsDataApiConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#RdsDataApiConfig", name: "RdsDataApiConfig")
    RdsDataApiConfigDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#RdsDataApiConfigDatabaseName", name: "RdsDataApiConfigDatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RdsDataApiConfigResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#RdsDataApiConfigResourceArn", name: "RdsDataApiConfigResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:rds:[a-z0-9-]*:\\d{12}:cluster:[0-9A-Za-z_/-]*$"})
    RdsDataApiConfigSecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#RdsDataApiConfigSecretArn", name: "RdsDataApiConfigSecretArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]*:secretsmanager:[a-z0-9-]*:\\d{12}:secret:[0-9A-Za-z_/+=.@!-]*$"})
    RdsHttpEndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#RdsHttpEndpointConfig", name: "RdsHttpEndpointConfig")
    RelationalDatabaseDataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#RelationalDatabaseDataSourceConfig", name: "RelationalDatabaseDataSourceConfig")
    RelationalDatabaseSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#RelationalDatabaseSourceType", name: "RelationalDatabaseSourceType")
    Resolver = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#Resolver", name: "Resolver")
    ResolverCountLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#ResolverCountLimit", name: "ResolverCountLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10000}})
    ResolverKind = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#ResolverKind", name: "ResolverKind")
    ResolverLevelMetricsBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#ResolverLevelMetricsBehavior", name: "ResolverLevelMetricsBehavior")
    ResolverLevelMetricsConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#ResolverLevelMetricsConfig", name: "ResolverLevelMetricsConfig")
    Resolvers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#Resolvers", name: "Resolvers")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 70, "max" => 75}, "smithy.api#pattern" => "^arn:aws:appsync:[A-Za-z0-9_/.-]{0,63}:\\d{12}:apis/[0-9A-Za-z_-]{26}$"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[_A-Za-z][_0-9A-Za-z]*$"})
    RuntimeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#RuntimeName", name: "RuntimeName")
    SchemaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#SchemaStatus", name: "SchemaStatus")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceApiAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#SourceApiAssociation", name: "SourceApiAssociation")
    SourceApiAssociationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#SourceApiAssociationConfig", name: "SourceApiAssociationConfig")
    SourceApiAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#SourceApiAssociationStatus", name: "SourceApiAssociationStatus")
    SourceApiAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#SourceApiAssociationSummary", name: "SourceApiAssociationSummary")
    SourceApiAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#SourceApiAssociationSummaryList", name: "SourceApiAssociationSummaryList")
    StartDataSourceIntrospectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#StartDataSourceIntrospectionRequest", name: "StartDataSourceIntrospectionRequest")
    StartDataSourceIntrospectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#StartDataSourceIntrospectionResponse", name: "StartDataSourceIntrospectionResponse")
    StartSchemaCreationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#StartSchemaCreationRequest", name: "StartSchemaCreationRequest")
    StartSchemaCreationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#StartSchemaCreationResponse", name: "StartSchemaCreationResponse")
    StartSchemaMergeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#StartSchemaMergeRequest", name: "StartSchemaMergeRequest")
    StartSchemaMergeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#StartSchemaMergeResponse", name: "StartSchemaMergeResponse")
    Stash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#Stash", name: "Stash", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#String", name: "String")
    SyncConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#SyncConfig", name: "SyncConfig")
    TTL = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appsync#TTL", name: "TTL", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 3600}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[ a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appsync#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w+-=\\.:/@]*$"})
    Template = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appsync#Template", name: "Template", traits: {"smithy.api#length" => {"min" => 2, "max" => 65536}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.appsync#Timestamp", name: "Timestamp")
    Type = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#Type", name: "Type")
    TypeDefinitionFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appsync#TypeDefinitionFormat", name: "TypeDefinitionFormat")
    TypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appsync#TypeList", name: "TypeList")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApiCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateApiCacheRequest", name: "UpdateApiCacheRequest")
    UpdateApiCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateApiCacheResponse", name: "UpdateApiCacheResponse")
    UpdateApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateApiKeyRequest", name: "UpdateApiKeyRequest")
    UpdateApiKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateApiKeyResponse", name: "UpdateApiKeyResponse")
    UpdateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateApiRequest", name: "UpdateApiRequest")
    UpdateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateApiResponse", name: "UpdateApiResponse")
    UpdateChannelNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateChannelNamespaceRequest", name: "UpdateChannelNamespaceRequest")
    UpdateChannelNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateChannelNamespaceResponse", name: "UpdateChannelNamespaceResponse")
    UpdateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateDataSourceRequest", name: "UpdateDataSourceRequest")
    UpdateDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateDataSourceResponse", name: "UpdateDataSourceResponse")
    UpdateDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateDomainNameRequest", name: "UpdateDomainNameRequest")
    UpdateDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateDomainNameResponse", name: "UpdateDomainNameResponse")
    UpdateFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateFunctionRequest", name: "UpdateFunctionRequest")
    UpdateFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateFunctionResponse", name: "UpdateFunctionResponse")
    UpdateGraphqlApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateGraphqlApiRequest", name: "UpdateGraphqlApiRequest")
    UpdateGraphqlApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateGraphqlApiResponse", name: "UpdateGraphqlApiResponse")
    UpdateResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateResolverRequest", name: "UpdateResolverRequest")
    UpdateResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateResolverResponse", name: "UpdateResolverResponse")
    UpdateSourceApiAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateSourceApiAssociationRequest", name: "UpdateSourceApiAssociationRequest")
    UpdateSourceApiAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateSourceApiAssociationResponse", name: "UpdateSourceApiAssociationResponse")
    UpdateTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateTypeRequest", name: "UpdateTypeRequest")
    UpdateTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UpdateTypeResponse", name: "UpdateTypeResponse")
    UserPoolConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appsync#UserPoolConfig", name: "UserPoolConfig")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalAuthenticationProvider.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authenticationType"))
    AdditionalAuthenticationProvider.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectConfig, name: "openIDConnectConfig"))
    AdditionalAuthenticationProvider.add_member(:user_pool_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoUserPoolConfig, name: "userPoolConfig"))
    AdditionalAuthenticationProvider.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaAuthorizerConfig, name: "lambdaAuthorizerConfig"))
    AdditionalAuthenticationProvider.type = Types::AdditionalAuthenticationProvider
    AdditionalAuthenticationProviders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAuthenticationProvider, name: "member"))
    Api.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId"))
    Api.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiName, name: "name"))
    Api.add_member(:owner_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerContact, name: "ownerContact"))
    Api.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Api.add_member(:dns, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "dns"))
    Api.add_member(:api_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiArn"))
    Api.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    Api.add_member(:xray_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "xrayEnabled", traits: {"smithy.api#default" => false}))
    Api.add_member(:waf_web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "wafWebAclArn"))
    Api.add_member(:event_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventConfig, name: "eventConfig"))
    Api.type = Types::Api
    ApiAssociation.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    ApiAssociation.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId"))
    ApiAssociation.add_member(:association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStatus, name: "associationStatus"))
    ApiAssociation.add_member(:deployment_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentDetail"))
    ApiAssociation.type = Types::ApiAssociation
    ApiCache.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ttl", traits: {"smithy.api#default" => 0}))
    ApiCache.add_member(:api_caching_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCachingBehavior, name: "apiCachingBehavior"))
    ApiCache.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "transitEncryptionEnabled", traits: {"smithy.api#default" => false}))
    ApiCache.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "atRestEncryptionEnabled", traits: {"smithy.api#default" => false}))
    ApiCache.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCacheType, name: "type"))
    ApiCache.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCacheStatus, name: "status"))
    ApiCache.add_member(:health_metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheHealthMetricsConfig, name: "healthMetricsConfig"))
    ApiCache.type = Types::ApiCache
    ApiCacheStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ApiCacheStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ApiCacheStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ApiCacheStatus.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ApiCacheStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ApiCacheType.add_member(:t2_small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T2_SMALL", traits: {"smithy.api#enumValue" => "T2_SMALL"}))
    ApiCacheType.add_member(:t2_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T2_MEDIUM", traits: {"smithy.api#enumValue" => "T2_MEDIUM"}))
    ApiCacheType.add_member(:r4_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "R4_LARGE", traits: {"smithy.api#enumValue" => "R4_LARGE"}))
    ApiCacheType.add_member(:r4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "R4_XLARGE", traits: {"smithy.api#enumValue" => "R4_XLARGE"}))
    ApiCacheType.add_member(:r4_2_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "R4_2XLARGE", traits: {"smithy.api#enumValue" => "R4_2XLARGE"}))
    ApiCacheType.add_member(:r4_4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "R4_4XLARGE", traits: {"smithy.api#enumValue" => "R4_4XLARGE"}))
    ApiCacheType.add_member(:r4_8_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "R4_8XLARGE", traits: {"smithy.api#enumValue" => "R4_8XLARGE"}))
    ApiCacheType.add_member(:small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALL", traits: {"smithy.api#enumValue" => "SMALL"}))
    ApiCacheType.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ApiCacheType.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE", traits: {"smithy.api#enumValue" => "LARGE"}))
    ApiCacheType.add_member(:xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XLARGE", traits: {"smithy.api#enumValue" => "XLARGE"}))
    ApiCacheType.add_member(:large_2_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE_2X", traits: {"smithy.api#enumValue" => "LARGE_2X"}))
    ApiCacheType.add_member(:large_4_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE_4X", traits: {"smithy.api#enumValue" => "LARGE_4X"}))
    ApiCacheType.add_member(:large_8_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE_8X", traits: {"smithy.api#enumValue" => "LARGE_8X"}))
    ApiCacheType.add_member(:large_12_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE_12X", traits: {"smithy.api#enumValue" => "LARGE_12X"}))
    ApiCachingBehavior.add_member(:full_request_caching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_REQUEST_CACHING", traits: {"smithy.api#enumValue" => "FULL_REQUEST_CACHING"}))
    ApiCachingBehavior.add_member(:per_resolver_caching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_RESOLVER_CACHING", traits: {"smithy.api#enumValue" => "PER_RESOLVER_CACHING"}))
    ApiCachingBehavior.add_member(:operation_level_caching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_LEVEL_CACHING", traits: {"smithy.api#enumValue" => "OPERATION_LEVEL_CACHING"}))
    ApiKey.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    ApiKey.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    ApiKey.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "expires", traits: {"smithy.api#default" => 0}))
    ApiKey.add_member(:deletes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "deletes", traits: {"smithy.api#default" => 0}))
    ApiKey.type = Types::ApiKey
    ApiKeyLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ApiKeyLimitExceededException.type = Types::ApiKeyLimitExceededException
    ApiKeyValidityOutOfBoundsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ApiKeyValidityOutOfBoundsException.type = Types::ApiKeyValidityOutOfBoundsException
    ApiKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "member"))
    ApiLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ApiLimitExceededException.type = Types::ApiLimitExceededException
    Apis.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Api, name: "member"))
    AppSyncRuntime.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeName, name: "name", traits: {"smithy.api#required" => {}}))
    AppSyncRuntime.add_member(:runtime_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "runtimeVersion", traits: {"smithy.api#required" => {}}))
    AppSyncRuntime.type = Types::AppSyncRuntime
    AssociateApiRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#required" => {}}))
    AssociateApiRequest.type = Types::AssociateApiRequest
    AssociateApiResponse.add_member(:api_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiAssociation, name: "apiAssociation"))
    AssociateApiResponse.type = Types::AssociateApiResponse
    AssociateMergedGraphqlApiRequest.add_member(:source_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceApiIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMergedGraphqlApiRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiIdentifier", traits: {"smithy.api#required" => {}}))
    AssociateMergedGraphqlApiRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    AssociateMergedGraphqlApiRequest.add_member(:source_api_association_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationConfig, name: "sourceApiAssociationConfig"))
    AssociateMergedGraphqlApiRequest.type = Types::AssociateMergedGraphqlApiRequest
    AssociateMergedGraphqlApiResponse.add_member(:source_api_association, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociation, name: "sourceApiAssociation"))
    AssociateMergedGraphqlApiResponse.type = Types::AssociateMergedGraphqlApiResponse
    AssociateSourceGraphqlApiRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateSourceGraphqlApiRequest.add_member(:source_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceApiIdentifier", traits: {"smithy.api#required" => {}}))
    AssociateSourceGraphqlApiRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    AssociateSourceGraphqlApiRequest.add_member(:source_api_association_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationConfig, name: "sourceApiAssociationConfig"))
    AssociateSourceGraphqlApiRequest.type = Types::AssociateSourceGraphqlApiRequest
    AssociateSourceGraphqlApiResponse.add_member(:source_api_association, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociation, name: "sourceApiAssociation"))
    AssociateSourceGraphqlApiResponse.type = Types::AssociateSourceGraphqlApiResponse
    AssociationStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processing", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    AssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    AssociationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AuthMode.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authType", traits: {"smithy.api#required" => {}}))
    AuthMode.type = Types::AuthMode
    AuthModes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMode, name: "member"))
    AuthProvider.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authType", traits: {"smithy.api#required" => {}}))
    AuthProvider.add_member(:cognito_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoConfig, name: "cognitoConfig"))
    AuthProvider.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectConfig, name: "openIDConnectConfig"))
    AuthProvider.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaAuthorizerConfig, name: "lambdaAuthorizerConfig"))
    AuthProvider.type = Types::AuthProvider
    AuthProviders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthProvider, name: "member"))
    AuthenticationType.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_KEY", traits: {"smithy.api#enumValue" => "API_KEY"}))
    AuthenticationType.add_member(:aws_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_IAM", traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    AuthenticationType.add_member(:amazon_cognito_user_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_COGNITO_USER_POOLS", traits: {"smithy.api#enumValue" => "AMAZON_COGNITO_USER_POOLS"}))
    AuthenticationType.add_member(:openid_connect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPENID_CONNECT", traits: {"smithy.api#enumValue" => "OPENID_CONNECT"}))
    AuthenticationType.add_member(:aws_lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_LAMBDA", traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    AuthorizationConfig.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationType, name: "authorizationType", traits: {"smithy.api#required" => {}}))
    AuthorizationConfig.add_member(:aws_iam_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsIamConfig, name: "awsIamConfig"))
    AuthorizationConfig.type = Types::AuthorizationConfig
    AuthorizationType.add_member(:aws_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_IAM", traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    AwsIamConfig.add_member(:signing_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "signingRegion"))
    AwsIamConfig.add_member(:signing_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "signingServiceName"))
    AwsIamConfig.type = Types::AwsIamConfig
    BadRequestDetail.add_member(:code_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeErrors, name: "codeErrors"))
    BadRequestDetail.type = Types::BadRequestDetail
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    BadRequestException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BadRequestReason, name: "reason"))
    BadRequestException.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: BadRequestDetail, name: "detail"))
    BadRequestException.type = Types::BadRequestException
    BadRequestReason.add_member(:code_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_ERROR", traits: {"smithy.api#enumValue" => "CODE_ERROR"}))
    CacheHealthMetricsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CacheHealthMetricsConfig.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CachingConfig.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ttl", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CachingConfig.add_member(:caching_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: CachingKeys, name: "cachingKeys"))
    CachingConfig.type = Types::CachingConfig
    CachingKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ChannelNamespace.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId"))
    ChannelNamespace.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "name"))
    ChannelNamespace.add_member(:subscribe_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "subscribeAuthModes"))
    ChannelNamespace.add_member(:publish_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "publishAuthModes"))
    ChannelNamespace.add_member(:code_handlers, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "codeHandlers"))
    ChannelNamespace.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ChannelNamespace.add_member(:channel_namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "channelNamespaceArn"))
    ChannelNamespace.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    ChannelNamespace.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModified"))
    ChannelNamespace.add_member(:handler_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerConfigs, name: "handlerConfigs"))
    ChannelNamespace.type = Types::ChannelNamespace
    ChannelNamespaces.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelNamespace, name: "member"))
    CodeError.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorType"))
    CodeError.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    CodeError.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeErrorLocation, name: "location"))
    CodeError.type = Types::CodeError
    CodeErrorLocation.add_member(:line, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeErrorLine, name: "line", traits: {"smithy.api#default" => 0}))
    CodeErrorLocation.add_member(:column, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeErrorColumn, name: "column", traits: {"smithy.api#default" => 0}))
    CodeErrorLocation.add_member(:span, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeErrorSpan, name: "span", traits: {"smithy.api#default" => 0}))
    CodeErrorLocation.type = Types::CodeErrorLocation
    CodeErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeError, name: "member"))
    CognitoConfig.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "userPoolId", traits: {"smithy.api#required" => {}}))
    CognitoConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsRegion", traits: {"smithy.api#required" => {}}))
    CognitoConfig.add_member(:app_id_client_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "appIdClientRegex"))
    CognitoConfig.type = Types::CognitoConfig
    CognitoUserPoolConfig.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "userPoolId", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsRegion", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfig.add_member(:app_id_client_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "appIdClientRegex"))
    CognitoUserPoolConfig.type = Types::CognitoUserPoolConfig
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictDetectionType.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERSION", traits: {"smithy.api#enumValue" => "VERSION"}))
    ConflictDetectionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConflictException.type = Types::ConflictException
    ConflictHandlerType.add_member(:optimistic_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMISTIC_CONCURRENCY", traits: {"smithy.api#enumValue" => "OPTIMISTIC_CONCURRENCY"}))
    ConflictHandlerType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA", traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ConflictHandlerType.add_member(:automerge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMERGE", traits: {"smithy.api#enumValue" => "AUTOMERGE"}))
    ConflictHandlerType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    CreateApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ttl", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "transitEncryptionEnabled", traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "5/15/2025", "message" => "transitEncryptionEnabled attribute is deprecated. Encryption in transit is always enabled."}}))
    CreateApiCacheRequest.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "atRestEncryptionEnabled", traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"since" => "5/15/2025", "message" => "atRestEncryptionEnabled attribute is deprecated. Encryption at rest is always enabled."}}))
    CreateApiCacheRequest.add_member(:api_caching_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCachingBehavior, name: "apiCachingBehavior", traits: {"smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCacheType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateApiCacheRequest.add_member(:health_metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheHealthMetricsConfig, name: "healthMetricsConfig"))
    CreateApiCacheRequest.type = Types::CreateApiCacheRequest
    CreateApiCacheResponse.add_member(:api_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCache, name: "apiCache"))
    CreateApiCacheResponse.type = Types::CreateApiCacheResponse
    CreateApiKeyRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApiKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateApiKeyRequest.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "expires", traits: {"smithy.api#default" => 0}))
    CreateApiKeyRequest.type = Types::CreateApiKeyRequest
    CreateApiKeyResponse.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "apiKey"))
    CreateApiKeyResponse.type = Types::CreateApiKeyResponse
    CreateApiRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateApiRequest.add_member(:owner_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownerContact"))
    CreateApiRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateApiRequest.add_member(:event_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventConfig, name: "eventConfig", traits: {"smithy.api#required" => {}}))
    CreateApiRequest.type = Types::CreateApiRequest
    CreateApiResponse.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: Api, name: "api"))
    CreateApiResponse.type = Types::CreateApiResponse
    CreateChannelNamespaceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "name", traits: {"smithy.api#required" => {}}))
    CreateChannelNamespaceRequest.add_member(:subscribe_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "subscribeAuthModes"))
    CreateChannelNamespaceRequest.add_member(:publish_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "publishAuthModes"))
    CreateChannelNamespaceRequest.add_member(:code_handlers, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "codeHandlers"))
    CreateChannelNamespaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateChannelNamespaceRequest.add_member(:handler_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerConfigs, name: "handlerConfigs"))
    CreateChannelNamespaceRequest.type = Types::CreateChannelNamespaceRequest
    CreateChannelNamespaceResponse.add_member(:channel_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelNamespace, name: "channelNamespace"))
    CreateChannelNamespaceResponse.type = Types::CreateChannelNamespaceResponse
    CreateDataSourceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateDataSourceRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRoleArn"))
    CreateDataSourceRequest.add_member(:dynamodb_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamodbDataSourceConfig, name: "dynamodbConfig"))
    CreateDataSourceRequest.add_member(:lambda_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaDataSourceConfig, name: "lambdaConfig"))
    CreateDataSourceRequest.add_member(:elasticsearch_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDataSourceConfig, name: "elasticsearchConfig"))
    CreateDataSourceRequest.add_member(:open_search_service_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchServiceDataSourceConfig, name: "openSearchServiceConfig"))
    CreateDataSourceRequest.add_member(:http_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpDataSourceConfig, name: "httpConfig"))
    CreateDataSourceRequest.add_member(:relational_database_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseDataSourceConfig, name: "relationalDatabaseConfig"))
    CreateDataSourceRequest.add_member(:event_bridge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDataSourceConfig, name: "eventBridgeConfig"))
    CreateDataSourceRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceLevelMetricsConfig, name: "metricsConfig"))
    CreateDataSourceRequest.type = Types::CreateDataSourceRequest
    CreateDataSourceResponse.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "dataSource"))
    CreateDataSourceResponse.type = Types::CreateDataSourceResponse
    CreateDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "certificateArn", traits: {"smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateDomainNameRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDomainNameRequest.type = Types::CreateDomainNameRequest
    CreateDomainNameResponse.add_member(:domain_name_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfig, name: "domainNameConfig"))
    CreateDomainNameResponse.type = Types::CreateDomainNameResponse
    CreateFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateFunctionRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "dataSourceName", traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "requestMappingTemplate"))
    CreateFunctionRequest.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "responseMappingTemplate"))
    CreateFunctionRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "functionVersion"))
    CreateFunctionRequest.add_member(:sync_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfig, name: "syncConfig"))
    CreateFunctionRequest.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBatchSize, name: "maxBatchSize", traits: {"smithy.api#default" => 0}))
    CreateFunctionRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSyncRuntime, name: "runtime"))
    CreateFunctionRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    CreateFunctionRequest.type = Types::CreateFunctionRequest
    CreateFunctionResponse.add_member(:function_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "functionConfiguration"))
    CreateFunctionResponse.type = Types::CreateFunctionResponse
    CreateGraphqlApiRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    CreateGraphqlApiRequest.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfig, name: "logConfig"))
    CreateGraphqlApiRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authenticationType", traits: {"smithy.api#required" => {}}))
    CreateGraphqlApiRequest.add_member(:user_pool_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolConfig, name: "userPoolConfig"))
    CreateGraphqlApiRequest.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectConfig, name: "openIDConnectConfig"))
    CreateGraphqlApiRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateGraphqlApiRequest.add_member(:additional_authentication_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAuthenticationProviders, name: "additionalAuthenticationProviders"))
    CreateGraphqlApiRequest.add_member(:xray_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "xrayEnabled", traits: {"smithy.api#default" => false}))
    CreateGraphqlApiRequest.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaAuthorizerConfig, name: "lambdaAuthorizerConfig"))
    CreateGraphqlApiRequest.add_member(:api_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLApiType, name: "apiType"))
    CreateGraphqlApiRequest.add_member(:merged_api_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiExecutionRoleArn"))
    CreateGraphqlApiRequest.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLApiVisibility, name: "visibility"))
    CreateGraphqlApiRequest.add_member(:owner_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownerContact"))
    CreateGraphqlApiRequest.add_member(:introspection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLApiIntrospectionConfig, name: "introspectionConfig"))
    CreateGraphqlApiRequest.add_member(:query_depth_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDepthLimit, name: "queryDepthLimit", traits: {"smithy.api#default" => 0}))
    CreateGraphqlApiRequest.add_member(:resolver_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverCountLimit, name: "resolverCountLimit", traits: {"smithy.api#default" => 0}))
    CreateGraphqlApiRequest.add_member(:enhanced_metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMetricsConfig, name: "enhancedMetricsConfig"))
    CreateGraphqlApiRequest.type = Types::CreateGraphqlApiRequest
    CreateGraphqlApiResponse.add_member(:graphql_api, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphqlApi, name: "graphqlApi"))
    CreateGraphqlApiResponse.type = Types::CreateGraphqlApiResponse
    CreateResolverRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "typeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "fieldName", traits: {"smithy.api#required" => {}}))
    CreateResolverRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "dataSourceName"))
    CreateResolverRequest.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "requestMappingTemplate"))
    CreateResolverRequest.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "responseMappingTemplate"))
    CreateResolverRequest.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverKind, name: "kind"))
    CreateResolverRequest.add_member(:pipeline_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineConfig, name: "pipelineConfig"))
    CreateResolverRequest.add_member(:sync_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfig, name: "syncConfig"))
    CreateResolverRequest.add_member(:caching_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachingConfig, name: "cachingConfig"))
    CreateResolverRequest.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBatchSize, name: "maxBatchSize", traits: {"smithy.api#default" => 0}))
    CreateResolverRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSyncRuntime, name: "runtime"))
    CreateResolverRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    CreateResolverRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverLevelMetricsConfig, name: "metricsConfig"))
    CreateResolverRequest.type = Types::CreateResolverRequest
    CreateResolverResponse.add_member(:resolver, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolver, name: "resolver"))
    CreateResolverResponse.type = Types::CreateResolverResponse
    CreateTypeRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "definition", traits: {"smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeDefinitionFormat, name: "format", traits: {"smithy.api#required" => {}}))
    CreateTypeRequest.type = Types::CreateTypeRequest
    CreateTypeResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type"))
    CreateTypeResponse.type = Types::CreateTypeResponse
    DataSource.add_member(:data_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dataSourceArn"))
    DataSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    DataSource.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    DataSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "type"))
    DataSource.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRoleArn"))
    DataSource.add_member(:dynamodb_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamodbDataSourceConfig, name: "dynamodbConfig"))
    DataSource.add_member(:lambda_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaDataSourceConfig, name: "lambdaConfig"))
    DataSource.add_member(:elasticsearch_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDataSourceConfig, name: "elasticsearchConfig"))
    DataSource.add_member(:open_search_service_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchServiceDataSourceConfig, name: "openSearchServiceConfig"))
    DataSource.add_member(:http_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpDataSourceConfig, name: "httpConfig"))
    DataSource.add_member(:relational_database_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseDataSourceConfig, name: "relationalDatabaseConfig"))
    DataSource.add_member(:event_bridge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDataSourceConfig, name: "eventBridgeConfig"))
    DataSource.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceLevelMetricsConfig, name: "metricsConfig"))
    DataSource.type = Types::DataSource
    DataSourceIntrospectionModel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DataSourceIntrospectionModel.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelFields, name: "fields"))
    DataSourceIntrospectionModel.add_member(:primary_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelIndex, name: "primaryKey"))
    DataSourceIntrospectionModel.add_member(:indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelIndexes, name: "indexes"))
    DataSourceIntrospectionModel.add_member(:sdl, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sdl"))
    DataSourceIntrospectionModel.type = Types::DataSourceIntrospectionModel
    DataSourceIntrospectionModelField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DataSourceIntrospectionModelField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelFieldType, name: "type"))
    DataSourceIntrospectionModelField.add_member(:length, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "length", traits: {"smithy.api#default" => 0}))
    DataSourceIntrospectionModelField.type = Types::DataSourceIntrospectionModelField
    DataSourceIntrospectionModelFieldType.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kind"))
    DataSourceIntrospectionModelFieldType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DataSourceIntrospectionModelFieldType.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelFieldType, name: "type"))
    DataSourceIntrospectionModelFieldType.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelFieldTypeValues, name: "values"))
    DataSourceIntrospectionModelFieldType.type = Types::DataSourceIntrospectionModelFieldType
    DataSourceIntrospectionModelFieldTypeValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    DataSourceIntrospectionModelFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelField, name: "member"))
    DataSourceIntrospectionModelIndex.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DataSourceIntrospectionModelIndex.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelIndexFields, name: "fields"))
    DataSourceIntrospectionModelIndex.type = Types::DataSourceIntrospectionModelIndex
    DataSourceIntrospectionModelIndexFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    DataSourceIntrospectionModelIndexes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModelIndex, name: "member"))
    DataSourceIntrospectionModels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModel, name: "member"))
    DataSourceIntrospectionResult.add_member(:models, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionModels, name: "models"))
    DataSourceIntrospectionResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DataSourceIntrospectionResult.type = Types::DataSourceIntrospectionResult
    DataSourceIntrospectionStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    DataSourceIntrospectionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceIntrospectionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DataSourceLevelMetricsBehavior.add_member(:full_request_data_source_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_REQUEST_DATA_SOURCE_METRICS", traits: {"smithy.api#enumValue" => "FULL_REQUEST_DATA_SOURCE_METRICS"}))
    DataSourceLevelMetricsBehavior.add_member(:per_data_source_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_DATA_SOURCE_METRICS", traits: {"smithy.api#enumValue" => "PER_DATA_SOURCE_METRICS"}))
    DataSourceLevelMetricsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DataSourceLevelMetricsConfig.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DataSourceType.add_member(:aws_lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_LAMBDA", traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    DataSourceType.add_member(:amazon_dynamodb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_DYNAMODB", traits: {"smithy.api#enumValue" => "AMAZON_DYNAMODB"}))
    DataSourceType.add_member(:amazon_elasticsearch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_ELASTICSEARCH", traits: {"smithy.api#enumValue" => "AMAZON_ELASTICSEARCH"}))
    DataSourceType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DataSourceType.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    DataSourceType.add_member(:relational_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELATIONAL_DATABASE", traits: {"smithy.api#enumValue" => "RELATIONAL_DATABASE"}))
    DataSourceType.add_member(:amazon_opensearch_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_OPENSEARCH_SERVICE", traits: {"smithy.api#enumValue" => "AMAZON_OPENSEARCH_SERVICE"}))
    DataSourceType.add_member(:amazon_eventbridge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_EVENTBRIDGE", traits: {"smithy.api#enumValue" => "AMAZON_EVENTBRIDGE"}))
    DataSourceType.add_member(:amazon_bedrock_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_BEDROCK_RUNTIME", traits: {"smithy.api#enumValue" => "AMAZON_BEDROCK_RUNTIME"}))
    DataSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "member"))
    DefaultAction.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    DefaultAction.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    DeleteApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiCacheRequest.type = Types::DeleteApiCacheRequest
    DeleteApiCacheResponse.type = Types::DeleteApiCacheResponse
    DeleteApiKeyRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiKeyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiKeyRequest.type = Types::DeleteApiKeyRequest
    DeleteApiKeyResponse.type = Types::DeleteApiKeyResponse
    DeleteApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiRequest.type = Types::DeleteApiRequest
    DeleteApiResponse.type = Types::DeleteApiResponse
    DeleteChannelNamespaceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelNamespaceRequest.type = Types::DeleteChannelNamespaceRequest
    DeleteChannelNamespaceResponse.type = Types::DeleteChannelNamespaceResponse
    DeleteDataSourceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteDataSourceResponse.type = Types::DeleteDataSourceResponse
    DeleteDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainNameRequest.type = Types::DeleteDomainNameRequest
    DeleteDomainNameResponse.type = Types::DeleteDomainNameResponse
    DeleteFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "functionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest
    DeleteFunctionResponse.type = Types::DeleteFunctionResponse
    DeleteGraphqlApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGraphqlApiRequest.type = Types::DeleteGraphqlApiRequest
    DeleteGraphqlApiResponse.type = Types::DeleteGraphqlApiResponse
    DeleteResolverRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "typeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "fieldName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResolverRequest.type = Types::DeleteResolverRequest
    DeleteResolverResponse.type = Types::DeleteResolverResponse
    DeleteTypeRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "typeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTypeRequest.type = Types::DeleteTypeRequest
    DeleteTypeResponse.type = Types::DeleteTypeResponse
    DeltaSyncConfig.add_member(:base_table_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "baseTableTTL", traits: {"smithy.api#default" => 0}))
    DeltaSyncConfig.add_member(:delta_sync_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deltaSyncTableName"))
    DeltaSyncConfig.add_member(:delta_sync_table_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "deltaSyncTableTTL", traits: {"smithy.api#default" => 0}))
    DeltaSyncConfig.type = Types::DeltaSyncConfig
    DisassociateApiRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateApiRequest.type = Types::DisassociateApiRequest
    DisassociateApiResponse.type = Types::DisassociateApiResponse
    DisassociateMergedGraphqlApiRequest.add_member(:source_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceApiIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMergedGraphqlApiRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMergedGraphqlApiRequest.type = Types::DisassociateMergedGraphqlApiRequest
    DisassociateMergedGraphqlApiResponse.add_member(:source_api_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationStatus, name: "sourceApiAssociationStatus"))
    DisassociateMergedGraphqlApiResponse.type = Types::DisassociateMergedGraphqlApiResponse
    DisassociateSourceGraphqlApiRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSourceGraphqlApiRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSourceGraphqlApiRequest.type = Types::DisassociateSourceGraphqlApiRequest
    DisassociateSourceGraphqlApiResponse.add_member(:source_api_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationStatus, name: "sourceApiAssociationStatus"))
    DisassociateSourceGraphqlApiResponse.type = Types::DisassociateSourceGraphqlApiResponse
    DomainNameConfig.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    DomainNameConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DomainNameConfig.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "certificateArn"))
    DomainNameConfig.add_member(:appsync_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "appsyncDomainName"))
    DomainNameConfig.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hostedZoneId"))
    DomainNameConfig.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    DomainNameConfig.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn"))
    DomainNameConfig.type = Types::DomainNameConfig
    DomainNameConfigs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfig, name: "member"))
    DynamodbDataSourceConfig.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tableName", traits: {"smithy.api#required" => {}}))
    DynamodbDataSourceConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsRegion", traits: {"smithy.api#required" => {}}))
    DynamodbDataSourceConfig.add_member(:use_caller_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useCallerCredentials", traits: {"smithy.api#default" => false}))
    DynamodbDataSourceConfig.add_member(:delta_sync_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeltaSyncConfig, name: "deltaSyncConfig"))
    DynamodbDataSourceConfig.add_member(:versioned, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "versioned", traits: {"smithy.api#default" => false}))
    DynamodbDataSourceConfig.type = Types::DynamodbDataSourceConfig
    ElasticsearchDataSourceConfig.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endpoint", traits: {"smithy.api#required" => {}}))
    ElasticsearchDataSourceConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsRegion", traits: {"smithy.api#required" => {}}))
    ElasticsearchDataSourceConfig.type = Types::ElasticsearchDataSourceConfig
    EnhancedMetricsConfig.add_member(:resolver_level_metrics_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverLevelMetricsBehavior, name: "resolverLevelMetricsBehavior", traits: {"smithy.api#required" => {}}))
    EnhancedMetricsConfig.add_member(:data_source_level_metrics_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceLevelMetricsBehavior, name: "dataSourceLevelMetricsBehavior", traits: {"smithy.api#required" => {}}))
    EnhancedMetricsConfig.add_member(:operation_level_metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationLevelMetricsConfig, name: "operationLevelMetricsConfig", traits: {"smithy.api#required" => {}}))
    EnhancedMetricsConfig.type = Types::EnhancedMetricsConfig
    EnvironmentVariableMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableKey, name: "key"))
    EnvironmentVariableMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableValue, name: "value"))
    ErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ErrorDetail.type = Types::ErrorDetail
    EvaluateCodeErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    EvaluateCodeErrorDetail.add_member(:code_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeErrors, name: "codeErrors"))
    EvaluateCodeErrorDetail.type = Types::EvaluateCodeErrorDetail
    EvaluateCodeRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSyncRuntime, name: "runtime", traits: {"smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code", traits: {"smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "context", traits: {"smithy.api#required" => {}}))
    EvaluateCodeRequest.add_member(:function, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "function"))
    EvaluateCodeRequest.type = Types::EvaluateCodeRequest
    EvaluateCodeResponse.add_member(:evaluation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResult, name: "evaluationResult"))
    EvaluateCodeResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluateCodeErrorDetail, name: "error"))
    EvaluateCodeResponse.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Logs, name: "logs"))
    EvaluateCodeResponse.add_member(:stash, ::Smithy::Schema::Shapes::MemberShape.new(target: Stash, name: "stash"))
    EvaluateCodeResponse.add_member(:out_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: OutErrors, name: "outErrors"))
    EvaluateCodeResponse.type = Types::EvaluateCodeResponse
    EvaluateMappingTemplateRequest.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, name: "template", traits: {"smithy.api#required" => {}}))
    EvaluateMappingTemplateRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "context", traits: {"smithy.api#required" => {}}))
    EvaluateMappingTemplateRequest.type = Types::EvaluateMappingTemplateRequest
    EvaluateMappingTemplateResponse.add_member(:evaluation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResult, name: "evaluationResult"))
    EvaluateMappingTemplateResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "error"))
    EvaluateMappingTemplateResponse.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Logs, name: "logs"))
    EvaluateMappingTemplateResponse.add_member(:stash, ::Smithy::Schema::Shapes::MemberShape.new(target: Stash, name: "stash"))
    EvaluateMappingTemplateResponse.add_member(:out_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: OutErrors, name: "outErrors"))
    EvaluateMappingTemplateResponse.type = Types::EvaluateMappingTemplateResponse
    EventBridgeDataSourceConfig.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "eventBusArn", traits: {"smithy.api#required" => {}}))
    EventBridgeDataSourceConfig.type = Types::EventBridgeDataSourceConfig
    EventConfig.add_member(:auth_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthProviders, name: "authProviders", traits: {"smithy.api#required" => {}}))
    EventConfig.add_member(:connection_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "connectionAuthModes", traits: {"smithy.api#required" => {}}))
    EventConfig.add_member(:default_publish_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "defaultPublishAuthModes", traits: {"smithy.api#required" => {}}))
    EventConfig.add_member(:default_subscribe_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "defaultSubscribeAuthModes", traits: {"smithy.api#required" => {}}))
    EventConfig.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventLogConfig, name: "logConfig"))
    EventConfig.type = Types::EventConfig
    EventLogConfig.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: EventLogLevel, name: "logLevel", traits: {"smithy.api#required" => {}}))
    EventLogConfig.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cloudWatchLogsRoleArn", traits: {"smithy.api#required" => {}}))
    EventLogConfig.type = Types::EventLogConfig
    EventLogLevel.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    EventLogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    EventLogLevel.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    EventLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    EventLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    FieldLogLevel.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    FieldLogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    FieldLogLevel.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    FieldLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    FieldLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    FlushApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushApiCacheRequest.type = Types::FlushApiCacheRequest
    FlushApiCacheResponse.type = Types::FlushApiCacheResponse
    FunctionConfiguration.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "functionId"))
    FunctionConfiguration.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "functionArn"))
    FunctionConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    FunctionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    FunctionConfiguration.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "dataSourceName"))
    FunctionConfiguration.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "requestMappingTemplate"))
    FunctionConfiguration.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "responseMappingTemplate"))
    FunctionConfiguration.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "functionVersion"))
    FunctionConfiguration.add_member(:sync_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfig, name: "syncConfig"))
    FunctionConfiguration.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBatchSize, name: "maxBatchSize", traits: {"smithy.api#default" => 0}))
    FunctionConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSyncRuntime, name: "runtime"))
    FunctionConfiguration.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    FunctionConfiguration.type = Types::FunctionConfiguration
    Functions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "member"))
    FunctionsIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    GetApiAssociationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiAssociationRequest.type = Types::GetApiAssociationRequest
    GetApiAssociationResponse.add_member(:api_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiAssociation, name: "apiAssociation"))
    GetApiAssociationResponse.type = Types::GetApiAssociationResponse
    GetApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiCacheRequest.type = Types::GetApiCacheRequest
    GetApiCacheResponse.add_member(:api_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCache, name: "apiCache"))
    GetApiCacheResponse.type = Types::GetApiCacheResponse
    GetApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiRequest.type = Types::GetApiRequest
    GetApiResponse.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: Api, name: "api"))
    GetApiResponse.type = Types::GetApiResponse
    GetChannelNamespaceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelNamespaceRequest.type = Types::GetChannelNamespaceRequest
    GetChannelNamespaceResponse.add_member(:channel_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelNamespace, name: "channelNamespace"))
    GetChannelNamespaceResponse.type = Types::GetChannelNamespaceResponse
    GetDataSourceIntrospectionRequest.add_member(:introspection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "introspectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceIntrospectionRequest.add_member(:include_models_sdl, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeModelsSDL", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeModelsSDL"}))
    GetDataSourceIntrospectionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetDataSourceIntrospectionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    GetDataSourceIntrospectionRequest.type = Types::GetDataSourceIntrospectionRequest
    GetDataSourceIntrospectionResponse.add_member(:introspection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "introspectionId"))
    GetDataSourceIntrospectionResponse.add_member(:introspection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionStatus, name: "introspectionStatus"))
    GetDataSourceIntrospectionResponse.add_member(:introspection_status_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "introspectionStatusDetail"))
    GetDataSourceIntrospectionResponse.add_member(:introspection_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionResult, name: "introspectionResult"))
    GetDataSourceIntrospectionResponse.type = Types::GetDataSourceIntrospectionResponse
    GetDataSourceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.type = Types::GetDataSourceRequest
    GetDataSourceResponse.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "dataSource"))
    GetDataSourceResponse.type = Types::GetDataSourceResponse
    GetDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainNameRequest.type = Types::GetDomainNameRequest
    GetDomainNameResponse.add_member(:domain_name_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfig, name: "domainNameConfig"))
    GetDomainNameResponse.type = Types::GetDomainNameResponse
    GetFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "functionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.type = Types::GetFunctionRequest
    GetFunctionResponse.add_member(:function_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "functionConfiguration"))
    GetFunctionResponse.type = Types::GetFunctionResponse
    GetGraphqlApiEnvironmentVariablesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphqlApiEnvironmentVariablesRequest.type = Types::GetGraphqlApiEnvironmentVariablesRequest
    GetGraphqlApiEnvironmentVariablesResponse.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    GetGraphqlApiEnvironmentVariablesResponse.type = Types::GetGraphqlApiEnvironmentVariablesResponse
    GetGraphqlApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphqlApiRequest.type = Types::GetGraphqlApiRequest
    GetGraphqlApiResponse.add_member(:graphql_api, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphqlApi, name: "graphqlApi"))
    GetGraphqlApiResponse.type = Types::GetGraphqlApiResponse
    GetIntrospectionSchemaRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntrospectionSchemaRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputType, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetIntrospectionSchemaRequest.add_member(:include_directives, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanValue, name: "includeDirectives", traits: {"smithy.api#httpQuery" => "includeDirectives"}))
    GetIntrospectionSchemaRequest.type = Types::GetIntrospectionSchemaRequest
    GetIntrospectionSchemaResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "schema", traits: {"smithy.api#httpPayload" => {}}))
    GetIntrospectionSchemaResponse[:http_payload] = :schema
    GetIntrospectionSchemaResponse[:http_payload_member] = GetIntrospectionSchemaResponse.member(:schema)
    GetIntrospectionSchemaResponse.type = Types::GetIntrospectionSchemaResponse
    GetResolverRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "typeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "fieldName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResolverRequest.type = Types::GetResolverRequest
    GetResolverResponse.add_member(:resolver, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolver, name: "resolver"))
    GetResolverResponse.type = Types::GetResolverResponse
    GetSchemaCreationStatusRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaCreationStatusRequest.type = Types::GetSchemaCreationStatusRequest
    GetSchemaCreationStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStatus, name: "status"))
    GetSchemaCreationStatusResponse.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "details"))
    GetSchemaCreationStatusResponse.type = Types::GetSchemaCreationStatusResponse
    GetSourceApiAssociationRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceApiAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceApiAssociationRequest.type = Types::GetSourceApiAssociationRequest
    GetSourceApiAssociationResponse.add_member(:source_api_association, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociation, name: "sourceApiAssociation"))
    GetSourceApiAssociationResponse.type = Types::GetSourceApiAssociationResponse
    GetTypeRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "typeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTypeRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeDefinitionFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetTypeRequest.type = Types::GetTypeRequest
    GetTypeResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type"))
    GetTypeResponse.type = Types::GetTypeResponse
    GraphQLApiIntrospectionConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    GraphQLApiIntrospectionConfig.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    GraphQLApiType.add_member(:graphql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRAPHQL", traits: {"smithy.api#enumValue" => "GRAPHQL"}))
    GraphQLApiType.add_member(:merged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGED", traits: {"smithy.api#enumValue" => "MERGED"}))
    GraphQLApiVisibility.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLOBAL", traits: {"smithy.api#enumValue" => "GLOBAL"}))
    GraphQLApiVisibility.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    GraphQLSchemaException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    GraphQLSchemaException.type = Types::GraphQLSchemaException
    GraphqlApi.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    GraphqlApi.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId"))
    GraphqlApi.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authenticationType"))
    GraphqlApi.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfig, name: "logConfig"))
    GraphqlApi.add_member(:user_pool_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolConfig, name: "userPoolConfig"))
    GraphqlApi.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectConfig, name: "openIDConnectConfig"))
    GraphqlApi.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    GraphqlApi.add_member(:uris, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "uris"))
    GraphqlApi.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GraphqlApi.add_member(:additional_authentication_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAuthenticationProviders, name: "additionalAuthenticationProviders"))
    GraphqlApi.add_member(:xray_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "xrayEnabled", traits: {"smithy.api#default" => false}))
    GraphqlApi.add_member(:waf_web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "wafWebAclArn"))
    GraphqlApi.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaAuthorizerConfig, name: "lambdaAuthorizerConfig"))
    GraphqlApi.add_member(:dns, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "dns"))
    GraphqlApi.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLApiVisibility, name: "visibility"))
    GraphqlApi.add_member(:api_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLApiType, name: "apiType"))
    GraphqlApi.add_member(:merged_api_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiExecutionRoleArn"))
    GraphqlApi.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "owner"))
    GraphqlApi.add_member(:owner_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownerContact"))
    GraphqlApi.add_member(:introspection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLApiIntrospectionConfig, name: "introspectionConfig"))
    GraphqlApi.add_member(:query_depth_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDepthLimit, name: "queryDepthLimit", traits: {"smithy.api#default" => 0}))
    GraphqlApi.add_member(:resolver_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverCountLimit, name: "resolverCountLimit", traits: {"smithy.api#default" => 0}))
    GraphqlApi.add_member(:enhanced_metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMetricsConfig, name: "enhancedMetricsConfig"))
    GraphqlApi.type = Types::GraphqlApi
    GraphqlApis.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphqlApi, name: "member"))
    HandlerBehavior.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE", traits: {"smithy.api#enumValue" => "CODE"}))
    HandlerBehavior.add_member(:direct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT", traits: {"smithy.api#enumValue" => "DIRECT"}))
    HandlerConfig.add_member(:behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerBehavior, name: "behavior", traits: {"smithy.api#required" => {}}))
    HandlerConfig.add_member(:integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "integration", traits: {"smithy.api#required" => {}}))
    HandlerConfig.type = Types::HandlerConfig
    HandlerConfigs.add_member(:on_publish, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerConfig, name: "onPublish"))
    HandlerConfigs.add_member(:on_subscribe, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerConfig, name: "onSubscribe"))
    HandlerConfigs.type = Types::HandlerConfigs
    HttpDataSourceConfig.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endpoint"))
    HttpDataSourceConfig.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationConfig, name: "authorizationConfig"))
    HttpDataSourceConfig.type = Types::HttpDataSourceConfig
    Integration.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dataSourceName", traits: {"smithy.api#required" => {}}))
    Integration.add_member(:lambda_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConfig, name: "lambdaConfig"))
    Integration.type = Types::Integration
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvokeType.add_member(:request_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_RESPONSE", traits: {"smithy.api#enumValue" => "REQUEST_RESPONSE"}))
    InvokeType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    LambdaAuthorizerConfig.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TTL, name: "authorizerResultTtlInSeconds", traits: {"smithy.api#default" => 0}))
    LambdaAuthorizerConfig.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerUri", traits: {"smithy.api#required" => {}}))
    LambdaAuthorizerConfig.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityValidationExpression"))
    LambdaAuthorizerConfig.type = Types::LambdaAuthorizerConfig
    LambdaConfig.add_member(:invoke_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeType, name: "invokeType"))
    LambdaConfig.type = Types::LambdaConfig
    LambdaConflictHandlerConfig.add_member(:lambda_conflict_handler_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lambdaConflictHandlerArn"))
    LambdaConflictHandlerConfig.type = Types::LambdaConflictHandlerConfig
    LambdaDataSourceConfig.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lambdaFunctionArn", traits: {"smithy.api#required" => {}}))
    LambdaDataSourceConfig.type = Types::LambdaDataSourceConfig
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListApiKeysRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApiKeysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApiKeysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApiKeysRequest.type = Types::ListApiKeysRequest
    ListApiKeysResponse.add_member(:api_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeys, name: "apiKeys"))
    ListApiKeysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListApiKeysResponse.type = Types::ListApiKeysResponse
    ListApisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApisRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApisRequest.type = Types::ListApisRequest
    ListApisResponse.add_member(:apis, ::Smithy::Schema::Shapes::MemberShape.new(target: Apis, name: "apis"))
    ListApisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListApisResponse.type = Types::ListApisResponse
    ListChannelNamespacesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelNamespacesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelNamespacesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListChannelNamespacesRequest.type = Types::ListChannelNamespacesRequest
    ListChannelNamespacesResponse.add_member(:channel_namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelNamespaces, name: "channelNamespaces"))
    ListChannelNamespacesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListChannelNamespacesResponse.type = Types::ListChannelNamespacesResponse
    ListDataSourcesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSources, name: "dataSources"))
    ListDataSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListDomainNamesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDomainNamesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDomainNamesRequest.type = Types::ListDomainNamesRequest
    ListDomainNamesResponse.add_member(:domain_name_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfigs, name: "domainNameConfigs"))
    ListDomainNamesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDomainNamesResponse.type = Types::ListDomainNamesResponse
    ListFunctionsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFunctionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFunctionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListFunctionsRequest.type = Types::ListFunctionsRequest
    ListFunctionsResponse.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: Functions, name: "functions"))
    ListFunctionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListFunctionsResponse.type = Types::ListFunctionsResponse
    ListGraphqlApisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGraphqlApisRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListGraphqlApisRequest.add_member(:api_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLApiType, name: "apiType", traits: {"smithy.api#httpQuery" => "apiType"}))
    ListGraphqlApisRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, name: "owner", traits: {"smithy.api#httpQuery" => "owner"}))
    ListGraphqlApisRequest.type = Types::ListGraphqlApisRequest
    ListGraphqlApisResponse.add_member(:graphql_apis, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphqlApis, name: "graphqlApis"))
    ListGraphqlApisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListGraphqlApisResponse.type = Types::ListGraphqlApisResponse
    ListResolversByFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversByFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "functionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversByFunctionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResolversByFunctionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListResolversByFunctionRequest.type = Types::ListResolversByFunctionRequest
    ListResolversByFunctionResponse.add_member(:resolvers, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolvers, name: "resolvers"))
    ListResolversByFunctionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListResolversByFunctionResponse.type = Types::ListResolversByFunctionResponse
    ListResolversRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "typeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolversRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResolversRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListResolversRequest.type = Types::ListResolversRequest
    ListResolversResponse.add_member(:resolvers, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolvers, name: "resolvers"))
    ListResolversResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListResolversResponse.type = Types::ListResolversResponse
    ListSourceApiAssociationsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSourceApiAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSourceApiAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListSourceApiAssociationsRequest.type = Types::ListSourceApiAssociationsRequest
    ListSourceApiAssociationsResponse.add_member(:source_api_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationSummaryList, name: "sourceApiAssociationSummaries"))
    ListSourceApiAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSourceApiAssociationsResponse.type = Types::ListSourceApiAssociationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTypesByAssociationRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeDefinitionFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListTypesByAssociationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTypesByAssociationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTypesByAssociationRequest.type = Types::ListTypesByAssociationRequest
    ListTypesByAssociationResponse.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeList, name: "types"))
    ListTypesByAssociationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListTypesByAssociationResponse.type = Types::ListTypesByAssociationResponse
    ListTypesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTypesRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeDefinitionFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListTypesRequest.type = Types::ListTypesRequest
    ListTypesResponse.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeList, name: "types"))
    ListTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListTypesResponse.type = Types::ListTypesResponse
    LogConfig.add_member(:field_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLogLevel, name: "fieldLogLevel", traits: {"smithy.api#required" => {}}))
    LogConfig.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cloudWatchLogsRoleArn", traits: {"smithy.api#required" => {}}))
    LogConfig.add_member(:exclude_verbose_content, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "excludeVerboseContent", traits: {"smithy.api#default" => false}))
    LogConfig.type = Types::LogConfig
    Logs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    MapOfStringToString.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfStringToString.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    MergeType.add_member(:manual_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL_MERGE", traits: {"smithy.api#enumValue" => "MANUAL_MERGE"}))
    MergeType.add_member(:auto_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_MERGE", traits: {"smithy.api#enumValue" => "AUTO_MERGE"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NotFoundException.type = Types::NotFoundException
    OpenIDConnectConfig.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "issuer", traits: {"smithy.api#required" => {}}))
    OpenIDConnectConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientId"))
    OpenIDConnectConfig.add_member(:iat_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "iatTTL", traits: {"smithy.api#default" => 0}))
    OpenIDConnectConfig.add_member(:auth_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "authTTL", traits: {"smithy.api#default" => 0}))
    OpenIDConnectConfig.type = Types::OpenIDConnectConfig
    OpenSearchServiceDataSourceConfig.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endpoint", traits: {"smithy.api#required" => {}}))
    OpenSearchServiceDataSourceConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsRegion", traits: {"smithy.api#required" => {}}))
    OpenSearchServiceDataSourceConfig.type = Types::OpenSearchServiceDataSourceConfig
    OperationLevelMetricsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OperationLevelMetricsConfig.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    OutputType.add_member(:sdl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SDL", traits: {"smithy.api#enumValue" => "SDL"}))
    OutputType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    Ownership.add_member(:current_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_ACCOUNT", traits: {"smithy.api#enumValue" => "CURRENT_ACCOUNT"}))
    Ownership.add_member(:other_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER_ACCOUNTS", traits: {"smithy.api#enumValue" => "OTHER_ACCOUNTS"}))
    PipelineConfig.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionsIds, name: "functions"))
    PipelineConfig.type = Types::PipelineConfig
    PutGraphqlApiEnvironmentVariablesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGraphqlApiEnvironmentVariablesRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables", traits: {"smithy.api#required" => {}}))
    PutGraphqlApiEnvironmentVariablesRequest.type = Types::PutGraphqlApiEnvironmentVariablesRequest
    PutGraphqlApiEnvironmentVariablesResponse.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    PutGraphqlApiEnvironmentVariablesResponse.type = Types::PutGraphqlApiEnvironmentVariablesResponse
    RdsDataApiConfig.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDataApiConfigResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    RdsDataApiConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDataApiConfigSecretArn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    RdsDataApiConfig.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDataApiConfigDatabaseName, name: "databaseName", traits: {"smithy.api#required" => {}}))
    RdsDataApiConfig.type = Types::RdsDataApiConfig
    RdsHttpEndpointConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsRegion"))
    RdsHttpEndpointConfig.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dbClusterIdentifier"))
    RdsHttpEndpointConfig.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "databaseName"))
    RdsHttpEndpointConfig.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schema"))
    RdsHttpEndpointConfig.add_member(:aws_secret_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsSecretStoreArn"))
    RdsHttpEndpointConfig.type = Types::RdsHttpEndpointConfig
    RelationalDatabaseDataSourceConfig.add_member(:relational_database_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseSourceType, name: "relationalDatabaseSourceType"))
    RelationalDatabaseDataSourceConfig.add_member(:rds_http_endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsHttpEndpointConfig, name: "rdsHttpEndpointConfig"))
    RelationalDatabaseDataSourceConfig.type = Types::RelationalDatabaseDataSourceConfig
    RelationalDatabaseSourceType.add_member(:rds_http_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_HTTP_ENDPOINT", traits: {"smithy.api#enumValue" => "RDS_HTTP_ENDPOINT"}))
    Resolver.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "typeName"))
    Resolver.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "fieldName"))
    Resolver.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "dataSourceName"))
    Resolver.add_member(:resolver_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resolverArn"))
    Resolver.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "requestMappingTemplate"))
    Resolver.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "responseMappingTemplate"))
    Resolver.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverKind, name: "kind"))
    Resolver.add_member(:pipeline_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineConfig, name: "pipelineConfig"))
    Resolver.add_member(:sync_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfig, name: "syncConfig"))
    Resolver.add_member(:caching_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachingConfig, name: "cachingConfig"))
    Resolver.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBatchSize, name: "maxBatchSize", traits: {"smithy.api#default" => 0}))
    Resolver.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSyncRuntime, name: "runtime"))
    Resolver.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    Resolver.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverLevelMetricsConfig, name: "metricsConfig"))
    Resolver.type = Types::Resolver
    ResolverKind.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNIT", traits: {"smithy.api#enumValue" => "UNIT"}))
    ResolverKind.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIPELINE", traits: {"smithy.api#enumValue" => "PIPELINE"}))
    ResolverLevelMetricsBehavior.add_member(:full_request_resolver_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_REQUEST_RESOLVER_METRICS", traits: {"smithy.api#enumValue" => "FULL_REQUEST_RESOLVER_METRICS"}))
    ResolverLevelMetricsBehavior.add_member(:per_resolver_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_RESOLVER_METRICS", traits: {"smithy.api#enumValue" => "PER_RESOLVER_METRICS"}))
    ResolverLevelMetricsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverLevelMetricsConfig.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Resolvers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolver, name: "member"))
    RuntimeName.add_member(:appsync_js, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPSYNC_JS", traits: {"smithy.api#enumValue" => "APPSYNC_JS"}))
    SchemaStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processing", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    SchemaStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SchemaStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    SchemaStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    SchemaStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    SchemaStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotApplicable", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceApiAssociation.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId"))
    SourceApiAssociation.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationArn"))
    SourceApiAssociation.add_member(:source_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceApiId"))
    SourceApiAssociation.add_member(:source_api_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceApiArn"))
    SourceApiAssociation.add_member(:merged_api_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiArn"))
    SourceApiAssociation.add_member(:merged_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiId"))
    SourceApiAssociation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    SourceApiAssociation.add_member(:source_api_association_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationConfig, name: "sourceApiAssociationConfig"))
    SourceApiAssociation.add_member(:source_api_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationStatus, name: "sourceApiAssociationStatus"))
    SourceApiAssociation.add_member(:source_api_association_status_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceApiAssociationStatusDetail"))
    SourceApiAssociation.add_member(:last_successful_merge_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastSuccessfulMergeDate"))
    SourceApiAssociation.type = Types::SourceApiAssociation
    SourceApiAssociationConfig.add_member(:merge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeType, name: "mergeType"))
    SourceApiAssociationConfig.type = Types::SourceApiAssociationConfig
    SourceApiAssociationStatus.add_member(:merge_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE_SCHEDULED", traits: {"smithy.api#enumValue" => "MERGE_SCHEDULED"}))
    SourceApiAssociationStatus.add_member(:merge_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE_FAILED", traits: {"smithy.api#enumValue" => "MERGE_FAILED"}))
    SourceApiAssociationStatus.add_member(:merge_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE_SUCCESS", traits: {"smithy.api#enumValue" => "MERGE_SUCCESS"}))
    SourceApiAssociationStatus.add_member(:merge_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "MERGE_IN_PROGRESS"}))
    SourceApiAssociationStatus.add_member(:auto_merge_schedule_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_MERGE_SCHEDULE_FAILED", traits: {"smithy.api#enumValue" => "AUTO_MERGE_SCHEDULE_FAILED"}))
    SourceApiAssociationStatus.add_member(:deletion_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETION_SCHEDULED", traits: {"smithy.api#enumValue" => "DELETION_SCHEDULED"}))
    SourceApiAssociationStatus.add_member(:deletion_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETION_IN_PROGRESS"}))
    SourceApiAssociationStatus.add_member(:deletion_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETION_FAILED", traits: {"smithy.api#enumValue" => "DELETION_FAILED"}))
    SourceApiAssociationSummary.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId"))
    SourceApiAssociationSummary.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationArn"))
    SourceApiAssociationSummary.add_member(:source_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceApiId"))
    SourceApiAssociationSummary.add_member(:source_api_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceApiArn"))
    SourceApiAssociationSummary.add_member(:merged_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiId"))
    SourceApiAssociationSummary.add_member(:merged_api_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiArn"))
    SourceApiAssociationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    SourceApiAssociationSummary.type = Types::SourceApiAssociationSummary
    SourceApiAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationSummary, name: "member"))
    StartDataSourceIntrospectionRequest.add_member(:rds_data_api_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDataApiConfig, name: "rdsDataApiConfig"))
    StartDataSourceIntrospectionRequest.type = Types::StartDataSourceIntrospectionRequest
    StartDataSourceIntrospectionResponse.add_member(:introspection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "introspectionId"))
    StartDataSourceIntrospectionResponse.add_member(:introspection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIntrospectionStatus, name: "introspectionStatus"))
    StartDataSourceIntrospectionResponse.add_member(:introspection_status_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "introspectionStatusDetail"))
    StartDataSourceIntrospectionResponse.type = Types::StartDataSourceIntrospectionResponse
    StartSchemaCreationRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaCreationRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "definition", traits: {"smithy.api#required" => {}}))
    StartSchemaCreationRequest.type = Types::StartSchemaCreationRequest
    StartSchemaCreationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStatus, name: "status"))
    StartSchemaCreationResponse.type = Types::StartSchemaCreationResponse
    StartSchemaMergeRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaMergeRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSchemaMergeRequest.type = Types::StartSchemaMergeRequest
    StartSchemaMergeResponse.add_member(:source_api_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationStatus, name: "sourceApiAssociationStatus"))
    StartSchemaMergeResponse.type = Types::StartSchemaMergeResponse
    SyncConfig.add_member(:conflict_handler, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictHandlerType, name: "conflictHandler"))
    SyncConfig.add_member(:conflict_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetectionType, name: "conflictDetection"))
    SyncConfig.add_member(:lambda_conflict_handler_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConflictHandlerConfig, name: "lambdaConflictHandlerConfig"))
    SyncConfig.type = Types::SyncConfig
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Type.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Type.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    Type.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    Type.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "definition"))
    Type.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeDefinitionFormat, name: "format"))
    Type.type = Types::Type
    TypeDefinitionFormat.add_member(:sdl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SDL", traits: {"smithy.api#enumValue" => "SDL"}))
    TypeDefinitionFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    TypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "member"))
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApiCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ttl", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:api_caching_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCachingBehavior, name: "apiCachingBehavior", traits: {"smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCacheType, name: "type", traits: {"smithy.api#required" => {}}))
    UpdateApiCacheRequest.add_member(:health_metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheHealthMetricsConfig, name: "healthMetricsConfig"))
    UpdateApiCacheRequest.type = Types::UpdateApiCacheRequest
    UpdateApiCacheResponse.add_member(:api_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCache, name: "apiCache"))
    UpdateApiCacheResponse.type = Types::UpdateApiCacheResponse
    UpdateApiKeyRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateApiKeyRequest.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "expires", traits: {"smithy.api#default" => 0}))
    UpdateApiKeyRequest.type = Types::UpdateApiKeyRequest
    UpdateApiKeyResponse.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "apiKey"))
    UpdateApiKeyResponse.type = Types::UpdateApiKeyResponse
    UpdateApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateApiRequest.add_member(:owner_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownerContact"))
    UpdateApiRequest.add_member(:event_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventConfig, name: "eventConfig", traits: {"smithy.api#required" => {}}))
    UpdateApiRequest.type = Types::UpdateApiRequest
    UpdateApiResponse.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: Api, name: "api"))
    UpdateApiResponse.type = Types::UpdateApiResponse
    UpdateChannelNamespaceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelNamespaceRequest.add_member(:subscribe_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "subscribeAuthModes"))
    UpdateChannelNamespaceRequest.add_member(:publish_auth_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthModes, name: "publishAuthModes"))
    UpdateChannelNamespaceRequest.add_member(:code_handlers, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "codeHandlers"))
    UpdateChannelNamespaceRequest.add_member(:handler_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerConfigs, name: "handlerConfigs"))
    UpdateChannelNamespaceRequest.type = Types::UpdateChannelNamespaceRequest
    UpdateChannelNamespaceResponse.add_member(:channel_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelNamespace, name: "channelNamespace"))
    UpdateChannelNamespaceResponse.type = Types::UpdateChannelNamespaceResponse
    UpdateDataSourceRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateDataSourceRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "type", traits: {"smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRoleArn"))
    UpdateDataSourceRequest.add_member(:dynamodb_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamodbDataSourceConfig, name: "dynamodbConfig"))
    UpdateDataSourceRequest.add_member(:lambda_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaDataSourceConfig, name: "lambdaConfig"))
    UpdateDataSourceRequest.add_member(:elasticsearch_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDataSourceConfig, name: "elasticsearchConfig"))
    UpdateDataSourceRequest.add_member(:open_search_service_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchServiceDataSourceConfig, name: "openSearchServiceConfig"))
    UpdateDataSourceRequest.add_member(:http_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpDataSourceConfig, name: "httpConfig"))
    UpdateDataSourceRequest.add_member(:relational_database_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationalDatabaseDataSourceConfig, name: "relationalDatabaseConfig"))
    UpdateDataSourceRequest.add_member(:event_bridge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDataSourceConfig, name: "eventBridgeConfig"))
    UpdateDataSourceRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceLevelMetricsConfig, name: "metricsConfig"))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateDataSourceResponse.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "dataSource"))
    UpdateDataSourceResponse.type = Types::UpdateDataSourceResponse
    UpdateDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainNameRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateDomainNameRequest.type = Types::UpdateDomainNameRequest
    UpdateDomainNameResponse.add_member(:domain_name_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfig, name: "domainNameConfig"))
    UpdateDomainNameResponse.type = Types::UpdateDomainNameResponse
    UpdateFunctionRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "functionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "dataSourceName", traits: {"smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "requestMappingTemplate"))
    UpdateFunctionRequest.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "responseMappingTemplate"))
    UpdateFunctionRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "functionVersion"))
    UpdateFunctionRequest.add_member(:sync_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfig, name: "syncConfig"))
    UpdateFunctionRequest.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBatchSize, name: "maxBatchSize", traits: {"smithy.api#default" => 0}))
    UpdateFunctionRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSyncRuntime, name: "runtime"))
    UpdateFunctionRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    UpdateFunctionRequest.type = Types::UpdateFunctionRequest
    UpdateFunctionResponse.add_member(:function_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "functionConfiguration"))
    UpdateFunctionResponse.type = Types::UpdateFunctionResponse
    UpdateGraphqlApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfig, name: "logConfig"))
    UpdateGraphqlApiRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "authenticationType", traits: {"smithy.api#required" => {}}))
    UpdateGraphqlApiRequest.add_member(:user_pool_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolConfig, name: "userPoolConfig"))
    UpdateGraphqlApiRequest.add_member(:open_id_connect_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectConfig, name: "openIDConnectConfig"))
    UpdateGraphqlApiRequest.add_member(:additional_authentication_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAuthenticationProviders, name: "additionalAuthenticationProviders"))
    UpdateGraphqlApiRequest.add_member(:xray_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "xrayEnabled", traits: {"smithy.api#default" => false}))
    UpdateGraphqlApiRequest.add_member(:lambda_authorizer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaAuthorizerConfig, name: "lambdaAuthorizerConfig"))
    UpdateGraphqlApiRequest.add_member(:merged_api_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiExecutionRoleArn"))
    UpdateGraphqlApiRequest.add_member(:owner_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownerContact"))
    UpdateGraphqlApiRequest.add_member(:introspection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLApiIntrospectionConfig, name: "introspectionConfig"))
    UpdateGraphqlApiRequest.add_member(:query_depth_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDepthLimit, name: "queryDepthLimit", traits: {"smithy.api#default" => 0}))
    UpdateGraphqlApiRequest.add_member(:resolver_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverCountLimit, name: "resolverCountLimit", traits: {"smithy.api#default" => 0}))
    UpdateGraphqlApiRequest.add_member(:enhanced_metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMetricsConfig, name: "enhancedMetricsConfig"))
    UpdateGraphqlApiRequest.type = Types::UpdateGraphqlApiRequest
    UpdateGraphqlApiResponse.add_member(:graphql_api, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphqlApi, name: "graphqlApi"))
    UpdateGraphqlApiResponse.type = Types::UpdateGraphqlApiResponse
    UpdateResolverRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "typeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "fieldName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResolverRequest.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "dataSourceName"))
    UpdateResolverRequest.add_member(:request_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "requestMappingTemplate"))
    UpdateResolverRequest.add_member(:response_mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, name: "responseMappingTemplate"))
    UpdateResolverRequest.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverKind, name: "kind"))
    UpdateResolverRequest.add_member(:pipeline_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineConfig, name: "pipelineConfig"))
    UpdateResolverRequest.add_member(:sync_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfig, name: "syncConfig"))
    UpdateResolverRequest.add_member(:caching_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachingConfig, name: "cachingConfig"))
    UpdateResolverRequest.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBatchSize, name: "maxBatchSize", traits: {"smithy.api#default" => 0}))
    UpdateResolverRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSyncRuntime, name: "runtime"))
    UpdateResolverRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    UpdateResolverRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverLevelMetricsConfig, name: "metricsConfig"))
    UpdateResolverRequest.type = Types::UpdateResolverRequest
    UpdateResolverResponse.add_member(:resolver, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolver, name: "resolver"))
    UpdateResolverResponse.type = Types::UpdateResolverResponse
    UpdateSourceApiAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSourceApiAssociationRequest.add_member(:merged_api_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mergedApiIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSourceApiAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateSourceApiAssociationRequest.add_member(:source_api_association_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociationConfig, name: "sourceApiAssociationConfig"))
    UpdateSourceApiAssociationRequest.type = Types::UpdateSourceApiAssociationRequest
    UpdateSourceApiAssociationResponse.add_member(:source_api_association, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceApiAssociation, name: "sourceApiAssociation"))
    UpdateSourceApiAssociationResponse.type = Types::UpdateSourceApiAssociationResponse
    UpdateTypeRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "typeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTypeRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "definition"))
    UpdateTypeRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeDefinitionFormat, name: "format", traits: {"smithy.api#required" => {}}))
    UpdateTypeRequest.type = Types::UpdateTypeRequest
    UpdateTypeResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type"))
    UpdateTypeResponse.type = Types::UpdateTypeResponse
    UserPoolConfig.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "userPoolId", traits: {"smithy.api#required" => {}}))
    UserPoolConfig.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsRegion", traits: {"smithy.api#required" => {}}))
    UserPoolConfig.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultAction, name: "defaultAction", traits: {"smithy.api#required" => {}}))
    UserPoolConfig.add_member(:app_id_client_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "appIdClientRegex"))
    UserPoolConfig.type = Types::UserPoolConfig

    AWSDeepdishControlPlaneService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appsync#AWSDeepdishControlPlaneService"
      service.name = "AWSDeepdishControlPlaneService"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "AppSync", "arnNamespace" => "appsync", "cloudFormationName" => "AppSync", "cloudTrailEventSource" => "appsync.amazonaws.com", "endpointPrefix" => "appsync"}, "aws.auth#sigv4" => {"name" => "appsync"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS AppSync", "smithy.api#xmlNamespace" => {"uri" => "http://appsync.amazonaws.com"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://appsync-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://appsync-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://appsync.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://appsync.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateApi"
        operation.name = "AssociateApi"
        operation.input = AssociateApiRequest
        operation.output = AssociateApiResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:associate_merged_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateMergedGraphqlApi"
        operation.name = "AssociateMergedGraphqlApi"
        operation.input = AssociateMergedGraphqlApiRequest
        operation.output = AssociateMergedGraphqlApiResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations", "code" => 200}}
      end)
      service.add_operation(:associate_source_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#AssociateSourceGraphqlApi"
        operation.name = "AssociateSourceGraphqlApi"
        operation.input = AssociateSourceGraphqlApiRequest
        operation.output = AssociateSourceGraphqlApiResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations", "code" => 200}}
      end)
      service.add_operation(:create_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApi"
        operation.name = "CreateApi"
        operation.input = CreateApiRequest
        operation.output = CreateApiResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis", "code" => 200}}
      end)
      service.add_operation(:create_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApiCache"
        operation.name = "CreateApiCache"
        operation.input = CreateApiCacheRequest
        operation.output = CreateApiCacheResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:create_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateApiKey"
        operation.name = "CreateApiKey"
        operation.input = CreateApiKeyRequest
        operation.output = CreateApiKeyResponse
        operation.errors << ApiKeyLimitExceededException
        operation.errors << ApiKeyValidityOutOfBoundsException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/apikeys", "code" => 200}}
      end)
      service.add_operation(:create_channel_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateChannelNamespace"
        operation.name = "CreateChannelNamespace"
        operation.input = CreateChannelNamespaceRequest
        operation.output = CreateChannelNamespaceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}/channelNamespaces", "code" => 200}}
      end)
      service.add_operation(:create_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateDataSource"
        operation.name = "CreateDataSource"
        operation.input = CreateDataSourceRequest
        operation.output = CreateDataSourceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/datasources", "code" => 200}}
      end)
      service.add_operation(:create_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateDomainName"
        operation.name = "CreateDomainName"
        operation.input = CreateDomainNameRequest
        operation.output = CreateDomainNameResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames", "code" => 200}}
      end)
      service.add_operation(:create_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateFunction"
        operation.name = "CreateFunction"
        operation.input = CreateFunctionRequest
        operation.output = CreateFunctionResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/functions", "code" => 200}}
      end)
      service.add_operation(:create_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateGraphqlApi"
        operation.name = "CreateGraphqlApi"
        operation.input = CreateGraphqlApiRequest
        operation.output = CreateGraphqlApiResponse
        operation.errors << ApiLimitExceededException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis", "code" => 200}}
      end)
      service.add_operation(:create_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateResolver"
        operation.name = "CreateResolver"
        operation.input = CreateResolverRequest
        operation.output = CreateResolverResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers", "code" => 200}}
      end)
      service.add_operation(:create_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#CreateType"
        operation.name = "CreateType"
        operation.input = CreateTypeRequest
        operation.output = CreateTypeResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types", "code" => 200}}
      end)
      service.add_operation(:delete_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApi"
        operation.name = "DeleteApi"
        operation.input = DeleteApiRequest
        operation.output = DeleteApiResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{apiId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApiCache"
        operation.name = "DeleteApiCache"
        operation.input = DeleteApiCacheRequest
        operation.output = DeleteApiCacheResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:delete_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteApiKey"
        operation.name = "DeleteApiKey"
        operation.input = DeleteApiKeyRequest
        operation.output = DeleteApiKeyResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/apikeys/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_channel_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteChannelNamespace"
        operation.name = "DeleteChannelNamespace"
        operation.input = DeleteChannelNamespaceRequest
        operation.output = DeleteChannelNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = DeleteDataSourceRequest
        operation.output = DeleteDataSourceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:delete_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteDomainName"
        operation.name = "DeleteDomainName"
        operation.input = DeleteDomainNameRequest
        operation.output = DeleteDomainNameResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:delete_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = DeleteFunctionRequest
        operation.output = DeleteFunctionResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:delete_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteGraphqlApi"
        operation.name = "DeleteGraphqlApi"
        operation.input = DeleteGraphqlApiRequest
        operation.output = DeleteGraphqlApiResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:delete_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteResolver"
        operation.name = "DeleteResolver"
        operation.input = DeleteResolverRequest
        operation.output = DeleteResolverResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:delete_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DeleteType"
        operation.name = "DeleteType"
        operation.input = DeleteTypeRequest
        operation.output = DeleteTypeResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/types/{typeName}", "code" => 200}}
      end)
      service.add_operation(:disassociate_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateApi"
        operation.name = "DisassociateApi"
        operation.input = DisassociateApiRequest
        operation.output = DisassociateApiResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:disassociate_merged_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateMergedGraphqlApi"
        operation.name = "DisassociateMergedGraphqlApi"
        operation.input = DisassociateMergedGraphqlApiRequest
        operation.output = DisassociateMergedGraphqlApiResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_source_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#DisassociateSourceGraphqlApi"
        operation.name = "DisassociateSourceGraphqlApi"
        operation.input = DisassociateSourceGraphqlApiRequest
        operation.output = DisassociateSourceGraphqlApiResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:evaluate_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#EvaluateCode"
        operation.name = "EvaluateCode"
        operation.input = EvaluateCodeRequest
        operation.output = EvaluateCodeResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/dataplane-evaluatecode", "code" => 200}}
      end)
      service.add_operation(:evaluate_mapping_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#EvaluateMappingTemplate"
        operation.name = "EvaluateMappingTemplate"
        operation.input = EvaluateMappingTemplateRequest
        operation.output = EvaluateMappingTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/dataplane-evaluatetemplate", "code" => 200}}
      end)
      service.add_operation(:flush_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#FlushApiCache"
        operation.name = "FlushApiCache"
        operation.input = FlushApiCacheRequest
        operation.output = FlushApiCacheResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apis/{apiId}/FlushCache", "code" => 200}}
      end)
      service.add_operation(:get_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApi"
        operation.name = "GetApi"
        operation.input = GetApiRequest
        operation.output = GetApiResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:get_api_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApiAssociation"
        operation.name = "GetApiAssociation"
        operation.input = GetApiAssociationRequest
        operation.output = GetApiAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames/{domainName}/apiassociation", "code" => 200}}
      end)
      service.add_operation(:get_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetApiCache"
        operation.name = "GetApiCache"
        operation.input = GetApiCacheRequest
        operation.output = GetApiCacheResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/ApiCaches", "code" => 200}}
      end)
      service.add_operation(:get_channel_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetChannelNamespace"
        operation.name = "GetChannelNamespace"
        operation.input = GetChannelNamespaceRequest
        operation.output = GetChannelNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}}
      end)
      service.add_operation(:get_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = GetDataSourceRequest
        operation.output = GetDataSourceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:get_data_source_introspection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDataSourceIntrospection"
        operation.name = "GetDataSourceIntrospection"
        operation.input = GetDataSourceIntrospectionRequest
        operation.output = GetDataSourceIntrospectionResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/datasources/introspections/{introspectionId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetDomainName"
        operation.name = "GetDomainName"
        operation.input = GetDomainNameRequest
        operation.output = GetDomainNameResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:get_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetFunction"
        operation.name = "GetFunction"
        operation.input = GetFunctionRequest
        operation.output = GetFunctionResponse
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:get_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetGraphqlApi"
        operation.name = "GetGraphqlApi"
        operation.input = GetGraphqlApiRequest
        operation.output = GetGraphqlApiResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:get_graphql_api_environment_variables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetGraphqlApiEnvironmentVariables"
        operation.name = "GetGraphqlApiEnvironmentVariables"
        operation.input = GetGraphqlApiEnvironmentVariablesRequest
        operation.output = GetGraphqlApiEnvironmentVariablesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/environmentVariables", "code" => 200}}
      end)
      service.add_operation(:get_introspection_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetIntrospectionSchema"
        operation.name = "GetIntrospectionSchema"
        operation.input = GetIntrospectionSchemaRequest
        operation.output = GetIntrospectionSchemaResponse
        operation.errors << GraphQLSchemaException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/schema", "code" => 200}}
      end)
      service.add_operation(:get_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetResolver"
        operation.name = "GetResolver"
        operation.input = GetResolverRequest
        operation.output = GetResolverResponse
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:get_schema_creation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetSchemaCreationStatus"
        operation.name = "GetSchemaCreationStatus"
        operation.input = GetSchemaCreationStatusRequest
        operation.output = GetSchemaCreationStatusResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/schemacreation", "code" => 200}}
      end)
      service.add_operation(:get_source_api_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetSourceApiAssociation"
        operation.name = "GetSourceApiAssociation"
        operation.input = GetSourceApiAssociationRequest
        operation.output = GetSourceApiAssociationResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:get_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#GetType"
        operation.name = "GetType"
        operation.input = GetTypeRequest
        operation.output = GetTypeResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}", "code" => 200}}
      end)
      service.add_operation(:list_api_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListApiKeys"
        operation.name = "ListApiKeys"
        operation.input = ListApiKeysRequest
        operation.output = ListApiKeysResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/apikeys", "code" => 200}}
        operation[:paginator] = Paginators::ListApiKeys.new
      end)
      service.add_operation(:list_apis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListApis"
        operation.name = "ListApis"
        operation.input = ListApisRequest
        operation.output = ListApisResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis", "code" => 200}}
        operation[:paginator] = Paginators::ListApis.new
      end)
      service.add_operation(:list_channel_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListChannelNamespaces"
        operation.name = "ListChannelNamespaces"
        operation.input = ListChannelNamespacesRequest
        operation.output = ListChannelNamespacesResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{apiId}/channelNamespaces", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelNamespaces.new
      end)
      service.add_operation(:list_data_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = ListDataSourcesRequest
        operation.output = ListDataSourcesResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/datasources", "code" => 200}}
        operation[:paginator] = Paginators::ListDataSources.new
      end)
      service.add_operation(:list_domain_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListDomainNames"
        operation.name = "ListDomainNames"
        operation.input = ListDomainNamesRequest
        operation.output = ListDomainNamesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domainnames", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainNames.new
      end)
      service.add_operation(:list_functions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = ListFunctionsRequest
        operation.output = ListFunctionsResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions", "code" => 200}}
        operation[:paginator] = Paginators::ListFunctions.new
      end)
      service.add_operation(:list_graphql_apis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListGraphqlApis"
        operation.name = "ListGraphqlApis"
        operation.input = ListGraphqlApisRequest
        operation.output = ListGraphqlApisResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis", "code" => 200}}
        operation[:paginator] = Paginators::ListGraphqlApis.new
      end)
      service.add_operation(:list_resolvers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListResolvers"
        operation.name = "ListResolvers"
        operation.input = ListResolversRequest
        operation.output = ListResolversResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers", "code" => 200}}
        operation[:paginator] = Paginators::ListResolvers.new
      end)
      service.add_operation(:list_resolvers_by_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListResolversByFunction"
        operation.name = "ListResolversByFunction"
        operation.input = ListResolversByFunctionRequest
        operation.output = ListResolversByFunctionResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/functions/{functionId}/resolvers", "code" => 200}}
        operation[:paginator] = Paginators::ListResolversByFunction.new
      end)
      service.add_operation(:list_source_api_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListSourceApiAssociations"
        operation.name = "ListSourceApiAssociations"
        operation.input = ListSourceApiAssociationsRequest
        operation.output = ListSourceApiAssociationsResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/sourceApiAssociations", "code" => 200}}
        operation[:paginator] = Paginators::ListSourceApiAssociations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTypes"
        operation.name = "ListTypes"
        operation.input = ListTypesRequest
        operation.output = ListTypesResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apis/{apiId}/types", "code" => 200}}
        operation[:paginator] = Paginators::ListTypes.new
      end)
      service.add_operation(:list_types_by_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#ListTypesByAssociation"
        operation.name = "ListTypesByAssociation"
        operation.input = ListTypesByAssociationRequest
        operation.output = ListTypesByAssociationResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/types", "code" => 200}}
        operation[:paginator] = Paginators::ListTypesByAssociation.new
      end)
      service.add_operation(:put_graphql_api_environment_variables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#PutGraphqlApiEnvironmentVariables"
        operation.name = "PutGraphqlApiEnvironmentVariables"
        operation.input = PutGraphqlApiEnvironmentVariablesRequest
        operation.output = PutGraphqlApiEnvironmentVariablesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apis/{apiId}/environmentVariables", "code" => 200}}
      end)
      service.add_operation(:start_data_source_introspection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartDataSourceIntrospection"
        operation.name = "StartDataSourceIntrospection"
        operation.input = StartDataSourceIntrospectionRequest
        operation.output = StartDataSourceIntrospectionResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/datasources/introspections", "code" => 200}}
      end)
      service.add_operation(:start_schema_creation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartSchemaCreation"
        operation.name = "StartSchemaCreation"
        operation.input = StartSchemaCreationRequest
        operation.output = StartSchemaCreationResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/schemacreation", "code" => 200}}
      end)
      service.add_operation(:start_schema_merge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#StartSchemaMerge"
        operation.name = "StartSchemaMerge"
        operation.input = StartSchemaMergeRequest
        operation.output = StartSchemaMergeResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/merge", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApi"
        operation.name = "UpdateApi"
        operation.input = UpdateApiRequest
        operation.output = UpdateApiResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:update_api_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApiCache"
        operation.name = "UpdateApiCache"
        operation.input = UpdateApiCacheRequest
        operation.output = UpdateApiCacheResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/ApiCaches/update", "code" => 200}}
      end)
      service.add_operation(:update_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateApiKey"
        operation.name = "UpdateApiKey"
        operation.input = UpdateApiKeyRequest
        operation.output = UpdateApiKeyResponse
        operation.errors << ApiKeyValidityOutOfBoundsException
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/apikeys/{id}", "code" => 200}}
      end)
      service.add_operation(:update_channel_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateChannelNamespace"
        operation.name = "UpdateChannelNamespace"
        operation.input = UpdateChannelNamespaceRequest
        operation.output = UpdateChannelNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{apiId}/channelNamespaces/{name}", "code" => 200}}
      end)
      service.add_operation(:update_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = UpdateDataSourceRequest
        operation.output = UpdateDataSourceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/datasources/{name}", "code" => 200}}
      end)
      service.add_operation(:update_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateDomainName"
        operation.name = "UpdateDomainName"
        operation.input = UpdateDomainNameRequest
        operation.output = UpdateDomainNameResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:update_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateFunction"
        operation.name = "UpdateFunction"
        operation.input = UpdateFunctionRequest
        operation.output = UpdateFunctionResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/functions/{functionId}", "code" => 200}}
      end)
      service.add_operation(:update_graphql_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateGraphqlApi"
        operation.name = "UpdateGraphqlApi"
        operation.input = UpdateGraphqlApiRequest
        operation.output = UpdateGraphqlApiResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}", "code" => 200}}
      end)
      service.add_operation(:update_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateResolver"
        operation.name = "UpdateResolver"
        operation.input = UpdateResolverRequest
        operation.output = UpdateResolverResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", "code" => 200}}
      end)
      service.add_operation(:update_source_api_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateSourceApiAssociation"
        operation.name = "UpdateSourceApiAssociation"
        operation.input = UpdateSourceApiAssociationRequest
        operation.output = UpdateSourceApiAssociationResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:update_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appsync#UpdateType"
        operation.name = "UpdateType"
        operation.input = UpdateTypeRequest
        operation.output = UpdateTypeResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
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
