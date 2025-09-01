# frozen_string_literal: true

# This is generated code!

module Aws::APIGateway
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessAssociationSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#AccessAssociationSourceType', name: 'AccessAssociationSourceType')
    AccessLogSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#AccessLogSettings', name: 'AccessLogSettings')
    ApiKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ApiKey', name: 'ApiKey')
    ApiKeySourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#ApiKeySourceType', name: 'ApiKeySourceType')
    ApiKeysFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#ApiKeysFormat', name: 'ApiKeysFormat')
    ApiStage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ApiStage', name: 'ApiStage')
    Authorizer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#Authorizer', name: 'Authorizer')
    AuthorizerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#AuthorizerType', name: 'AuthorizerType')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BasePathMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#BasePathMapping', name: 'BasePathMapping')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.apigateway#Blob', name: 'Blob')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.apigateway#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CacheClusterSize = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#CacheClusterSize', name: 'CacheClusterSize')
    CacheClusterStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#CacheClusterStatus', name: 'CacheClusterStatus')
    CanarySettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CanarySettings', name: 'CanarySettings')
    ClientCertificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ClientCertificate', name: 'ClientCertificate')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#ConnectionType', name: 'ConnectionType')
    ContentHandlingStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#ContentHandlingStrategy', name: 'ContentHandlingStrategy')
    CreateApiKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateApiKeyOutput', name: 'CreateApiKeyOutput')
    CreateApiKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateApiKeyRequest', name: 'CreateApiKeyRequest')
    CreateAuthorizerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateAuthorizerOutput', name: 'CreateAuthorizerOutput')
    CreateAuthorizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateAuthorizerRequest', name: 'CreateAuthorizerRequest')
    CreateBasePathMappingOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateBasePathMappingOutput', name: 'CreateBasePathMappingOutput')
    CreateBasePathMappingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateBasePathMappingRequest', name: 'CreateBasePathMappingRequest')
    CreateDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDeploymentOutput', name: 'CreateDeploymentOutput')
    CreateDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDeploymentRequest', name: 'CreateDeploymentRequest')
    CreateDocumentationPartOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDocumentationPartOutput', name: 'CreateDocumentationPartOutput')
    CreateDocumentationPartRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDocumentationPartRequest', name: 'CreateDocumentationPartRequest')
    CreateDocumentationVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDocumentationVersionOutput', name: 'CreateDocumentationVersionOutput')
    CreateDocumentationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDocumentationVersionRequest', name: 'CreateDocumentationVersionRequest')
    CreateDomainNameAccessAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDomainNameAccessAssociationOutput', name: 'CreateDomainNameAccessAssociationOutput')
    CreateDomainNameAccessAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDomainNameAccessAssociationRequest', name: 'CreateDomainNameAccessAssociationRequest')
    CreateDomainNameOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDomainNameOutput', name: 'CreateDomainNameOutput')
    CreateDomainNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateDomainNameRequest', name: 'CreateDomainNameRequest')
    CreateModelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateModelOutput', name: 'CreateModelOutput')
    CreateModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateModelRequest', name: 'CreateModelRequest')
    CreateRequestValidatorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateRequestValidatorOutput', name: 'CreateRequestValidatorOutput')
    CreateRequestValidatorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateRequestValidatorRequest', name: 'CreateRequestValidatorRequest')
    CreateResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateResourceOutput', name: 'CreateResourceOutput')
    CreateResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateResourceRequest', name: 'CreateResourceRequest')
    CreateRestApiOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateRestApiOutput', name: 'CreateRestApiOutput')
    CreateRestApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateRestApiRequest', name: 'CreateRestApiRequest')
    CreateStageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateStageOutput', name: 'CreateStageOutput')
    CreateStageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateStageRequest', name: 'CreateStageRequest')
    CreateUsagePlanKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateUsagePlanKeyOutput', name: 'CreateUsagePlanKeyOutput')
    CreateUsagePlanKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateUsagePlanKeyRequest', name: 'CreateUsagePlanKeyRequest')
    CreateUsagePlanOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateUsagePlanOutput', name: 'CreateUsagePlanOutput')
    CreateUsagePlanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateUsagePlanRequest', name: 'CreateUsagePlanRequest')
    CreateVpcLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateVpcLinkOutput', name: 'CreateVpcLinkOutput')
    CreateVpcLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#CreateVpcLinkRequest', name: 'CreateVpcLinkRequest')
    DeleteApiKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteApiKeyRequest', name: 'DeleteApiKeyRequest')
    DeleteAuthorizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteAuthorizerRequest', name: 'DeleteAuthorizerRequest')
    DeleteBasePathMappingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteBasePathMappingRequest', name: 'DeleteBasePathMappingRequest')
    DeleteClientCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteClientCertificateRequest', name: 'DeleteClientCertificateRequest')
    DeleteDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteDeploymentRequest', name: 'DeleteDeploymentRequest')
    DeleteDocumentationPartRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteDocumentationPartRequest', name: 'DeleteDocumentationPartRequest')
    DeleteDocumentationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteDocumentationVersionRequest', name: 'DeleteDocumentationVersionRequest')
    DeleteDomainNameAccessAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteDomainNameAccessAssociationRequest', name: 'DeleteDomainNameAccessAssociationRequest')
    DeleteDomainNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteDomainNameRequest', name: 'DeleteDomainNameRequest')
    DeleteGatewayResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteGatewayResponseRequest', name: 'DeleteGatewayResponseRequest')
    DeleteIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteIntegrationRequest', name: 'DeleteIntegrationRequest')
    DeleteIntegrationResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteIntegrationResponseRequest', name: 'DeleteIntegrationResponseRequest')
    DeleteMethodRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteMethodRequest', name: 'DeleteMethodRequest')
    DeleteMethodResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteMethodResponseRequest', name: 'DeleteMethodResponseRequest')
    DeleteModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteModelRequest', name: 'DeleteModelRequest')
    DeleteRequestValidatorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteRequestValidatorRequest', name: 'DeleteRequestValidatorRequest')
    DeleteResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteResourceRequest', name: 'DeleteResourceRequest')
    DeleteRestApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteRestApiRequest', name: 'DeleteRestApiRequest')
    DeleteStageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteStageRequest', name: 'DeleteStageRequest')
    DeleteUsagePlanKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteUsagePlanKeyRequest', name: 'DeleteUsagePlanKeyRequest')
    DeleteUsagePlanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteUsagePlanRequest', name: 'DeleteUsagePlanRequest')
    DeleteVpcLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeleteVpcLinkRequest', name: 'DeleteVpcLinkRequest')
    Deployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#Deployment', name: 'Deployment')
    DeploymentCanarySettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DeploymentCanarySettings', name: 'DeploymentCanarySettings')
    DocumentationPart = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DocumentationPart', name: 'DocumentationPart')
    DocumentationPartLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DocumentationPartLocation', name: 'DocumentationPartLocation')
    DocumentationPartLocationStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apigateway#DocumentationPartLocationStatusCode', name: 'DocumentationPartLocationStatusCode', traits: {"smithy.api#pattern" => "^([1-5]\\d\\d|\\*|\\s*)$"})
    DocumentationPartType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#DocumentationPartType', name: 'DocumentationPartType')
    DocumentationVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DocumentationVersion', name: 'DocumentationVersion')
    DomainName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DomainName', name: 'DomainName')
    DomainNameAccessAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#DomainNameAccessAssociation', name: 'DomainNameAccessAssociation')
    DomainNameStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#DomainNameStatus', name: 'DomainNameStatus')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.apigateway#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    EndpointConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#EndpointConfiguration', name: 'EndpointConfiguration')
    EndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#EndpointType', name: 'EndpointType')
    ExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ExportResponse', name: 'ExportResponse')
    FlushStageAuthorizersCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#FlushStageAuthorizersCacheRequest', name: 'FlushStageAuthorizersCacheRequest')
    FlushStageCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#FlushStageCacheRequest', name: 'FlushStageCacheRequest')
    GatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GatewayResponse', name: 'GatewayResponse')
    GatewayResponseType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#GatewayResponseType', name: 'GatewayResponseType')
    GenerateClientCertificateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GenerateClientCertificateOutput', name: 'GenerateClientCertificateOutput')
    GenerateClientCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GenerateClientCertificateRequest', name: 'GenerateClientCertificateRequest')
    GetAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetAccountOutput', name: 'GetAccountOutput')
    GetAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetAccountRequest', name: 'GetAccountRequest')
    GetApiKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetApiKeyOutput', name: 'GetApiKeyOutput')
    GetApiKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetApiKeyRequest', name: 'GetApiKeyRequest')
    GetApiKeysOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetApiKeysOutput', name: 'GetApiKeysOutput')
    GetApiKeysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetApiKeysRequest', name: 'GetApiKeysRequest')
    GetAuthorizerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetAuthorizerOutput', name: 'GetAuthorizerOutput')
    GetAuthorizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetAuthorizerRequest', name: 'GetAuthorizerRequest')
    GetAuthorizersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetAuthorizersOutput', name: 'GetAuthorizersOutput')
    GetAuthorizersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetAuthorizersRequest', name: 'GetAuthorizersRequest')
    GetBasePathMappingOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetBasePathMappingOutput', name: 'GetBasePathMappingOutput')
    GetBasePathMappingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetBasePathMappingRequest', name: 'GetBasePathMappingRequest')
    GetBasePathMappingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetBasePathMappingsOutput', name: 'GetBasePathMappingsOutput')
    GetBasePathMappingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetBasePathMappingsRequest', name: 'GetBasePathMappingsRequest')
    GetClientCertificateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetClientCertificateOutput', name: 'GetClientCertificateOutput')
    GetClientCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetClientCertificateRequest', name: 'GetClientCertificateRequest')
    GetClientCertificatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetClientCertificatesOutput', name: 'GetClientCertificatesOutput')
    GetClientCertificatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetClientCertificatesRequest', name: 'GetClientCertificatesRequest')
    GetDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDeploymentOutput', name: 'GetDeploymentOutput')
    GetDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDeploymentRequest', name: 'GetDeploymentRequest')
    GetDeploymentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDeploymentsOutput', name: 'GetDeploymentsOutput')
    GetDeploymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDeploymentsRequest', name: 'GetDeploymentsRequest')
    GetDocumentationPartOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDocumentationPartOutput', name: 'GetDocumentationPartOutput')
    GetDocumentationPartRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDocumentationPartRequest', name: 'GetDocumentationPartRequest')
    GetDocumentationPartsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDocumentationPartsOutput', name: 'GetDocumentationPartsOutput')
    GetDocumentationPartsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDocumentationPartsRequest', name: 'GetDocumentationPartsRequest')
    GetDocumentationVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDocumentationVersionOutput', name: 'GetDocumentationVersionOutput')
    GetDocumentationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDocumentationVersionRequest', name: 'GetDocumentationVersionRequest')
    GetDocumentationVersionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDocumentationVersionsOutput', name: 'GetDocumentationVersionsOutput')
    GetDocumentationVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDocumentationVersionsRequest', name: 'GetDocumentationVersionsRequest')
    GetDomainNameAccessAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDomainNameAccessAssociationsOutput', name: 'GetDomainNameAccessAssociationsOutput')
    GetDomainNameAccessAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDomainNameAccessAssociationsRequest', name: 'GetDomainNameAccessAssociationsRequest')
    GetDomainNameOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDomainNameOutput', name: 'GetDomainNameOutput')
    GetDomainNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDomainNameRequest', name: 'GetDomainNameRequest')
    GetDomainNamesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDomainNamesOutput', name: 'GetDomainNamesOutput')
    GetDomainNamesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetDomainNamesRequest', name: 'GetDomainNamesRequest')
    GetExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetExportRequest', name: 'GetExportRequest')
    GetGatewayResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetGatewayResponseOutput', name: 'GetGatewayResponseOutput')
    GetGatewayResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetGatewayResponseRequest', name: 'GetGatewayResponseRequest')
    GetGatewayResponsesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetGatewayResponsesOutput', name: 'GetGatewayResponsesOutput')
    GetGatewayResponsesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetGatewayResponsesRequest', name: 'GetGatewayResponsesRequest')
    GetIntegrationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetIntegrationOutput', name: 'GetIntegrationOutput')
    GetIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetIntegrationRequest', name: 'GetIntegrationRequest')
    GetIntegrationResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetIntegrationResponseOutput', name: 'GetIntegrationResponseOutput')
    GetIntegrationResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetIntegrationResponseRequest', name: 'GetIntegrationResponseRequest')
    GetMethodOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetMethodOutput', name: 'GetMethodOutput')
    GetMethodRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetMethodRequest', name: 'GetMethodRequest')
    GetMethodResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetMethodResponseOutput', name: 'GetMethodResponseOutput')
    GetMethodResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetMethodResponseRequest', name: 'GetMethodResponseRequest')
    GetModelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetModelOutput', name: 'GetModelOutput')
    GetModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetModelRequest', name: 'GetModelRequest')
    GetModelTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetModelTemplateOutput', name: 'GetModelTemplateOutput')
    GetModelTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetModelTemplateRequest', name: 'GetModelTemplateRequest')
    GetModelsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetModelsOutput', name: 'GetModelsOutput')
    GetModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetModelsRequest', name: 'GetModelsRequest')
    GetRequestValidatorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetRequestValidatorOutput', name: 'GetRequestValidatorOutput')
    GetRequestValidatorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetRequestValidatorRequest', name: 'GetRequestValidatorRequest')
    GetRequestValidatorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetRequestValidatorsOutput', name: 'GetRequestValidatorsOutput')
    GetRequestValidatorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetRequestValidatorsRequest', name: 'GetRequestValidatorsRequest')
    GetResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetResourceOutput', name: 'GetResourceOutput')
    GetResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetResourceRequest', name: 'GetResourceRequest')
    GetResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetResourcesOutput', name: 'GetResourcesOutput')
    GetResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetResourcesRequest', name: 'GetResourcesRequest')
    GetRestApiOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetRestApiOutput', name: 'GetRestApiOutput')
    GetRestApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetRestApiRequest', name: 'GetRestApiRequest')
    GetRestApisOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetRestApisOutput', name: 'GetRestApisOutput')
    GetRestApisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetRestApisRequest', name: 'GetRestApisRequest')
    GetSdkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetSdkRequest', name: 'GetSdkRequest')
    GetSdkTypeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetSdkTypeOutput', name: 'GetSdkTypeOutput')
    GetSdkTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetSdkTypeRequest', name: 'GetSdkTypeRequest')
    GetSdkTypesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetSdkTypesOutput', name: 'GetSdkTypesOutput')
    GetSdkTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetSdkTypesRequest', name: 'GetSdkTypesRequest')
    GetStageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetStageOutput', name: 'GetStageOutput')
    GetStageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetStageRequest', name: 'GetStageRequest')
    GetStagesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetStagesOutput', name: 'GetStagesOutput')
    GetStagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetStagesRequest', name: 'GetStagesRequest')
    GetTagsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetTagsOutput', name: 'GetTagsOutput')
    GetTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetTagsRequest', name: 'GetTagsRequest')
    GetUsageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsageOutput', name: 'GetUsageOutput')
    GetUsagePlanKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsagePlanKeyOutput', name: 'GetUsagePlanKeyOutput')
    GetUsagePlanKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsagePlanKeyRequest', name: 'GetUsagePlanKeyRequest')
    GetUsagePlanKeysOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsagePlanKeysOutput', name: 'GetUsagePlanKeysOutput')
    GetUsagePlanKeysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsagePlanKeysRequest', name: 'GetUsagePlanKeysRequest')
    GetUsagePlanOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsagePlanOutput', name: 'GetUsagePlanOutput')
    GetUsagePlanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsagePlanRequest', name: 'GetUsagePlanRequest')
    GetUsagePlansOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsagePlansOutput', name: 'GetUsagePlansOutput')
    GetUsagePlansRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsagePlansRequest', name: 'GetUsagePlansRequest')
    GetUsageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetUsageRequest', name: 'GetUsageRequest')
    GetVpcLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetVpcLinkOutput', name: 'GetVpcLinkOutput')
    GetVpcLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetVpcLinkRequest', name: 'GetVpcLinkRequest')
    GetVpcLinksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetVpcLinksOutput', name: 'GetVpcLinksOutput')
    GetVpcLinksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#GetVpcLinksRequest', name: 'GetVpcLinksRequest')
    ImportApiKeysOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ImportApiKeysOutput', name: 'ImportApiKeysOutput')
    ImportApiKeysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ImportApiKeysRequest', name: 'ImportApiKeysRequest')
    ImportDocumentationPartsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ImportDocumentationPartsOutput', name: 'ImportDocumentationPartsOutput')
    ImportDocumentationPartsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ImportDocumentationPartsRequest', name: 'ImportDocumentationPartsRequest')
    ImportRestApiOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ImportRestApiOutput', name: 'ImportRestApiOutput')
    ImportRestApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ImportRestApiRequest', name: 'ImportRestApiRequest')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apigateway#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    Integration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#Integration', name: 'Integration')
    IntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#IntegrationResponse', name: 'IntegrationResponse')
    IntegrationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#IntegrationType', name: 'IntegrationType')
    IpAddressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#IpAddressType', name: 'IpAddressType')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListOfARNs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfARNs', name: 'ListOfARNs')
    ListOfApiKey = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfApiKey', name: 'ListOfApiKey')
    ListOfApiStage = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfApiStage', name: 'ListOfApiStage')
    ListOfAuthorizer = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfAuthorizer', name: 'ListOfAuthorizer')
    ListOfBasePathMapping = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfBasePathMapping', name: 'ListOfBasePathMapping')
    ListOfClientCertificate = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfClientCertificate', name: 'ListOfClientCertificate')
    ListOfDeployment = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfDeployment', name: 'ListOfDeployment')
    ListOfDocumentationPart = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfDocumentationPart', name: 'ListOfDocumentationPart')
    ListOfDocumentationVersion = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfDocumentationVersion', name: 'ListOfDocumentationVersion')
    ListOfDomainName = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfDomainName', name: 'ListOfDomainName')
    ListOfDomainNameAccessAssociation = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfDomainNameAccessAssociation', name: 'ListOfDomainNameAccessAssociation')
    ListOfEndpointType = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfEndpointType', name: 'ListOfEndpointType')
    ListOfGatewayResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfGatewayResponse', name: 'ListOfGatewayResponse')
    ListOfLong = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfLong', name: 'ListOfLong')
    ListOfModel = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfModel', name: 'ListOfModel')
    ListOfPatchOperation = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfPatchOperation', name: 'ListOfPatchOperation')
    ListOfRequestValidator = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfRequestValidator', name: 'ListOfRequestValidator')
    ListOfResource = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfResource', name: 'ListOfResource')
    ListOfRestApi = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfRestApi', name: 'ListOfRestApi')
    ListOfSdkConfigurationProperty = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfSdkConfigurationProperty', name: 'ListOfSdkConfigurationProperty')
    ListOfSdkType = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfSdkType', name: 'ListOfSdkType')
    ListOfStage = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfStage', name: 'ListOfStage')
    ListOfStageKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfStageKeys', name: 'ListOfStageKeys')
    ListOfString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfString', name: 'ListOfString')
    ListOfUsage = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfUsage', name: 'ListOfUsage')
    ListOfUsagePlan = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfUsagePlan', name: 'ListOfUsagePlan')
    ListOfUsagePlanKey = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfUsagePlanKey', name: 'ListOfUsagePlanKey')
    ListOfVpcLink = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.apigateway#ListOfVpcLink', name: 'ListOfVpcLink')
    LocationStatusType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#LocationStatusType', name: 'LocationStatusType')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apigateway#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MapOfApiStageThrottleSettings = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfApiStageThrottleSettings', name: 'MapOfApiStageThrottleSettings')
    MapOfIntegrationResponse = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfIntegrationResponse', name: 'MapOfIntegrationResponse')
    MapOfKeyUsages = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfKeyUsages', name: 'MapOfKeyUsages')
    MapOfMethod = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfMethod', name: 'MapOfMethod')
    MapOfMethodResponse = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfMethodResponse', name: 'MapOfMethodResponse')
    MapOfMethodSettings = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfMethodSettings', name: 'MapOfMethodSettings')
    MapOfMethodSnapshot = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfMethodSnapshot', name: 'MapOfMethodSnapshot')
    MapOfStringToBoolean = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfStringToBoolean', name: 'MapOfStringToBoolean')
    MapOfStringToList = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfStringToList', name: 'MapOfStringToList')
    MapOfStringToString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#MapOfStringToString', name: 'MapOfStringToString')
    Method = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#Method', name: 'Method')
    MethodResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#MethodResponse', name: 'MethodResponse')
    MethodSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#MethodSetting', name: 'MethodSetting')
    MethodSnapshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#MethodSnapshot', name: 'MethodSnapshot')
    Model = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#Model', name: 'Model')
    MutualTlsAuthentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#MutualTlsAuthentication', name: 'MutualTlsAuthentication')
    MutualTlsAuthenticationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#MutualTlsAuthenticationInput', name: 'MutualTlsAuthenticationInput')
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.apigateway#NullableBoolean', name: 'NullableBoolean')
    NullableInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.apigateway#NullableInteger', name: 'NullableInteger')
    Op = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#Op', name: 'Op')
    PatchOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PatchOperation', name: 'PatchOperation')
    PathToMapOfMethodSnapshot = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.apigateway#PathToMapOfMethodSnapshot', name: 'PathToMapOfMethodSnapshot')
    ProviderARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apigateway#ProviderARN', name: 'ProviderARN')
    PutGatewayResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutGatewayResponseOutput', name: 'PutGatewayResponseOutput')
    PutGatewayResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutGatewayResponseRequest', name: 'PutGatewayResponseRequest')
    PutIntegrationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutIntegrationOutput', name: 'PutIntegrationOutput')
    PutIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutIntegrationRequest', name: 'PutIntegrationRequest')
    PutIntegrationResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutIntegrationResponseOutput', name: 'PutIntegrationResponseOutput')
    PutIntegrationResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutIntegrationResponseRequest', name: 'PutIntegrationResponseRequest')
    PutMethodOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutMethodOutput', name: 'PutMethodOutput')
    PutMethodRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutMethodRequest', name: 'PutMethodRequest')
    PutMethodResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutMethodResponseOutput', name: 'PutMethodResponseOutput')
    PutMethodResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutMethodResponseRequest', name: 'PutMethodResponseRequest')
    PutMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#PutMode', name: 'PutMode')
    PutRestApiOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutRestApiOutput', name: 'PutRestApiOutput')
    PutRestApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#PutRestApiRequest', name: 'PutRestApiRequest')
    QuotaPeriodType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#QuotaPeriodType', name: 'QuotaPeriodType')
    QuotaSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#QuotaSettings', name: 'QuotaSettings')
    RejectDomainNameAccessAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#RejectDomainNameAccessAssociationRequest', name: 'RejectDomainNameAccessAssociationRequest')
    RequestValidator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#RequestValidator', name: 'RequestValidator')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#Resource', name: 'Resource')
    ResourceOwner = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#ResourceOwner', name: 'ResourceOwner')
    RestApi = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#RestApi', name: 'RestApi')
    RoutingMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#RoutingMode', name: 'RoutingMode')
    SdkConfigurationProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#SdkConfigurationProperty', name: 'SdkConfigurationProperty')
    SdkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#SdkResponse', name: 'SdkResponse')
    SdkType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#SdkType', name: 'SdkType')
    SecurityPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#SecurityPolicy', name: 'SecurityPolicy')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Stage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#Stage', name: 'Stage')
    StageKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#StageKey', name: 'StageKey')
    StatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apigateway#StatusCode', name: 'StatusCode', traits: {"smithy.api#pattern" => "^[1-5]\\d\\d$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.apigateway#String', name: 'String')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#TagResourceRequest', name: 'TagResourceRequest')
    TestInvokeAuthorizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#TestInvokeAuthorizerRequest', name: 'TestInvokeAuthorizerRequest')
    TestInvokeAuthorizerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#TestInvokeAuthorizerResponse', name: 'TestInvokeAuthorizerResponse')
    TestInvokeMethodRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#TestInvokeMethodRequest', name: 'TestInvokeMethodRequest')
    TestInvokeMethodResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#TestInvokeMethodResponse', name: 'TestInvokeMethodResponse')
    ThrottleSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#ThrottleSettings', name: 'ThrottleSettings')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.apigateway#Timestamp', name: 'Timestamp')
    TlsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#TlsConfig', name: 'TlsConfig')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedCacheControlHeaderStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#UnauthorizedCacheControlHeaderStrategy', name: 'UnauthorizedCacheControlHeaderStrategy')
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateAccountOutput', name: 'UpdateAccountOutput')
    UpdateAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateAccountRequest', name: 'UpdateAccountRequest')
    UpdateApiKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateApiKeyOutput', name: 'UpdateApiKeyOutput')
    UpdateApiKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateApiKeyRequest', name: 'UpdateApiKeyRequest')
    UpdateAuthorizerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateAuthorizerOutput', name: 'UpdateAuthorizerOutput')
    UpdateAuthorizerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateAuthorizerRequest', name: 'UpdateAuthorizerRequest')
    UpdateBasePathMappingOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateBasePathMappingOutput', name: 'UpdateBasePathMappingOutput')
    UpdateBasePathMappingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateBasePathMappingRequest', name: 'UpdateBasePathMappingRequest')
    UpdateClientCertificateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateClientCertificateOutput', name: 'UpdateClientCertificateOutput')
    UpdateClientCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateClientCertificateRequest', name: 'UpdateClientCertificateRequest')
    UpdateDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateDeploymentOutput', name: 'UpdateDeploymentOutput')
    UpdateDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateDeploymentRequest', name: 'UpdateDeploymentRequest')
    UpdateDocumentationPartOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateDocumentationPartOutput', name: 'UpdateDocumentationPartOutput')
    UpdateDocumentationPartRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateDocumentationPartRequest', name: 'UpdateDocumentationPartRequest')
    UpdateDocumentationVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateDocumentationVersionOutput', name: 'UpdateDocumentationVersionOutput')
    UpdateDocumentationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateDocumentationVersionRequest', name: 'UpdateDocumentationVersionRequest')
    UpdateDomainNameOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateDomainNameOutput', name: 'UpdateDomainNameOutput')
    UpdateDomainNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateDomainNameRequest', name: 'UpdateDomainNameRequest')
    UpdateGatewayResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateGatewayResponseOutput', name: 'UpdateGatewayResponseOutput')
    UpdateGatewayResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateGatewayResponseRequest', name: 'UpdateGatewayResponseRequest')
    UpdateIntegrationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateIntegrationOutput', name: 'UpdateIntegrationOutput')
    UpdateIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateIntegrationRequest', name: 'UpdateIntegrationRequest')
    UpdateIntegrationResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateIntegrationResponseOutput', name: 'UpdateIntegrationResponseOutput')
    UpdateIntegrationResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateIntegrationResponseRequest', name: 'UpdateIntegrationResponseRequest')
    UpdateMethodOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateMethodOutput', name: 'UpdateMethodOutput')
    UpdateMethodRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateMethodRequest', name: 'UpdateMethodRequest')
    UpdateMethodResponseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateMethodResponseOutput', name: 'UpdateMethodResponseOutput')
    UpdateMethodResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateMethodResponseRequest', name: 'UpdateMethodResponseRequest')
    UpdateModelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateModelOutput', name: 'UpdateModelOutput')
    UpdateModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateModelRequest', name: 'UpdateModelRequest')
    UpdateRequestValidatorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateRequestValidatorOutput', name: 'UpdateRequestValidatorOutput')
    UpdateRequestValidatorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateRequestValidatorRequest', name: 'UpdateRequestValidatorRequest')
    UpdateResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateResourceOutput', name: 'UpdateResourceOutput')
    UpdateResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateResourceRequest', name: 'UpdateResourceRequest')
    UpdateRestApiOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateRestApiOutput', name: 'UpdateRestApiOutput')
    UpdateRestApiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateRestApiRequest', name: 'UpdateRestApiRequest')
    UpdateStageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateStageOutput', name: 'UpdateStageOutput')
    UpdateStageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateStageRequest', name: 'UpdateStageRequest')
    UpdateUsageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateUsageOutput', name: 'UpdateUsageOutput')
    UpdateUsagePlanOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateUsagePlanOutput', name: 'UpdateUsagePlanOutput')
    UpdateUsagePlanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateUsagePlanRequest', name: 'UpdateUsagePlanRequest')
    UpdateUsageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateUsageRequest', name: 'UpdateUsageRequest')
    UpdateVpcLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateVpcLinkOutput', name: 'UpdateVpcLinkOutput')
    UpdateVpcLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UpdateVpcLinkRequest', name: 'UpdateVpcLinkRequest')
    UsagePlan = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UsagePlan', name: 'UsagePlan')
    UsagePlanKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#UsagePlanKey', name: 'UsagePlanKey')
    VpcLink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.apigateway#VpcLink', name: 'VpcLink')
    VpcLinkStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.apigateway#VpcLinkStatus', name: 'VpcLinkStatus')

    AccessAssociationSourceType.add_member(:vpce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPCE', traits: {"smithy.api#enumValue" => "VPCE"}))
    AccessLogSettings.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'format', traits: {"smithy.api#documentation" => "<p>A single line format of the access logs of data, as specified by selected $context variables. The format must include at least <code>$context.requestId</code>.</p>"}))
    AccessLogSettings.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with <code>amazon-apigateway-</code>.</p>"}))
    AccessLogSettings.type = Types::AccessLogSettings
    ApiKey.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the API Key.</p>"}))
    ApiKey.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the API Key.</p>"}))
    ApiKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the API Key.</p>"}))
    ApiKey.add_member(:customer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customerId', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>"}))
    ApiKey.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the API Key.</p>"}))
    ApiKey.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the API Key can be used by callers.</p>"}))
    ApiKey.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API Key was created.</p>"}))
    ApiKey.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API Key was last updated.</p>"}))
    ApiKey.add_member(:stage_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'stageKeys', traits: {"smithy.api#documentation" => "<p>A list of Stage resources that are associated with the ApiKey resource.</p>"}))
    ApiKey.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    ApiKey.type = Types::ApiKey
    ApiKeySourceType.add_member(:header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEADER', traits: {"smithy.api#enumValue" => "HEADER"}))
    ApiKeySourceType.add_member(:authorizer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZER', traits: {"smithy.api#enumValue" => "AUTHORIZER"}))
    ApiKeysFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'csv', traits: {"smithy.api#enumValue" => "csv"}))
    ApiStage.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiId', traits: {"smithy.api#documentation" => "<p>API Id of the associated API stage in a usage plan.</p>"}))
    ApiStage.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>API stage name of the associated API stage in a usage plan.</p>"}))
    ApiStage.add_member(:throttle, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfApiStageThrottleSettings, location_name: 'throttle', traits: {"smithy.api#documentation" => "<p>Map containing method level throttling information for API stage in a usage plan.</p>"}))
    ApiStage.type = Types::ApiStage
    Authorizer.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the authorizer resource.</p>"}))
    Authorizer.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the authorizer.</p>"}))
    Authorizer.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>"}))
    Authorizer.add_member(:provider_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfARNs, location_name: 'providerARNs', traits: {"smithy.api#documentation" => "<p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>"}))
    Authorizer.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>"}))
    Authorizer.add_member(:authorizer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerUri', traits: {"smithy.api#documentation" => "<p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>"}))
    Authorizer.add_member(:authorizer_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerCredentials', traits: {"smithy.api#documentation" => "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>"}))
    Authorizer.add_member(:identity_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identitySource', traits: {"smithy.api#documentation" => "<p>The identity source for which authorization is requested. For a <code>TOKEN</code> or\n        <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request\n      header mapping expression for the custom header holding the authorization token submitted by\n      the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is\n      <code>method.request.header.Auth</code>. For the <code>REQUEST</code> authorizer, this is required when authorization\n      caching is enabled. The value is a comma-separated string of one or more mapping expressions\n      of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string\n      parameter are defined as identity sources, this value is <code>method.request.header.Auth</code>,\n      <code>method.request.querystring.Name</code>. These parameters will be used to derive the authorization\n      caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of\n      the identity-related request parameters are present, not null and non-empty. Only when this is\n      true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401\n      Unauthorized response without calling the Lambda function. The valid value is a string of\n      comma-separated mapping expressions of the specified request parameters. When the\n      authorization caching is not enabled, this property is optional. </p>"}))
    Authorizer.add_member(:identity_validation_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityValidationExpression', traits: {"smithy.api#documentation" => "<p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>"}))
    Authorizer.add_member(:authorizer_result_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'authorizerResultTtlInSeconds', traits: {"smithy.api#documentation" => "<p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>"}))
    Authorizer.type = Types::Authorizer
    AuthorizerType.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOKEN', traits: {"smithy.api#enumValue" => "TOKEN"}))
    AuthorizerType.add_member(:request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUEST', traits: {"smithy.api#enumValue" => "REQUEST"}))
    AuthorizerType.add_member(:cognito_user_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COGNITO_USER_POOLS', traits: {"smithy.api#enumValue" => "COGNITO_USER_POOLS"}))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    BasePathMapping.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'basePath', traits: {"smithy.api#documentation" => "<p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>"}))
    BasePathMapping.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>"}))
    BasePathMapping.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The name of the associated stage.</p>"}))
    BasePathMapping.type = Types::BasePathMapping
    CacheClusterSize.add_member(:size_0_point_5_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_0_POINT_5_GB', traits: {"smithy.api#enumValue" => "0.5"}))
    CacheClusterSize.add_member(:size_1_point_6_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_1_POINT_6_GB', traits: {"smithy.api#enumValue" => "1.6"}))
    CacheClusterSize.add_member(:size_6_point_1_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_6_POINT_1_GB', traits: {"smithy.api#enumValue" => "6.1"}))
    CacheClusterSize.add_member(:size_13_point_5_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_13_POINT_5_GB', traits: {"smithy.api#enumValue" => "13.5"}))
    CacheClusterSize.add_member(:size_28_point_4_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_28_POINT_4_GB', traits: {"smithy.api#enumValue" => "28.4"}))
    CacheClusterSize.add_member(:size_58_point_2_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_58_POINT_2_GB', traits: {"smithy.api#enumValue" => "58.2"}))
    CacheClusterSize.add_member(:size_118_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_118_GB', traits: {"smithy.api#enumValue" => "118"}))
    CacheClusterSize.add_member(:size_237_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE_237_GB', traits: {"smithy.api#enumValue" => "237"}))
    CacheClusterStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    CacheClusterStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    CacheClusterStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    CacheClusterStatus.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    CacheClusterStatus.add_member(:flush_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLUSH_IN_PROGRESS', traits: {"smithy.api#enumValue" => "FLUSH_IN_PROGRESS"}))
    CanarySettings.add_member(:percent_traffic, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'percentTraffic', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percent (0-100) of traffic diverted to a canary deployment.</p>"}))
    CanarySettings.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the canary deployment.</p>"}))
    CanarySettings.add_member(:stage_variable_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'stageVariableOverrides', traits: {"smithy.api#documentation" => "<p>Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.</p>"}))
    CanarySettings.add_member(:use_stage_cache, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'useStageCache', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether the canary deployment uses the stage cache or not.</p>"}))
    CanarySettings.type = Types::CanarySettings
    ClientCertificate.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the client certificate.</p>"}))
    ClientCertificate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the client certificate.</p>"}))
    ClientCertificate.add_member(:pem_encoded_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pemEncodedCertificate', traits: {"smithy.api#documentation" => "<p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>"}))
    ClientCertificate.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the client certificate was created.</p>"}))
    ClientCertificate.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expirationDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the client certificate will expire.</p>"}))
    ClientCertificate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    ClientCertificate.type = Types::ClientCertificate
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConnectionType.add_member(:internet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNET', traits: {"smithy.api#enumValue" => "INTERNET"}))
    ConnectionType.add_member(:vpc_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_LINK', traits: {"smithy.api#enumValue" => "VPC_LINK"}))
    ContentHandlingStrategy.add_member(:convert_to_binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONVERT_TO_BINARY', traits: {"smithy.api#enumValue" => "CONVERT_TO_BINARY"}))
    ContentHandlingStrategy.add_member(:convert_to_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONVERT_TO_TEXT', traits: {"smithy.api#enumValue" => "CONVERT_TO_TEXT"}))
    CreateApiKeyOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the API Key.</p>"}))
    CreateApiKeyOutput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the API Key.</p>"}))
    CreateApiKeyOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the API Key.</p>"}))
    CreateApiKeyOutput.add_member(:customer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customerId', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>"}))
    CreateApiKeyOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the API Key.</p>"}))
    CreateApiKeyOutput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the API Key can be used by callers.</p>"}))
    CreateApiKeyOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API Key was created.</p>"}))
    CreateApiKeyOutput.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API Key was last updated.</p>"}))
    CreateApiKeyOutput.add_member(:stage_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'stageKeys', traits: {"smithy.api#documentation" => "<p>A list of Stage resources that are associated with the ApiKey resource.</p>"}))
    CreateApiKeyOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    CreateApiKeyOutput.type = Types::CreateApiKeyOutput
    CreateApiKeyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the ApiKey.</p>"}))
    CreateApiKeyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the ApiKey.</p>"}))
    CreateApiKeyRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the ApiKey can be used by callers.</p>"}))
    CreateApiKeyRequest.add_member(:generate_distinct_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'generateDistinctId', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether (<code>true</code>) or not (<code>false</code>) the key identifier is distinct from the created API key value. This parameter is deprecated and should not be used.</p>"}))
    CreateApiKeyRequest.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Specifies a value of the API key.</p>"}))
    CreateApiKeyRequest.add_member(:stage_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStageKeys, location_name: 'stageKeys', traits: {"smithy.api#documentation" => "<p>DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.</p>"}))
    CreateApiKeyRequest.add_member(:customer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customerId', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>"}))
    CreateApiKeyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>"}))
    CreateApiKeyRequest.type = Types::CreateApiKeyRequest
    CreateAuthorizerOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the authorizer resource.</p>"}))
    CreateAuthorizerOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the authorizer.</p>"}))
    CreateAuthorizerOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>"}))
    CreateAuthorizerOutput.add_member(:provider_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfARNs, location_name: 'providerARNs', traits: {"smithy.api#documentation" => "<p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>"}))
    CreateAuthorizerOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>"}))
    CreateAuthorizerOutput.add_member(:authorizer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerUri', traits: {"smithy.api#documentation" => "<p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>"}))
    CreateAuthorizerOutput.add_member(:authorizer_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerCredentials', traits: {"smithy.api#documentation" => "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>"}))
    CreateAuthorizerOutput.add_member(:identity_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identitySource', traits: {"smithy.api#documentation" => "<p>The identity source for which authorization is requested. For a <code>TOKEN</code> or\n        <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request\n      header mapping expression for the custom header holding the authorization token submitted by\n      the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is\n      <code>method.request.header.Auth</code>. For the <code>REQUEST</code> authorizer, this is required when authorization\n      caching is enabled. The value is a comma-separated string of one or more mapping expressions\n      of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string\n      parameter are defined as identity sources, this value is <code>method.request.header.Auth</code>,\n      <code>method.request.querystring.Name</code>. These parameters will be used to derive the authorization\n      caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of\n      the identity-related request parameters are present, not null and non-empty. Only when this is\n      true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401\n      Unauthorized response without calling the Lambda function. The valid value is a string of\n      comma-separated mapping expressions of the specified request parameters. When the\n      authorization caching is not enabled, this property is optional. </p>"}))
    CreateAuthorizerOutput.add_member(:identity_validation_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityValidationExpression', traits: {"smithy.api#documentation" => "<p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>"}))
    CreateAuthorizerOutput.add_member(:authorizer_result_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'authorizerResultTtlInSeconds', traits: {"smithy.api#documentation" => "<p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>"}))
    CreateAuthorizerOutput.type = Types::CreateAuthorizerOutput
    CreateAuthorizerRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the authorizer.</p>", "smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>", "smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:provider_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfARNs, location_name: 'providerARNs', traits: {"smithy.api#documentation" => "<p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>"}))
    CreateAuthorizerRequest.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>"}))
    CreateAuthorizerRequest.add_member(:authorizer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerUri', traits: {"smithy.api#documentation" => "<p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>"}))
    CreateAuthorizerRequest.add_member(:authorizer_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerCredentials', traits: {"smithy.api#documentation" => "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>"}))
    CreateAuthorizerRequest.add_member(:identity_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identitySource', traits: {"smithy.api#documentation" => "<p>The identity source for which authorization is requested. For a <code>TOKEN</code> or\n        <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request\n      header mapping expression for the custom header holding the authorization token submitted by\n      the client. For example, if the token header name is <code>Auth</code>, the header mapping\n      expression is <code>method.request.header.Auth</code>. For the <code>REQUEST</code>\n      authorizer, this is required when authorization caching is enabled. The value is a\n      comma-separated string of one or more mapping expressions of the specified request parameters.\n      For example, if an <code>Auth</code> header, a <code>Name</code> query string parameter are\n      defined as identity sources, this value is <code>method.request.header.Auth,\n        method.request.querystring.Name</code>. These parameters will be used to derive the\n      authorization caching key and to perform runtime validation of the <code>REQUEST</code>\n      authorizer by verifying all of the identity-related request parameters are present, not null\n      and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda\n      function, otherwise, it returns a 401 Unauthorized response without calling the Lambda\n      function. The valid value is a string of comma-separated mapping expressions of the specified\n      request parameters. When the authorization caching is not enabled, this property is\n      optional.</p>"}))
    CreateAuthorizerRequest.add_member(:identity_validation_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityValidationExpression', traits: {"smithy.api#documentation" => "<p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>"}))
    CreateAuthorizerRequest.add_member(:authorizer_result_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'authorizerResultTtlInSeconds', traits: {"smithy.api#documentation" => "<p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>"}))
    CreateAuthorizerRequest.type = Types::CreateAuthorizerRequest
    CreateBasePathMappingOutput.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'basePath', traits: {"smithy.api#documentation" => "<p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>"}))
    CreateBasePathMappingOutput.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>"}))
    CreateBasePathMappingOutput.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The name of the associated stage.</p>"}))
    CreateBasePathMappingOutput.type = Types::CreateBasePathMappingOutput
    CreateBasePathMappingRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name of the BasePathMapping resource to create.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBasePathMappingRequest.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>The identifier for the domain name resource. Required for private custom domain names.</p>", "smithy.api#httpQuery" => "domainNameId"}))
    CreateBasePathMappingRequest.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'basePath', traits: {"smithy.api#documentation" => "<p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify a base path name after the domain name.</p>"}))
    CreateBasePathMappingRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#required" => {}}))
    CreateBasePathMappingRequest.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The name of the API's stage that you want to use for this mapping. Specify '(none)' if you want callers to explicitly specify the stage name after any base path name.</p>"}))
    CreateBasePathMappingRequest.type = Types::CreateBasePathMappingRequest
    CreateDeploymentOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the deployment resource.</p>"}))
    CreateDeploymentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the deployment resource.</p>"}))
    CreateDeploymentOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date and time that the deployment resource was created.</p>"}))
    CreateDeploymentOutput.add_member(:api_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: PathToMapOfMethodSnapshot, location_name: 'apiSummary', traits: {"smithy.api#documentation" => "<p>A summary of the RestApi at the date and time that the deployment resource was created.</p>"}))
    CreateDeploymentOutput.type = Types::CreateDeploymentOutput
    CreateDeploymentRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the Stage resource for the Deployment resource to create.</p>"}))
    CreateDeploymentRequest.add_member(:stage_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageDescription', traits: {"smithy.api#documentation" => "<p>The description of the Stage resource for the Deployment resource to create.</p>"}))
    CreateDeploymentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the Deployment resource to create.</p>"}))
    CreateDeploymentRequest.add_member(:cache_cluster_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'cacheClusterEnabled', traits: {"smithy.api#documentation" => "<p>Enables a cache cluster for the Stage resource specified in the input.</p>"}))
    CreateDeploymentRequest.add_member(:cache_cluster_size, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterSize, location_name: 'cacheClusterSize', traits: {"smithy.api#documentation" => "<p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html\">Enabling API caching to enhance responsiveness</a>.</p>"}))
    CreateDeploymentRequest.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A map that defines the stage variables for the Stage resource that is associated\n          with the new deployment. Variable names can have alphanumeric and underscore characters, and the values\n          must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>"}))
    CreateDeploymentRequest.add_member(:canary_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCanarySettings, location_name: 'canarySettings', traits: {"smithy.api#documentation" => "<p>The input configuration for the canary deployment when the deployment is a canary release deployment. </p>"}))
    CreateDeploymentRequest.add_member(:tracing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'tracingEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>"}))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDocumentationPartOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The DocumentationPart identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>"}))
    CreateDocumentationPartOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPartLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>"}))
    CreateDocumentationPartOutput.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>\"{ \\\"description\\\": \\\"The API does ...\\\" }\"</code>.  Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>"}))
    CreateDocumentationPartOutput.type = Types::CreateDocumentationPartOutput
    CreateDocumentationPartRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDocumentationPartRequest.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPartLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the targeted API entity of the to-be-created documentation part.</p>", "smithy.api#required" => {}}))
    CreateDocumentationPartRequest.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only OpenAPI-compliant key-value pairs can be exported and, hence, published.</p>", "smithy.api#required" => {}}))
    CreateDocumentationPartRequest.type = Types::CreateDocumentationPartRequest
    CreateDocumentationVersionOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version identifier of the API documentation snapshot.</p>"}))
    CreateDocumentationVersionOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date when the API documentation snapshot is created.</p>"}))
    CreateDocumentationVersionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the API documentation snapshot.</p>"}))
    CreateDocumentationVersionOutput.type = Types::CreateDocumentationVersionOutput
    CreateDocumentationVersionRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDocumentationVersionRequest.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version identifier of the new snapshot.</p>", "smithy.api#required" => {}}))
    CreateDocumentationVersionRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The stage name to be associated with the new documentation snapshot.</p>"}))
    CreateDocumentationVersionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description about the new documentation snapshot.</p>"}))
    CreateDocumentationVersionRequest.type = Types::CreateDocumentationVersionRequest
    CreateDomainNameAccessAssociationOutput.add_member(:domain_name_access_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameAccessAssociationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name access association resource.\n</p>"}))
    CreateDomainNameAccessAssociationOutput.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name.\n</p>"}))
    CreateDomainNameAccessAssociationOutput.add_member(:access_association_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessAssociationSourceType, location_name: 'accessAssociationSourceType', traits: {"smithy.api#documentation" => "<p>\n  The type of the domain name access association source.\n</p>"}))
    CreateDomainNameAccessAssociationOutput.add_member(:access_association_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessAssociationSource', traits: {"smithy.api#documentation" => "<p>\n  The ARN of the domain name access association source. For a VPCE, the ARN must be a VPC endpoint. \n</p>"}))
    CreateDomainNameAccessAssociationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>\nThe collection of tags. Each tag element is associated with a given resource.\n</p>"}))
    CreateDomainNameAccessAssociationOutput.type = Types::CreateDomainNameAccessAssociationOutput
    CreateDomainNameAccessAssociationRequest.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>\n  The ARN of the domain name.\n</p>", "smithy.api#required" => {}}))
    CreateDomainNameAccessAssociationRequest.add_member(:access_association_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessAssociationSourceType, location_name: 'accessAssociationSourceType', traits: {"smithy.api#documentation" => "<p>\nThe type of the domain name access association source.\n</p>", "smithy.api#required" => {}}))
    CreateDomainNameAccessAssociationRequest.add_member(:access_association_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessAssociationSource', traits: {"smithy.api#documentation" => "<p>\nThe identifier of the domain name access association source. For a VPCE, the value is the VPC endpoint ID.\n</p>", "smithy.api#required" => {}}))
    CreateDomainNameAccessAssociationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>"}))
    CreateDomainNameAccessAssociationRequest.type = Types::CreateDomainNameAccessAssociationRequest
    CreateDomainNameOutput.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>"}))
    CreateDomainNameOutput.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>The identifier for the domain name resource. Supported only for private custom domain names.</p>"}))
    CreateDomainNameOutput.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name.\n</p>"}))
    CreateDomainNameOutput.add_member(:certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateName', traits: {"smithy.api#documentation" => "<p>The name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>"}))
    CreateDomainNameOutput.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>"}))
    CreateDomainNameOutput.add_member(:certificate_upload_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'certificateUploadDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the certificate that was used by edge-optimized endpoint or private endpoint for this domain name was uploaded.</p>"}))
    CreateDomainNameOutput.add_member(:regional_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalDomainName', traits: {"smithy.api#documentation" => "<p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>"}))
    CreateDomainNameOutput.add_member(:regional_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalHostedZoneId', traits: {"smithy.api#documentation" => "<p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>"}))
    CreateDomainNameOutput.add_member(:regional_certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateName', traits: {"smithy.api#documentation" => "<p>The name of the certificate that will be used for validating the regional domain name.</p>"}))
    CreateDomainNameOutput.add_member(:regional_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used for validating the regional domain name. Certificate Manager is the only supported source.</p>"}))
    CreateDomainNameOutput.add_member(:distribution_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'distributionDomainName', traits: {"smithy.api#documentation" => "<p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.</p>"}))
    CreateDomainNameOutput.add_member(:distribution_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'distributionHostedZoneId', traits: {"smithy.api#documentation" => "<p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>"}))
    CreateDomainNameOutput.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>"}))
    CreateDomainNameOutput.add_member(:domain_name_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameStatus, location_name: 'domainNameStatus', traits: {"smithy.api#documentation" => "<p>The status of the DomainName migration. The valid values are <code>AVAILABLE</code> and <code>UPDATING</code>. If the status is <code>UPDATING</code>, the domain cannot be modified further until the existing operation is complete. If it is <code>AVAILABLE</code>, the domain can be updated.</p>"}))
    CreateDomainNameOutput.add_member(:domain_name_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameStatusMessage', traits: {"smithy.api#documentation" => "<p>An optional text message containing detailed information about status of the DomainName migration.</p>"}))
    CreateDomainNameOutput.add_member(:security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicy, location_name: 'securityPolicy', traits: {"smithy.api#documentation" => "<p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>"}))
    CreateDomainNameOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    CreateDomainNameOutput.add_member(:mutual_tls_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: MutualTlsAuthentication, location_name: 'mutualTlsAuthentication', traits: {"smithy.api#documentation" => "<p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway\n      performs two-way authentication between the client and the server. Clients must present a\n      trusted certificate to access your API.</p>"}))
    CreateDomainNameOutput.add_member(:ownership_verification_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownershipVerificationCertificateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the public certificate issued by ACM to validate ownership of your custom\n      domain. Only required when configuring mutual TLS and using an ACM imported or private CA\n      certificate ARN as the regionalCertificateArn.</p>"}))
    CreateDomainNameOutput.add_member(:management_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'managementPolicy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the API Gateway Management service for this DomainName. This policy document controls access for access association sources to create domain name access associations with this DomainName. Supported only for private custom domain names.</p>"}))
    CreateDomainNameOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method\n      configuration. Supported only for private custom\n      domain names.</p>"}))
    CreateDomainNameOutput.add_member(:routing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingMode, location_name: 'routingMode', traits: {"smithy.api#documentation" => "<p>The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.</p>"}))
    CreateDomainNameOutput.type = Types::CreateDomainNameOutput
    CreateDomainNameRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The name of the DomainName resource.</p>", "smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>"}))
    CreateDomainNameRequest.add_member(:certificate_body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateBody', traits: {"smithy.api#documentation" => "<p>[Deprecated] The body of the server certificate that will be used by edge-optimized endpoint or private endpoint for this domain name provided by your certificate authority.</p>"}))
    CreateDomainNameRequest.add_member(:certificate_private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificatePrivateKey', traits: {"smithy.api#documentation" => "<p>[Deprecated] Your edge-optimized endpoint's domain name certificate's private key.</p>"}))
    CreateDomainNameRequest.add_member(:certificate_chain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateChain', traits: {"smithy.api#documentation" => "<p>[Deprecated] The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.</p>"}))
    CreateDomainNameRequest.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>"}))
    CreateDomainNameRequest.add_member(:regional_certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the certificate that will be used by regional endpoint for this domain name.</p>"}))
    CreateDomainNameRequest.add_member(:regional_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used by regional endpoint for this domain name. Certificate Manager is the only supported source.</p>"}))
    CreateDomainNameRequest.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>"}))
    CreateDomainNameRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>"}))
    CreateDomainNameRequest.add_member(:security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicy, location_name: 'securityPolicy', traits: {"smithy.api#documentation" => "<p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>"}))
    CreateDomainNameRequest.add_member(:mutual_tls_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: MutualTlsAuthenticationInput, location_name: 'mutualTlsAuthentication'))
    CreateDomainNameRequest.add_member(:ownership_verification_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownershipVerificationCertificateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the public certificate issued by ACM to validate ownership of your custom\n      domain. Only required when configuring mutual TLS and using an ACM imported or private CA\n      certificate ARN as the regionalCertificateArn.</p>"}))
    CreateDomainNameRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method\n      configuration. Supported only for private custom\n      domain names.</p>"}))
    CreateDomainNameRequest.add_member(:routing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingMode, location_name: 'routingMode', traits: {"smithy.api#documentation" => "<p>\nThe routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.\n</p>"}))
    CreateDomainNameRequest.type = Types::CreateDomainNameRequest
    CreateModelOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the model resource.</p>"}))
    CreateModelOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the model. Must be an alphanumeric string.</p>"}))
    CreateModelOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the model.</p>"}))
    CreateModelOutput.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. Do not include \"\\*/\" characters in the description of any properties because such \"\\*/\" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>"}))
    CreateModelOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The content-type for the model.</p>"}))
    CreateModelOutput.type = Types::CreateModelOutput
    CreateModelRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The RestApi identifier under which the Model will be created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the model. Must be alphanumeric.</p>", "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the model.</p>"}))
    CreateModelRequest.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. The maximum size of the model is 400 KB.</p>"}))
    CreateModelRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The content-type for the model.</p>", "smithy.api#required" => {}}))
    CreateModelRequest.type = Types::CreateModelRequest
    CreateRequestValidatorOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of this RequestValidator.</p>"}))
    CreateRequestValidatorOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of this RequestValidator</p>"}))
    CreateRequestValidatorOutput.add_member(:validate_request_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestBody', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate a request body according to the configured Model schema.</p>"}))
    CreateRequestValidatorOutput.add_member(:validate_request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestParameters', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>"}))
    CreateRequestValidatorOutput.type = Types::CreateRequestValidatorOutput
    CreateRequestValidatorRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRequestValidatorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the to-be-created RequestValidator.</p>"}))
    CreateRequestValidatorRequest.add_member(:validate_request_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestBody', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (<code>true</code>) or not (<code>false</code>).</p>"}))
    CreateRequestValidatorRequest.add_member(:validate_request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestParameters', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate request parameters, <code>true</code>, or not <code>false</code>.</p>"}))
    CreateRequestValidatorRequest.type = Types::CreateRequestValidatorRequest
    CreateResourceOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The resource's identifier.</p>"}))
    CreateResourceOutput.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'parentId', traits: {"smithy.api#documentation" => "<p>The parent resource's identifier.</p>"}))
    CreateResourceOutput.add_member(:path_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pathPart', traits: {"smithy.api#documentation" => "<p>The last path segment for this resource.</p>"}))
    CreateResourceOutput.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The full path for this resource.</p>"}))
    CreateResourceOutput.add_member(:resource_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethod, location_name: 'resourceMethods', traits: {"smithy.api#documentation" => "<p>Gets an API resource's method of a given HTTP verb.</p>"}))
    CreateResourceOutput.type = Types::CreateResourceOutput
    CreateResourceRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResourceRequest.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'parentId', traits: {"smithy.api#documentation" => "<p>The parent resource's identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResourceRequest.add_member(:path_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pathPart', traits: {"smithy.api#documentation" => "<p>The last path segment for this resource.</p>", "smithy.api#required" => {}}))
    CreateResourceRequest.type = Types::CreateResourceRequest
    CreateRestApiOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>"}))
    CreateRestApiOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The API's name.</p>"}))
    CreateRestApiOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The API's description.</p>"}))
    CreateRestApiOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API was created.</p>"}))
    CreateRestApiOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A version identifier for the API.</p>"}))
    CreateRestApiOutput.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>"}))
    CreateRestApiOutput.add_member(:binary_media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'binaryMediaTypes', traits: {"smithy.api#documentation" => "<p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>"}))
    CreateRestApiOutput.add_member(:minimum_compression_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'minimumCompressionSize', traits: {"smithy.api#documentation" => "<p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>"}))
    CreateRestApiOutput.add_member(:api_key_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeySourceType, location_name: 'apiKeySource', traits: {"smithy.api#documentation" => "<p>The source of the API key for metering requests according to a usage plan. Valid values\n      are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a\n      request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>\n      from a custom authorizer.</p>"}))
    CreateRestApiOutput.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>"}))
    CreateRestApiOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>"}))
    CreateRestApiOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    CreateRestApiOutput.add_member(:disable_execute_api_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableExecuteApiEndpoint', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.\n      By default, clients can invoke your API with the default\n      <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a\n      custom domain name to invoke your API, disable the default endpoint.</p>"}))
    CreateRestApiOutput.add_member(:root_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rootResourceId', traits: {"smithy.api#documentation" => "<p>The API's root resource ID.</p>"}))
    CreateRestApiOutput.type = Types::CreateRestApiOutput
    CreateRestApiRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the RestApi.</p>", "smithy.api#required" => {}}))
    CreateRestApiRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the RestApi.</p>"}))
    CreateRestApiRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A version identifier for the API.</p>"}))
    CreateRestApiRequest.add_member(:clone_from, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cloneFrom', traits: {"smithy.api#documentation" => "<p>The ID of the RestApi that you want to clone from.</p>"}))
    CreateRestApiRequest.add_member(:binary_media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'binaryMediaTypes', traits: {"smithy.api#documentation" => "<p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>"}))
    CreateRestApiRequest.add_member(:minimum_compression_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'minimumCompressionSize', traits: {"smithy.api#documentation" => "<p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>"}))
    CreateRestApiRequest.add_member(:api_key_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeySourceType, location_name: 'apiKeySource', traits: {"smithy.api#documentation" => "<p>The source of the API key for metering requests according to a usage plan. Valid values\n      are: <code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a\n      request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>\n      from a custom authorizer.</p>"}))
    CreateRestApiRequest.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>"}))
    CreateRestApiRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>"}))
    CreateRestApiRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>"}))
    CreateRestApiRequest.add_member(:disable_execute_api_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableExecuteApiEndpoint', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.\n      By default, clients can invoke your API with the default\n      <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a\n      custom domain name to invoke your API, disable the default endpoint</p>"}))
    CreateRestApiRequest.type = Types::CreateRestApiRequest
    CreateStageOutput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Deployment that the stage points to.</p>"}))
    CreateStageOutput.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of a client certificate for an API stage.</p>"}))
    CreateStageOutput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"}))
    CreateStageOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The stage's description.</p>"}))
    CreateStageOutput.add_member(:cache_cluster_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'cacheClusterEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether a cache cluster is enabled for the stage. To activate a method-level cache, set <code>CachingEnabled</code> to <code>true</code> for a method. </p>"}))
    CreateStageOutput.add_member(:cache_cluster_size, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterSize, location_name: 'cacheClusterSize', traits: {"smithy.api#documentation" => "<p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html\">Enabling API caching to enhance responsiveness</a>.</p>"}))
    CreateStageOutput.add_member(:cache_cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterStatus, location_name: 'cacheClusterStatus', traits: {"smithy.api#documentation" => "<p>The status of the cache cluster for the stage, if enabled.</p>"}))
    CreateStageOutput.add_member(:method_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodSettings, location_name: 'methodSettings', traits: {"smithy.api#documentation" => "<p>A map that defines the method settings for a Stage resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\\*/\\*</code> for overriding all methods in the stage.  </p>"}))
    CreateStageOutput.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A map that defines the stage variables for a Stage resource. Variable names can\n          have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>"}))
    CreateStageOutput.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version of the associated API documentation.</p>"}))
    CreateStageOutput.add_member(:access_log_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: 'accessLogSettings', traits: {"smithy.api#documentation" => "<p>Settings for logging access in this stage.</p>"}))
    CreateStageOutput.add_member(:canary_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: CanarySettings, location_name: 'canarySettings', traits: {"smithy.api#documentation" => "<p>Settings for the canary deployment in this stage.</p>"}))
    CreateStageOutput.add_member(:tracing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'tracingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>"}))
    CreateStageOutput.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'webAclArn', traits: {"smithy.api#documentation" => "<p>The ARN of the WebAcl associated with the Stage.</p>"}))
    CreateStageOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    CreateStageOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the stage was created.</p>"}))
    CreateStageOutput.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the stage last updated.</p>"}))
    CreateStageOutput.type = Types::CreateStageOutput
    CreateStageRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStageRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name for the Stage resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>", "smithy.api#required" => {}}))
    CreateStageRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Deployment resource for the Stage resource.</p>", "smithy.api#required" => {}}))
    CreateStageRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the Stage resource.</p>"}))
    CreateStageRequest.add_member(:cache_cluster_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'cacheClusterEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether cache clustering is enabled for the stage.</p>"}))
    CreateStageRequest.add_member(:cache_cluster_size, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterSize, location_name: 'cacheClusterSize', traits: {"smithy.api#documentation" => "<p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html\">Enabling API caching to enhance responsiveness</a>.</p>"}))
    CreateStageRequest.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A map that defines the stage variables for the new Stage resource. Variable names\n          can have alphanumeric and underscore characters, and the values must match\n          <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>"}))
    CreateStageRequest.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version of the associated API documentation.</p>"}))
    CreateStageRequest.add_member(:canary_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: CanarySettings, location_name: 'canarySettings', traits: {"smithy.api#documentation" => "<p>The canary deployment settings of this stage.</p>"}))
    CreateStageRequest.add_member(:tracing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'tracingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>"}))
    CreateStageRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>"}))
    CreateStageRequest.type = Types::CreateStageRequest
    CreateUsagePlanKeyOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The Id of a usage plan key.</p>"}))
    CreateUsagePlanKeyOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>"}))
    CreateUsagePlanKeyOutput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of a usage plan key.</p>"}))
    CreateUsagePlanKeyOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a usage plan key.</p>"}))
    CreateUsagePlanKeyOutput.type = Types::CreateUsagePlanKeyOutput
    CreateUsagePlanKeyRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The Id of the UsagePlan resource representing the usage plan containing the to-be-created UsagePlanKey resource representing a plan customer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUsagePlanKeyRequest.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyId', traits: {"smithy.api#documentation" => "<p>The identifier of a UsagePlanKey resource for a plan customer.</p>", "smithy.api#required" => {}}))
    CreateUsagePlanKeyRequest.add_member(:key_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyType', traits: {"smithy.api#documentation" => "<p>The type of a UsagePlanKey resource for a plan customer.</p>", "smithy.api#required" => {}}))
    CreateUsagePlanKeyRequest.type = Types::CreateUsagePlanKeyRequest
    CreateUsagePlanOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of a UsagePlan resource.</p>"}))
    CreateUsagePlanOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a usage plan.</p>"}))
    CreateUsagePlanOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of a usage plan.</p>"}))
    CreateUsagePlanOutput.add_member(:api_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfApiStage, location_name: 'apiStages', traits: {"smithy.api#documentation" => "<p>The associated API stages of a usage plan.</p>"}))
    CreateUsagePlanOutput.add_member(:throttle, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleSettings, location_name: 'throttle', traits: {"smithy.api#documentation" => "<p>A map containing method level throttling information for API stage in a usage plan.</p>"}))
    CreateUsagePlanOutput.add_member(:quota, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaSettings, location_name: 'quota', traits: {"smithy.api#documentation" => "<p>The target maximum number of permitted requests per a given unit time interval.</p>"}))
    CreateUsagePlanOutput.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'productCode', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Marketplace product identifier to associate with the usage plan as a SaaS product on the Amazon Web Services Marketplace.</p>"}))
    CreateUsagePlanOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    CreateUsagePlanOutput.type = Types::CreateUsagePlanOutput
    CreateUsagePlanRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the usage plan.</p>", "smithy.api#required" => {}}))
    CreateUsagePlanRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the usage plan.</p>"}))
    CreateUsagePlanRequest.add_member(:api_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfApiStage, location_name: 'apiStages', traits: {"smithy.api#documentation" => "<p>The associated API stages of the usage plan.</p>"}))
    CreateUsagePlanRequest.add_member(:throttle, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleSettings, location_name: 'throttle', traits: {"smithy.api#documentation" => "<p>The throttling limits of the usage plan.</p>"}))
    CreateUsagePlanRequest.add_member(:quota, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaSettings, location_name: 'quota', traits: {"smithy.api#documentation" => "<p>The quota of the usage plan.</p>"}))
    CreateUsagePlanRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>"}))
    CreateUsagePlanRequest.type = Types::CreateUsagePlanRequest
    CreateVpcLinkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>"}))
    CreateVpcLinkOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name used to label and identify the VPC link.</p>"}))
    CreateVpcLinkOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the VPC link.</p>"}))
    CreateVpcLinkOutput.add_member(:target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'targetArns', traits: {"smithy.api#documentation" => "<p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>"}))
    CreateVpcLinkOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcLinkStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>.  </p>"}))
    CreateVpcLinkOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A description about the VPC link status.</p>"}))
    CreateVpcLinkOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    CreateVpcLinkOutput.type = Types::CreateVpcLinkOutput
    CreateVpcLinkRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name used to label and identify the VPC link.</p>", "smithy.api#required" => {}}))
    CreateVpcLinkRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the VPC link.</p>"}))
    CreateVpcLinkRequest.add_member(:target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'targetArns', traits: {"smithy.api#documentation" => "<p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>", "smithy.api#required" => {}}))
    CreateVpcLinkRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>"}))
    CreateVpcLinkRequest.type = Types::CreateVpcLinkRequest
    DeleteApiKeyRequest.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiKey', traits: {"smithy.api#documentation" => "<p>The identifier of the ApiKey resource to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiKeyRequest.type = Types::DeleteApiKeyRequest
    DeleteAuthorizerRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAuthorizerRequest.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>The identifier of the Authorizer resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAuthorizerRequest.type = Types::DeleteAuthorizerRequest
    DeleteBasePathMappingRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name of the BasePathMapping resource to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBasePathMappingRequest.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>\n  The identifier for the domain name resource. Supported only for private custom domain names.\n</p>", "smithy.api#httpQuery" => "domainNameId"}))
    DeleteBasePathMappingRequest.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'basePath', traits: {"smithy.api#documentation" => "<p>The base path name of the BasePathMapping resource to delete.</p>\n         <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBasePathMappingRequest.type = Types::DeleteBasePathMappingRequest
    DeleteClientCertificateRequest.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the ClientCertificate resource to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClientCertificateRequest.type = Types::DeleteClientCertificateRequest
    DeleteDeploymentRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Deployment resource to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.type = Types::DeleteDeploymentRequest
    DeleteDocumentationPartRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentationPartRequest.add_member(:documentation_part_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationPartId', traits: {"smithy.api#documentation" => "<p>The identifier of the to-be-deleted documentation part.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentationPartRequest.type = Types::DeleteDocumentationPartRequest
    DeleteDocumentationVersionRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentationVersionRequest.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version identifier of a to-be-deleted documentation snapshot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentationVersionRequest.type = Types::DeleteDocumentationVersionRequest
    DeleteDomainNameAccessAssociationRequest.add_member(:domain_name_access_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameAccessAssociationArn', traits: {"smithy.api#documentation" => "<p>\n  The ARN of the domain name access association resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainNameAccessAssociationRequest.type = Types::DeleteDomainNameAccessAssociationRequest
    DeleteDomainNameRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The name of the DomainName resource to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainNameRequest.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>\n  The identifier for the domain name resource. Supported only for private custom domain names.\n</p>", "smithy.api#httpQuery" => "domainNameId"}))
    DeleteDomainNameRequest.type = Types::DeleteDomainNameRequest
    DeleteGatewayResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayResponseRequest.add_member(:response_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponseType, location_name: 'responseType', traits: {"smithy.api#documentation" => "<p>The response type of the associated GatewayResponse.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayResponseRequest.type = Types::DeleteGatewayResponseRequest
    DeleteIntegrationRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Specifies a delete integration request's resource identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies a delete integration request's HTTP method.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.type = Types::DeleteIntegrationRequest
    DeleteIntegrationResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Specifies a delete integration response request's resource identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies a delete integration response request's HTTP method.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>Specifies a delete integration response request's status code.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.type = Types::DeleteIntegrationResponseRequest
    DeleteMethodRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource identifier for the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The HTTP verb of the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodRequest.type = Types::DeleteMethodRequest
    DeleteMethodResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodResponseRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource identifier for the MethodResponse resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodResponseRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The HTTP verb of the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code identifier for the MethodResponse resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodResponseRequest.type = Types::DeleteMethodResponseRequest
    DeleteModelRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelName', traits: {"smithy.api#documentation" => "<p>The name of the model to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.type = Types::DeleteModelRequest
    DeleteRequestValidatorRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRequestValidatorRequest.add_member(:request_validator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestValidatorId', traits: {"smithy.api#documentation" => "<p>The identifier of the RequestValidator to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRequestValidatorRequest.type = Types::DeleteRequestValidatorRequest
    DeleteResourceRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Resource resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceRequest.type = Types::DeleteResourceRequest
    DeleteRestApiRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRestApiRequest.type = Types::DeleteRestApiRequest
    DeleteStageRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStageRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the Stage resource to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStageRequest.type = Types::DeleteStageRequest
    DeleteUsagePlanKeyRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The Id of the UsagePlan resource representing the usage plan containing the to-be-deleted UsagePlanKey resource representing a plan customer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUsagePlanKeyRequest.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyId', traits: {"smithy.api#documentation" => "<p>The Id of the UsagePlanKey resource to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUsagePlanKeyRequest.type = Types::DeleteUsagePlanKeyRequest
    DeleteUsagePlanRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The Id of the to-be-deleted usage plan.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUsagePlanRequest.type = Types::DeleteUsagePlanRequest
    DeleteVpcLinkRequest.add_member(:vpc_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vpcLinkId', traits: {"smithy.api#documentation" => "<p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcLinkRequest.type = Types::DeleteVpcLinkRequest
    Deployment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the deployment resource.</p>"}))
    Deployment.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the deployment resource.</p>"}))
    Deployment.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date and time that the deployment resource was created.</p>"}))
    Deployment.add_member(:api_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: PathToMapOfMethodSnapshot, location_name: 'apiSummary', traits: {"smithy.api#documentation" => "<p>A summary of the RestApi at the date and time that the deployment resource was created.</p>"}))
    Deployment.type = Types::Deployment
    DeploymentCanarySettings.add_member(:percent_traffic, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'percentTraffic', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage (0.0-100.0) of traffic routed to the canary deployment.</p>"}))
    DeploymentCanarySettings.add_member(:stage_variable_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'stageVariableOverrides', traits: {"smithy.api#documentation" => "<p>A stage variable overrides used for the canary release deployment. They can override existing stage variables or add new stage variables for the canary release deployment. These stage variables are represented as a string-to-string map between stage variable names and their values.</p>"}))
    DeploymentCanarySettings.add_member(:use_stage_cache, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'useStageCache', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether the canary release deployment uses the stage cache or not.</p>"}))
    DeploymentCanarySettings.type = Types::DeploymentCanarySettings
    DocumentationPart.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The DocumentationPart identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>"}))
    DocumentationPart.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPartLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>"}))
    DocumentationPart.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>\"{ \\\"description\\\": \\\"The API does ...\\\" }\"</code>.  Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>"}))
    DocumentationPart.type = Types::DocumentationPart
    DocumentationPartLocation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPartType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of API entity to which the documentation content applies. Valid values are <code>API</code>, <code>AUTHORIZER</code>, <code>MODEL</code>, <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>,  <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. Content inheritance does not apply to any entity of the <code>API</code>, <code>AUTHORIZER</code>, <code>METHOD</code>,  <code>MODEL</code>, <code>REQUEST_BODY</code>, or <code>RESOURCE</code> type.</p>", "smithy.api#required" => {}}))
    DocumentationPartLocation.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The URL path of the target. It is a valid field for the API entity types of <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>/</code> for the root resource. When an applicable child entity inherits the content of another entity of the same type with more general specifications of the other <code>location</code> attributes,  the child entity's <code>path</code> attribute must match that of the parent entity as a prefix.</p>"}))
    DocumentationPartLocation.add_member(:method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'method', traits: {"smithy.api#documentation" => "<p>The HTTP verb of a method. It is a valid field for the API entity types of  <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>,  <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any method.  When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes,  the child entity's <code>method</code> attribute must match that of the parent entity exactly.</p>"}))
    DocumentationPartLocation.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPartLocationStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code of a response. It is a valid field for the API entity types of <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any status code. When an applicable child  entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>statusCode</code> attribute must match that of the parent entity exactly.</p>"}))
    DocumentationPartLocation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the targeted API entity. It is a valid and required field for the API entity types of <code>AUTHORIZER</code>, <code>MODEL</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code> and <code>RESPONSE_HEADER</code>. It is an invalid field for any other entity type.</p>"}))
    DocumentationPartLocation.type = Types::DocumentationPartLocation
    DocumentationPartType.add_member(:api, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API', traits: {"smithy.api#enumValue" => "API"}))
    DocumentationPartType.add_member(:authorizer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZER', traits: {"smithy.api#enumValue" => "AUTHORIZER"}))
    DocumentationPartType.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL', traits: {"smithy.api#enumValue" => "MODEL"}))
    DocumentationPartType.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    DocumentationPartType.add_member(:method, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METHOD', traits: {"smithy.api#enumValue" => "METHOD"}))
    DocumentationPartType.add_member(:path_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATH_PARAMETER', traits: {"smithy.api#enumValue" => "PATH_PARAMETER"}))
    DocumentationPartType.add_member(:query_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_PARAMETER', traits: {"smithy.api#enumValue" => "QUERY_PARAMETER"}))
    DocumentationPartType.add_member(:request_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUEST_HEADER', traits: {"smithy.api#enumValue" => "REQUEST_HEADER"}))
    DocumentationPartType.add_member(:request_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUEST_BODY', traits: {"smithy.api#enumValue" => "REQUEST_BODY"}))
    DocumentationPartType.add_member(:response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESPONSE', traits: {"smithy.api#enumValue" => "RESPONSE"}))
    DocumentationPartType.add_member(:response_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESPONSE_HEADER', traits: {"smithy.api#enumValue" => "RESPONSE_HEADER"}))
    DocumentationPartType.add_member(:response_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESPONSE_BODY', traits: {"smithy.api#enumValue" => "RESPONSE_BODY"}))
    DocumentationVersion.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version identifier of the API documentation snapshot.</p>"}))
    DocumentationVersion.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date when the API documentation snapshot is created.</p>"}))
    DocumentationVersion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the API documentation snapshot.</p>"}))
    DocumentationVersion.type = Types::DocumentationVersion
    DomainName.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>"}))
    DomainName.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>The identifier for the domain name resource. Supported only for private custom domain names.</p>"}))
    DomainName.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name.\n</p>"}))
    DomainName.add_member(:certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateName', traits: {"smithy.api#documentation" => "<p>The name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>"}))
    DomainName.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>"}))
    DomainName.add_member(:certificate_upload_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'certificateUploadDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the certificate that was used by edge-optimized endpoint or private endpoint for this domain name was uploaded.</p>"}))
    DomainName.add_member(:regional_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalDomainName', traits: {"smithy.api#documentation" => "<p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>"}))
    DomainName.add_member(:regional_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalHostedZoneId', traits: {"smithy.api#documentation" => "<p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>"}))
    DomainName.add_member(:regional_certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateName', traits: {"smithy.api#documentation" => "<p>The name of the certificate that will be used for validating the regional domain name.</p>"}))
    DomainName.add_member(:regional_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used for validating the regional domain name. Certificate Manager is the only supported source.</p>"}))
    DomainName.add_member(:distribution_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'distributionDomainName', traits: {"smithy.api#documentation" => "<p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.</p>"}))
    DomainName.add_member(:distribution_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'distributionHostedZoneId', traits: {"smithy.api#documentation" => "<p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>"}))
    DomainName.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>"}))
    DomainName.add_member(:domain_name_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameStatus, location_name: 'domainNameStatus', traits: {"smithy.api#documentation" => "<p>The status of the DomainName migration. The valid values are <code>AVAILABLE</code> and <code>UPDATING</code>. If the status is <code>UPDATING</code>, the domain cannot be modified further until the existing operation is complete. If it is <code>AVAILABLE</code>, the domain can be updated.</p>"}))
    DomainName.add_member(:domain_name_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameStatusMessage', traits: {"smithy.api#documentation" => "<p>An optional text message containing detailed information about status of the DomainName migration.</p>"}))
    DomainName.add_member(:security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicy, location_name: 'securityPolicy', traits: {"smithy.api#documentation" => "<p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>"}))
    DomainName.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    DomainName.add_member(:mutual_tls_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: MutualTlsAuthentication, location_name: 'mutualTlsAuthentication', traits: {"smithy.api#documentation" => "<p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway\n      performs two-way authentication between the client and the server. Clients must present a\n      trusted certificate to access your API.</p>"}))
    DomainName.add_member(:ownership_verification_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownershipVerificationCertificateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the public certificate issued by ACM to validate ownership of your custom\n      domain. Only required when configuring mutual TLS and using an ACM imported or private CA\n      certificate ARN as the regionalCertificateArn.</p>"}))
    DomainName.add_member(:management_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'managementPolicy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the API Gateway Management service for this DomainName. This policy document controls access for access association sources to create domain name access associations with this DomainName. Supported only for private custom domain names.</p>"}))
    DomainName.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method\n      configuration. Supported only for private custom\n      domain names.</p>"}))
    DomainName.add_member(:routing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingMode, location_name: 'routingMode', traits: {"smithy.api#documentation" => "<p>The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.</p>"}))
    DomainName.type = Types::DomainName
    DomainNameAccessAssociation.add_member(:domain_name_access_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameAccessAssociationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name access association resource.\n</p>"}))
    DomainNameAccessAssociation.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name.\n</p>"}))
    DomainNameAccessAssociation.add_member(:access_association_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessAssociationSourceType, location_name: 'accessAssociationSourceType', traits: {"smithy.api#documentation" => "<p>\n  The type of the domain name access association source.\n</p>"}))
    DomainNameAccessAssociation.add_member(:access_association_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessAssociationSource', traits: {"smithy.api#documentation" => "<p>\n  The ARN of the domain name access association source. For a VPCE, the ARN must be a VPC endpoint. \n</p>"}))
    DomainNameAccessAssociation.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>\nThe collection of tags. Each tag element is associated with a given resource.\n</p>"}))
    DomainNameAccessAssociation.type = Types::DomainNameAccessAssociation
    DomainNameStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DomainNameStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    DomainNameStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DomainNameStatus.add_member(:pending_certificate_reimport, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CERTIFICATE_REIMPORT', traits: {"smithy.api#enumValue" => "PENDING_CERTIFICATE_REIMPORT"}))
    DomainNameStatus.add_member(:pending_ownership_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_OWNERSHIP_VERIFICATION', traits: {"smithy.api#enumValue" => "PENDING_OWNERSHIP_VERIFICATION"}))
    EndpointConfiguration.add_member(:types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointType, location_name: 'types', traits: {"smithy.api#documentation" => "<p>A list of endpoint types of an API (RestApi) or its custom domain name (DomainName). For an edge-optimized API and its custom domain name, the endpoint type is <code>\"EDGE\"</code>. For a regional API and its custom domain name, the endpoint type is <code>REGIONAL</code>. For a private API, the endpoint type is <code>PRIVATE</code>.</p>"}))
    EndpointConfiguration.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The IP address types that can invoke an API (RestApi) or a DomainName. Use <code>ipv4</code> to allow only IPv4 addresses to\n    invoke an API or DomainName, or use <code>dualstack</code> to allow both IPv4 and IPv6 addresses to invoke an API or a DomainName. For the\n      <code>PRIVATE</code> endpoint type, only <code>dualstack</code> is supported.</p>"}))
    EndpointConfiguration.add_member(:vpc_endpoint_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'vpcEndpointIds', traits: {"smithy.api#documentation" => "<p>A list of VpcEndpointIds of an API (RestApi) against which to create Route53 ALIASes. It is only supported for <code>PRIVATE</code> endpoint type.</p>"}))
    EndpointConfiguration.type = Types::EndpointConfiguration
    EndpointType.add_member(:regional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGIONAL', traits: {"smithy.api#enumValue" => "REGIONAL"}))
    EndpointType.add_member(:edge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE', traits: {"smithy.api#enumValue" => "EDGE"}))
    EndpointType.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ExportResponse.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The content-type header value in the HTTP response. This will correspond to a valid 'accept' type in the request.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    ExportResponse.add_member(:content_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentDisposition', traits: {"smithy.api#documentation" => "<p>The content-disposition header value in the HTTP response.</p>", "smithy.api#httpHeader" => "Content-Disposition"}))
    ExportResponse.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The binary blob response to GetExport, which contains the export.</p>", "smithy.api#httpPayload" => {}}))
    ExportResponse[:http_payload] = :body
    ExportResponse[:http_payload_member] = ExportResponse.member(:body)
    ExportResponse.type = Types::ExportResponse
    FlushStageAuthorizersCacheRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushStageAuthorizersCacheRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage to flush.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushStageAuthorizersCacheRequest.type = Types::FlushStageAuthorizersCacheRequest
    FlushStageCacheRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushStageCacheRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage to flush its cache.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushStageCacheRequest.type = Types::FlushStageCacheRequest
    GatewayResponse.add_member(:response_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponseType, location_name: 'responseType', traits: {"smithy.api#documentation" => "<p>The response type of the associated GatewayResponse.</p>"}))
    GatewayResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code for this GatewayResponse.</p>"}))
    GatewayResponse.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>Response parameters (paths, query strings and headers) of the GatewayResponse as a\n      string-to-string map of key-value pairs.</p>"}))
    GatewayResponse.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>"}))
    GatewayResponse.add_member(:default_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultResponse', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether this GatewayResponse is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>"}))
    GatewayResponse.type = Types::GatewayResponse
    GatewayResponseType.add_member(:default_4_xx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_4XX', traits: {"smithy.api#enumValue" => "DEFAULT_4XX"}))
    GatewayResponseType.add_member(:default_5_xx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_5XX', traits: {"smithy.api#enumValue" => "DEFAULT_5XX"}))
    GatewayResponseType.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    GatewayResponseType.add_member(:unauthorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAUTHORIZED', traits: {"smithy.api#enumValue" => "UNAUTHORIZED"}))
    GatewayResponseType.add_member(:invalid_api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_API_KEY', traits: {"smithy.api#enumValue" => "INVALID_API_KEY"}))
    GatewayResponseType.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    GatewayResponseType.add_member(:authorizer_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZER_FAILURE', traits: {"smithy.api#enumValue" => "AUTHORIZER_FAILURE"}))
    GatewayResponseType.add_member(:authorizer_configuration_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZER_CONFIGURATION_ERROR', traits: {"smithy.api#enumValue" => "AUTHORIZER_CONFIGURATION_ERROR"}))
    GatewayResponseType.add_member(:invalid_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SIGNATURE', traits: {"smithy.api#enumValue" => "INVALID_SIGNATURE"}))
    GatewayResponseType.add_member(:expired_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED_TOKEN', traits: {"smithy.api#enumValue" => "EXPIRED_TOKEN"}))
    GatewayResponseType.add_member(:missing_authentication_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_AUTHENTICATION_TOKEN', traits: {"smithy.api#enumValue" => "MISSING_AUTHENTICATION_TOKEN"}))
    GatewayResponseType.add_member(:integration_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGRATION_FAILURE', traits: {"smithy.api#enumValue" => "INTEGRATION_FAILURE"}))
    GatewayResponseType.add_member(:integration_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGRATION_TIMEOUT', traits: {"smithy.api#enumValue" => "INTEGRATION_TIMEOUT"}))
    GatewayResponseType.add_member(:api_configuration_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_CONFIGURATION_ERROR', traits: {"smithy.api#enumValue" => "API_CONFIGURATION_ERROR"}))
    GatewayResponseType.add_member(:unsupported_media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_MEDIA_TYPE', traits: {"smithy.api#enumValue" => "UNSUPPORTED_MEDIA_TYPE"}))
    GatewayResponseType.add_member(:bad_request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAD_REQUEST_PARAMETERS', traits: {"smithy.api#enumValue" => "BAD_REQUEST_PARAMETERS"}))
    GatewayResponseType.add_member(:bad_request_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAD_REQUEST_BODY', traits: {"smithy.api#enumValue" => "BAD_REQUEST_BODY"}))
    GatewayResponseType.add_member(:request_too_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUEST_TOO_LARGE', traits: {"smithy.api#enumValue" => "REQUEST_TOO_LARGE"}))
    GatewayResponseType.add_member(:throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLED', traits: {"smithy.api#enumValue" => "THROTTLED"}))
    GatewayResponseType.add_member(:quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "QUOTA_EXCEEDED"}))
    GatewayResponseType.add_member(:waf_filtered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAF_FILTERED', traits: {"smithy.api#enumValue" => "WAF_FILTERED"}))
    GenerateClientCertificateOutput.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the client certificate.</p>"}))
    GenerateClientCertificateOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the client certificate.</p>"}))
    GenerateClientCertificateOutput.add_member(:pem_encoded_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pemEncodedCertificate', traits: {"smithy.api#documentation" => "<p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>"}))
    GenerateClientCertificateOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the client certificate was created.</p>"}))
    GenerateClientCertificateOutput.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expirationDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the client certificate will expire.</p>"}))
    GenerateClientCertificateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GenerateClientCertificateOutput.type = Types::GenerateClientCertificateOutput
    GenerateClientCertificateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the ClientCertificate.</p>"}))
    GenerateClientCertificateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>"}))
    GenerateClientCertificateRequest.type = Types::GenerateClientCertificateRequest
    GetAccountOutput.add_member(:cloudwatch_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cloudwatchRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an Amazon CloudWatch role for the current Account. </p>"}))
    GetAccountOutput.add_member(:throttle_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleSettings, location_name: 'throttleSettings', traits: {"smithy.api#documentation" => "<p>Specifies the API request limits configured for the current Account.</p>"}))
    GetAccountOutput.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'features', traits: {"smithy.api#documentation" => "<p>A list of features supported for the account. When usage plans are enabled, the features list will include an entry of <code>\"UsagePlans\"</code>.</p>"}))
    GetAccountOutput.add_member(:api_key_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiKeyVersion', traits: {"smithy.api#documentation" => "<p>The version of the API keys used for the account.</p>"}))
    GetAccountOutput.type = Types::GetAccountOutput
    GetAccountRequest.type = Types::GetAccountRequest
    GetApiKeyOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the API Key.</p>"}))
    GetApiKeyOutput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the API Key.</p>"}))
    GetApiKeyOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the API Key.</p>"}))
    GetApiKeyOutput.add_member(:customer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customerId', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>"}))
    GetApiKeyOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the API Key.</p>"}))
    GetApiKeyOutput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the API Key can be used by callers.</p>"}))
    GetApiKeyOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API Key was created.</p>"}))
    GetApiKeyOutput.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API Key was last updated.</p>"}))
    GetApiKeyOutput.add_member(:stage_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'stageKeys', traits: {"smithy.api#documentation" => "<p>A list of Stage resources that are associated with the ApiKey resource.</p>"}))
    GetApiKeyOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GetApiKeyOutput.type = Types::GetApiKeyOutput
    GetApiKeyRequest.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiKey', traits: {"smithy.api#documentation" => "<p>The identifier of the ApiKey resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiKeyRequest.add_member(:include_value, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'includeValue', traits: {"smithy.api#documentation" => "<p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains the key value.</p>", "smithy.api#httpQuery" => "includeValue"}))
    GetApiKeyRequest.type = Types::GetApiKeyRequest
    GetApiKeysOutput.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>A list of warning messages logged during the import of API keys when the <code>failOnWarnings</code> option is set to true.</p>"}))
    GetApiKeysOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfApiKey, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetApiKeysOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetApiKeysOutput.type = Types::GetApiKeysOutput
    GetApiKeysRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetApiKeysRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetApiKeysRequest.add_member(:name_query, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nameQuery', traits: {"smithy.api#documentation" => "<p>The name of queried API keys.</p>", "smithy.api#httpQuery" => "name"}))
    GetApiKeysRequest.add_member(:customer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customerId', traits: {"smithy.api#documentation" => "<p>The identifier of a customer in Amazon Web Services Marketplace or an external system, such as a developer portal.</p>", "smithy.api#httpQuery" => "customerId"}))
    GetApiKeysRequest.add_member(:include_values, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'includeValues', traits: {"smithy.api#documentation" => "<p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains key values.</p>", "smithy.api#httpQuery" => "includeValues"}))
    GetApiKeysRequest.type = Types::GetApiKeysRequest
    GetAuthorizerOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the authorizer resource.</p>"}))
    GetAuthorizerOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the authorizer.</p>"}))
    GetAuthorizerOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>"}))
    GetAuthorizerOutput.add_member(:provider_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfARNs, location_name: 'providerARNs', traits: {"smithy.api#documentation" => "<p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>"}))
    GetAuthorizerOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>"}))
    GetAuthorizerOutput.add_member(:authorizer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerUri', traits: {"smithy.api#documentation" => "<p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>"}))
    GetAuthorizerOutput.add_member(:authorizer_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerCredentials', traits: {"smithy.api#documentation" => "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>"}))
    GetAuthorizerOutput.add_member(:identity_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identitySource', traits: {"smithy.api#documentation" => "<p>The identity source for which authorization is requested. For a <code>TOKEN</code> or\n        <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request\n      header mapping expression for the custom header holding the authorization token submitted by\n      the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is\n      <code>method.request.header.Auth</code>. For the <code>REQUEST</code> authorizer, this is required when authorization\n      caching is enabled. The value is a comma-separated string of one or more mapping expressions\n      of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string\n      parameter are defined as identity sources, this value is <code>method.request.header.Auth</code>,\n      <code>method.request.querystring.Name</code>. These parameters will be used to derive the authorization\n      caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of\n      the identity-related request parameters are present, not null and non-empty. Only when this is\n      true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401\n      Unauthorized response without calling the Lambda function. The valid value is a string of\n      comma-separated mapping expressions of the specified request parameters. When the\n      authorization caching is not enabled, this property is optional. </p>"}))
    GetAuthorizerOutput.add_member(:identity_validation_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityValidationExpression', traits: {"smithy.api#documentation" => "<p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>"}))
    GetAuthorizerOutput.add_member(:authorizer_result_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'authorizerResultTtlInSeconds', traits: {"smithy.api#documentation" => "<p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>"}))
    GetAuthorizerOutput.type = Types::GetAuthorizerOutput
    GetAuthorizerRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizerRequest.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>The identifier of the Authorizer resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizerRequest.type = Types::GetAuthorizerRequest
    GetAuthorizersOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAuthorizer, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetAuthorizersOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetAuthorizersOutput.type = Types::GetAuthorizersOutput
    GetAuthorizersRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizersRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetAuthorizersRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetAuthorizersRequest.type = Types::GetAuthorizersRequest
    GetBasePathMappingOutput.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'basePath', traits: {"smithy.api#documentation" => "<p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>"}))
    GetBasePathMappingOutput.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>"}))
    GetBasePathMappingOutput.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The name of the associated stage.</p>"}))
    GetBasePathMappingOutput.type = Types::GetBasePathMappingOutput
    GetBasePathMappingRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name of the BasePathMapping resource to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBasePathMappingRequest.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>The identifier for the domain name resource. Supported only for private custom domain names.\n</p>", "smithy.api#httpQuery" => "domainNameId"}))
    GetBasePathMappingRequest.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'basePath', traits: {"smithy.api#documentation" => "<p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBasePathMappingRequest.type = Types::GetBasePathMappingRequest
    GetBasePathMappingsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfBasePathMapping, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetBasePathMappingsOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetBasePathMappingsOutput.type = Types::GetBasePathMappingsOutput
    GetBasePathMappingsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name of a BasePathMapping resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBasePathMappingsRequest.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>\n  The identifier for the domain name resource. Supported only for private custom domain names.\n</p>", "smithy.api#httpQuery" => "domainNameId"}))
    GetBasePathMappingsRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetBasePathMappingsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetBasePathMappingsRequest.type = Types::GetBasePathMappingsRequest
    GetClientCertificateOutput.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the client certificate.</p>"}))
    GetClientCertificateOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the client certificate.</p>"}))
    GetClientCertificateOutput.add_member(:pem_encoded_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pemEncodedCertificate', traits: {"smithy.api#documentation" => "<p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>"}))
    GetClientCertificateOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the client certificate was created.</p>"}))
    GetClientCertificateOutput.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expirationDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the client certificate will expire.</p>"}))
    GetClientCertificateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GetClientCertificateOutput.type = Types::GetClientCertificateOutput
    GetClientCertificateRequest.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the ClientCertificate resource to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClientCertificateRequest.type = Types::GetClientCertificateRequest
    GetClientCertificatesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClientCertificate, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetClientCertificatesOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetClientCertificatesOutput.type = Types::GetClientCertificatesOutput
    GetClientCertificatesRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetClientCertificatesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetClientCertificatesRequest.type = Types::GetClientCertificatesRequest
    GetDeploymentOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the deployment resource.</p>"}))
    GetDeploymentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the deployment resource.</p>"}))
    GetDeploymentOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date and time that the deployment resource was created.</p>"}))
    GetDeploymentOutput.add_member(:api_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: PathToMapOfMethodSnapshot, location_name: 'apiSummary', traits: {"smithy.api#documentation" => "<p>A summary of the RestApi at the date and time that the deployment resource was created.</p>"}))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetDeploymentRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Deployment resource to get information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:embed, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'embed', traits: {"smithy.api#documentation" => "<p>A query parameter to retrieve the specified embedded resources of the returned Deployment resource in the response. In a REST API call, this <code>embed</code> parameter value is a list of comma-separated strings, as in  <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2</code>. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the <code>\"apisummary\"</code> string.  For example, <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary</code>.</p>", "smithy.api#httpQuery" => "embed"}))
    GetDeploymentRequest.type = Types::GetDeploymentRequest
    GetDeploymentsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDeployment, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetDeploymentsOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetDeploymentsOutput.type = Types::GetDeploymentsOutput
    GetDeploymentsRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentsRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetDeploymentsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetDeploymentsRequest.type = Types::GetDeploymentsRequest
    GetDocumentationPartOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The DocumentationPart identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>"}))
    GetDocumentationPartOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPartLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>"}))
    GetDocumentationPartOutput.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>\"{ \\\"description\\\": \\\"The API does ...\\\" }\"</code>.  Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>"}))
    GetDocumentationPartOutput.type = Types::GetDocumentationPartOutput
    GetDocumentationPartRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationPartRequest.add_member(:documentation_part_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationPartId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationPartRequest.type = Types::GetDocumentationPartRequest
    GetDocumentationPartsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDocumentationPart, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetDocumentationPartsOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetDocumentationPartsOutput.type = Types::GetDocumentationPartsOutput
    GetDocumentationPartsRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationPartsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPartType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of API entities of the to-be-retrieved documentation parts. </p>", "smithy.api#httpQuery" => "type"}))
    GetDocumentationPartsRequest.add_member(:name_query, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nameQuery', traits: {"smithy.api#documentation" => "<p>The name of API entities of the to-be-retrieved documentation parts.</p>", "smithy.api#httpQuery" => "name"}))
    GetDocumentationPartsRequest.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The path of API entities of the to-be-retrieved documentation parts.</p>", "smithy.api#httpQuery" => "path"}))
    GetDocumentationPartsRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetDocumentationPartsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetDocumentationPartsRequest.add_member(:location_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationStatusType, location_name: 'locationStatus', traits: {"smithy.api#documentation" => "<p>The status of the API documentation parts to retrieve. Valid values are <code>DOCUMENTED</code> for retrieving DocumentationPart resources with content and <code>UNDOCUMENTED</code> for DocumentationPart resources without content.</p>", "smithy.api#httpQuery" => "locationStatus"}))
    GetDocumentationPartsRequest.type = Types::GetDocumentationPartsRequest
    GetDocumentationVersionOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version identifier of the API documentation snapshot.</p>"}))
    GetDocumentationVersionOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date when the API documentation snapshot is created.</p>"}))
    GetDocumentationVersionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the API documentation snapshot.</p>"}))
    GetDocumentationVersionOutput.type = Types::GetDocumentationVersionOutput
    GetDocumentationVersionRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationVersionRequest.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version identifier of the to-be-retrieved documentation snapshot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationVersionRequest.type = Types::GetDocumentationVersionRequest
    GetDocumentationVersionsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDocumentationVersion, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetDocumentationVersionsOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetDocumentationVersionsOutput.type = Types::GetDocumentationVersionsOutput
    GetDocumentationVersionsRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationVersionsRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetDocumentationVersionsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetDocumentationVersionsRequest.type = Types::GetDocumentationVersionsRequest
    GetDomainNameAccessAssociationsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDomainNameAccessAssociation, location_name: 'items', traits: {"smithy.api#documentation" => "<p>\nThe current page of elements from this collection.\n</p>", "smithy.api#jsonName" => "item"}))
    GetDomainNameAccessAssociationsOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.\n</p>", "smithy.api#httpQuery" => "position"}))
    GetDomainNameAccessAssociationsOutput.type = Types::GetDomainNameAccessAssociationsOutput
    GetDomainNameAccessAssociationsRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.\n</p>", "smithy.api#httpQuery" => "position"}))
    GetDomainNameAccessAssociationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.\n</p>", "smithy.api#httpQuery" => "limit"}))
    GetDomainNameAccessAssociationsRequest.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwner, location_name: 'resourceOwner', traits: {"smithy.api#documentation" => "<p> The owner of the domain name access association. Use <code>SELF</code> to only list the domain name access associations owned by your own account.\n      Use <code>OTHER_ACCOUNTS</code> to list the domain name access associations with your private custom domain names that are owned by other AWS\n      accounts.</p>", "smithy.api#httpQuery" => "resourceOwner"}))
    GetDomainNameAccessAssociationsRequest.type = Types::GetDomainNameAccessAssociationsRequest
    GetDomainNameOutput.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>"}))
    GetDomainNameOutput.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>The identifier for the domain name resource. Supported only for private custom domain names.</p>"}))
    GetDomainNameOutput.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name.\n</p>"}))
    GetDomainNameOutput.add_member(:certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateName', traits: {"smithy.api#documentation" => "<p>The name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>"}))
    GetDomainNameOutput.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>"}))
    GetDomainNameOutput.add_member(:certificate_upload_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'certificateUploadDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the certificate that was used by edge-optimized endpoint or private endpoint for this domain name was uploaded.</p>"}))
    GetDomainNameOutput.add_member(:regional_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalDomainName', traits: {"smithy.api#documentation" => "<p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>"}))
    GetDomainNameOutput.add_member(:regional_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalHostedZoneId', traits: {"smithy.api#documentation" => "<p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>"}))
    GetDomainNameOutput.add_member(:regional_certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateName', traits: {"smithy.api#documentation" => "<p>The name of the certificate that will be used for validating the regional domain name.</p>"}))
    GetDomainNameOutput.add_member(:regional_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used for validating the regional domain name. Certificate Manager is the only supported source.</p>"}))
    GetDomainNameOutput.add_member(:distribution_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'distributionDomainName', traits: {"smithy.api#documentation" => "<p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.</p>"}))
    GetDomainNameOutput.add_member(:distribution_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'distributionHostedZoneId', traits: {"smithy.api#documentation" => "<p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>"}))
    GetDomainNameOutput.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>"}))
    GetDomainNameOutput.add_member(:domain_name_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameStatus, location_name: 'domainNameStatus', traits: {"smithy.api#documentation" => "<p>The status of the DomainName migration. The valid values are <code>AVAILABLE</code> and <code>UPDATING</code>. If the status is <code>UPDATING</code>, the domain cannot be modified further until the existing operation is complete. If it is <code>AVAILABLE</code>, the domain can be updated.</p>"}))
    GetDomainNameOutput.add_member(:domain_name_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameStatusMessage', traits: {"smithy.api#documentation" => "<p>An optional text message containing detailed information about status of the DomainName migration.</p>"}))
    GetDomainNameOutput.add_member(:security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicy, location_name: 'securityPolicy', traits: {"smithy.api#documentation" => "<p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>"}))
    GetDomainNameOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GetDomainNameOutput.add_member(:mutual_tls_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: MutualTlsAuthentication, location_name: 'mutualTlsAuthentication', traits: {"smithy.api#documentation" => "<p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway\n      performs two-way authentication between the client and the server. Clients must present a\n      trusted certificate to access your API.</p>"}))
    GetDomainNameOutput.add_member(:ownership_verification_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownershipVerificationCertificateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the public certificate issued by ACM to validate ownership of your custom\n      domain. Only required when configuring mutual TLS and using an ACM imported or private CA\n      certificate ARN as the regionalCertificateArn.</p>"}))
    GetDomainNameOutput.add_member(:management_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'managementPolicy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the API Gateway Management service for this DomainName. This policy document controls access for access association sources to create domain name access associations with this DomainName. Supported only for private custom domain names.</p>"}))
    GetDomainNameOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method\n      configuration. Supported only for private custom\n      domain names.</p>"}))
    GetDomainNameOutput.add_member(:routing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingMode, location_name: 'routingMode', traits: {"smithy.api#documentation" => "<p>The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.</p>"}))
    GetDomainNameOutput.type = Types::GetDomainNameOutput
    GetDomainNameRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The name of the DomainName resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainNameRequest.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>\n  The identifier for the domain name resource. Required for private custom domain names.\n</p>", "smithy.api#httpQuery" => "domainNameId"}))
    GetDomainNameRequest.type = Types::GetDomainNameRequest
    GetDomainNamesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDomainName, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetDomainNamesOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetDomainNamesOutput.type = Types::GetDomainNamesOutput
    GetDomainNamesRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetDomainNamesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetDomainNamesRequest.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwner, location_name: 'resourceOwner', traits: {"smithy.api#documentation" => "<p>The owner of the domain name access association.\n</p>", "smithy.api#httpQuery" => "resourceOwner"}))
    GetDomainNamesRequest.type = Types::GetDomainNamesRequest
    GetExportRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the Stage that will be exported.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportRequest.add_member(:export_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'exportType', traits: {"smithy.api#documentation" => "<p>The type of export. Acceptable values are 'oas30' for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>A key-value map of query string parameters that specify properties of the export, depending on the requested <code>exportType</code>. For <code>exportType</code>\n            <code>oas30</code> and <code>swagger</code>, any combination of the following parameters are supported: <code>extensions='integrations'</code> or <code>extensions='apigateway'</code> will export the API with x-amazon-apigateway-integration extensions. <code>extensions='authorizers'</code> will export the API with  x-amazon-apigateway-authorizer extensions. <code>postman</code> will export the API with Postman extensions, allowing for import to the Postman tool</p>", "smithy.api#httpQueryParams" => {}}))
    GetExportRequest.add_member(:accepts, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accepts', traits: {"smithy.api#documentation" => "<p>The content-type of the export, for example <code>application/json</code>. Currently <code>application/json</code> and <code>application/yaml</code> are supported for <code>exportType</code> of<code>oas30</code> and <code>swagger</code>. This should be specified in the <code>Accept</code> header for direct API requests.</p>", "smithy.api#httpHeader" => "Accept"}))
    GetExportRequest.type = Types::GetExportRequest
    GetGatewayResponseOutput.add_member(:response_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponseType, location_name: 'responseType', traits: {"smithy.api#documentation" => "<p>The response type of the associated GatewayResponse.</p>"}))
    GetGatewayResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code for this GatewayResponse.</p>"}))
    GetGatewayResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>Response parameters (paths, query strings and headers) of the GatewayResponse as a\n      string-to-string map of key-value pairs.</p>"}))
    GetGatewayResponseOutput.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>"}))
    GetGatewayResponseOutput.add_member(:default_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultResponse', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether this GatewayResponse is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>"}))
    GetGatewayResponseOutput.type = Types::GetGatewayResponseOutput
    GetGatewayResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayResponseRequest.add_member(:response_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponseType, location_name: 'responseType', traits: {"smithy.api#documentation" => "<p>The response type of the associated GatewayResponse.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayResponseRequest.type = Types::GetGatewayResponseRequest
    GetGatewayResponsesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfGatewayResponse, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Returns the entire collection, because of no pagination support.</p>", "smithy.api#jsonName" => "item"}))
    GetGatewayResponsesOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.</p>", "smithy.api#httpQuery" => "position"}))
    GetGatewayResponsesOutput.type = Types::GetGatewayResponsesOutput
    GetGatewayResponsesRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayResponsesRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.</p>", "smithy.api#httpQuery" => "position"}))
    GetGatewayResponsesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500. The GatewayResponses collection does not support pagination and the limit does not apply here.</p>", "smithy.api#httpQuery" => "limit"}))
    GetGatewayResponsesRequest.type = Types::GetGatewayResponsesRequest
    GetIntegrationOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies an API method integration type. The valid value is one of the following:</p>\n         <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.</p>"}))
    GetIntegrationOutput.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies the integration's HTTP method type. For the Type property, if you specify <code>MOCK</code>, this property is optional. For Lambda integrations, you must set the integration method to <code>POST</code>. For all other types, you must specify this property.</p>"}))
    GetIntegrationOutput.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p>\n         <p>For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL\n\t    according to the RFC-3986 specification for standard integrations. If <code>connectionType</code> is <code>VPC_LINK</code> specify the Network Load Balancer DNS name.\n      For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of\n      the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>.\n      Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the\n      integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by\n      certain Amazon Web Services  service for fast host-name lookup. action can be used for an Amazon Web Services  service\n      action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing\n      {service_api} refers to a supported action {name} plus any required input parameters.\n      Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service_api\n      refers to the path to an Amazon Web Services  service resource, including the region of the integrated Amazon Web Services \n      service, if applicable. For example, for integration with the S3 API of GetObject, the uri can\n      be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or\n      <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>\n         </p>"}))
    GetIntegrationOutput.add_member(:connection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'connectionType', traits: {"smithy.api#documentation" => "<p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>"}))
    GetIntegrationOutput.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectionId', traits: {"smithy.api#documentation" => "<p>The ID of the VpcLink used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>"}))
    GetIntegrationOutput.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\\*:user/\\*</code>. To use resource-based permissions on supported Amazon Web Services services, specify null.</p>"}))
    GetIntegrationOutput.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>"}))
    GetIntegrationOutput.add_member(:request_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestTemplates', traits: {"smithy.api#documentation" => "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>"}))
    GetIntegrationOutput.add_member(:passthrough_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'passthroughBehavior', traits: {"smithy.api#documentation" => "<p>Specifies how the method request body of an unmapped content type will be passed through\n      the integration request to the back end without transformation. A content type is unmapped if\n      no mapping template is defined in the integration or the content type does not match any of\n      the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the\n      following: <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to\n      the back end without transformation when the method request content type does not match any\n      content type associated with the mapping templates defined in the integration request.\n      <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back\n      end without transformation when no mapping template is defined in the integration request. If\n      a template is defined when this option is selected, the method request of an unmapped\n      content-type will be rejected with an HTTP 415 Unsupported Media Type response. <code>NEVER</code>: rejects\n      the method request with an HTTP 415 Unsupported Media Type response when either the method\n      request content type does not match any content type associated with the mapping templates\n      defined in the integration request or no mapping template is defined in the integration\n      request.</p>"}))
    GetIntegrationOutput.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>"}))
    GetIntegrationOutput.add_member(:timeout_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'timeoutInMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds. You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>"}))
    GetIntegrationOutput.add_member(:cache_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheNamespace', traits: {"smithy.api#documentation" => "<p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>"}))
    GetIntegrationOutput.add_member(:cache_key_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'cacheKeyParameters', traits: {"smithy.api#documentation" => "<p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>"}))
    GetIntegrationOutput.add_member(:integration_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfIntegrationResponse, location_name: 'integrationResponses', traits: {"smithy.api#documentation" => "<p>Specifies the integration's responses.</p>"}))
    GetIntegrationOutput.add_member(:tls_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsConfig, location_name: 'tlsConfig', traits: {"smithy.api#documentation" => "<p>Specifies the TLS configuration for an integration.</p>"}))
    GetIntegrationOutput.type = Types::GetIntegrationOutput
    GetIntegrationRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Specifies a get integration request's resource identifier</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies a get integration request's HTTP method.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.type = Types::GetIntegrationRequest
    GetIntegrationResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>"}))
    GetIntegrationResponseOutput.add_member(:selection_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'selectionPattern', traits: {"smithy.api#documentation" => "<p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\\n</code>) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.</p>"}))
    GetIntegrationResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying response parameters that are passed to the method response from the back end.\n            The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>"}))
    GetIntegrationResponseOutput.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"}))
    GetIntegrationResponseOutput.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>"}))
    GetIntegrationResponseOutput.type = Types::GetIntegrationResponseOutput
    GetIntegrationResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Specifies a get integration response request's resource identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies a get integration response request's HTTP method.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>Specifies a get integration response request's status code.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.type = Types::GetIntegrationResponseRequest
    GetMethodOutput.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The method's HTTP verb.</p>"}))
    GetMethodOutput.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizationType', traits: {"smithy.api#documentation" => "<p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>"}))
    GetMethodOutput.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>The identifier of an Authorizer to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>"}))
    GetMethodOutput.add_member(:api_key_required, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'apiKeyRequired', traits: {"smithy.api#documentation" => "<p>A boolean flag specifying whether a valid ApiKey is required to invoke this method.</p>"}))
    GetMethodOutput.add_member(:request_validator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestValidatorId', traits: {"smithy.api#documentation" => "<p>The identifier of a RequestValidator for request validation.</p>"}))
    GetMethodOutput.add_member(:operation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'operationName', traits: {"smithy.api#documentation" => "<p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>"}))
    GetMethodOutput.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.</p>"}))
    GetMethodOutput.add_member(:request_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestModels', traits: {"smithy.api#documentation" => "<p>A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>"}))
    GetMethodOutput.add_member(:method_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodResponse, location_name: 'methodResponses', traits: {"smithy.api#documentation" => "<p>Gets a method response associated with a given HTTP status code. </p>"}))
    GetMethodOutput.add_member(:method_integration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, location_name: 'methodIntegration', traits: {"smithy.api#documentation" => "<p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p>"}))
    GetMethodOutput.add_member(:authorization_scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'authorizationScopes', traits: {"smithy.api#documentation" => "<p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"}))
    GetMethodOutput.type = Types::GetMethodOutput
    GetMethodRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource identifier for the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies the method request's HTTP method type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodRequest.type = Types::GetMethodRequest
    GetMethodResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The method response's status code.</p>"}))
    GetMethodResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>"}))
    GetMethodResponseOutput.add_member(:response_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseModels', traits: {"smithy.api#documentation" => "<p>Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.</p>"}))
    GetMethodResponseOutput.type = Types::GetMethodResponseOutput
    GetMethodResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodResponseRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource identifier for the MethodResponse resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodResponseRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The HTTP verb of the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code for the MethodResponse resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodResponseRequest.type = Types::GetMethodResponseRequest
    GetModelOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the model resource.</p>"}))
    GetModelOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the model. Must be an alphanumeric string.</p>"}))
    GetModelOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the model.</p>"}))
    GetModelOutput.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. Do not include \"\\*/\" characters in the description of any properties because such \"\\*/\" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>"}))
    GetModelOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The content-type for the model.</p>"}))
    GetModelOutput.type = Types::GetModelOutput
    GetModelRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The RestApi identifier under which the Model exists.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelName', traits: {"smithy.api#documentation" => "<p>The name of the model as an identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelRequest.add_member(:flatten, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'flatten', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A query parameter of a Boolean value to resolve (<code>true</code>) all external model references and returns a flattened model schema or not (<code>false</code>) The default is <code>false</code>.</p>", "smithy.api#httpQuery" => "flatten"}))
    GetModelRequest.type = Types::GetModelRequest
    GetModelTemplateOutput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The Apache Velocity Template Language (VTL) template content used for the template resource.</p>"}))
    GetModelTemplateOutput.type = Types::GetModelTemplateOutput
    GetModelTemplateRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelTemplateRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelName', traits: {"smithy.api#documentation" => "<p>The name of the model for which to generate a template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelTemplateRequest.type = Types::GetModelTemplateRequest
    GetModelsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfModel, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetModelsOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetModelsOutput.type = Types::GetModelsOutput
    GetModelsRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelsRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetModelsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetModelsRequest.type = Types::GetModelsRequest
    GetRequestValidatorOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of this RequestValidator.</p>"}))
    GetRequestValidatorOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of this RequestValidator</p>"}))
    GetRequestValidatorOutput.add_member(:validate_request_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestBody', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate a request body according to the configured Model schema.</p>"}))
    GetRequestValidatorOutput.add_member(:validate_request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestParameters', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>"}))
    GetRequestValidatorOutput.type = Types::GetRequestValidatorOutput
    GetRequestValidatorRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRequestValidatorRequest.add_member(:request_validator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestValidatorId', traits: {"smithy.api#documentation" => "<p>The identifier of the RequestValidator to be retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRequestValidatorRequest.type = Types::GetRequestValidatorRequest
    GetRequestValidatorsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRequestValidator, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetRequestValidatorsOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetRequestValidatorsOutput.type = Types::GetRequestValidatorsOutput
    GetRequestValidatorsRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRequestValidatorsRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetRequestValidatorsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetRequestValidatorsRequest.type = Types::GetRequestValidatorsRequest
    GetResourceOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The resource's identifier.</p>"}))
    GetResourceOutput.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'parentId', traits: {"smithy.api#documentation" => "<p>The parent resource's identifier.</p>"}))
    GetResourceOutput.add_member(:path_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pathPart', traits: {"smithy.api#documentation" => "<p>The last path segment for this resource.</p>"}))
    GetResourceOutput.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The full path for this resource.</p>"}))
    GetResourceOutput.add_member(:resource_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethod, location_name: 'resourceMethods', traits: {"smithy.api#documentation" => "<p>Gets an API resource's method of a given HTTP verb.</p>"}))
    GetResourceOutput.type = Types::GetResourceOutput
    GetResourceRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier for the Resource resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceRequest.add_member(:embed, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'embed', traits: {"smithy.api#documentation" => "<p>A query parameter to retrieve the specified resources embedded in the returned Resource representation in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the <code>\"methods\"</code> string. For example, <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code>.</p>", "smithy.api#httpQuery" => "embed"}))
    GetResourceRequest.type = Types::GetResourceRequest
    GetResourcesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfResource, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetResourcesOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetResourcesOutput.type = Types::GetResourcesOutput
    GetResourcesRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcesRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetResourcesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetResourcesRequest.add_member(:embed, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'embed', traits: {"smithy.api#documentation" => "<p>A query parameter used to retrieve the specified resources embedded in the returned Resources resource in the response.  This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the <code>\"methods\"</code> string. For example, <code>GET /restapis/{restapi_id}/resources?embed=methods</code>.</p>", "smithy.api#httpQuery" => "embed"}))
    GetResourcesRequest.type = Types::GetResourcesRequest
    GetRestApiOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>"}))
    GetRestApiOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The API's name.</p>"}))
    GetRestApiOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The API's description.</p>"}))
    GetRestApiOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API was created.</p>"}))
    GetRestApiOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A version identifier for the API.</p>"}))
    GetRestApiOutput.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>"}))
    GetRestApiOutput.add_member(:binary_media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'binaryMediaTypes', traits: {"smithy.api#documentation" => "<p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>"}))
    GetRestApiOutput.add_member(:minimum_compression_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'minimumCompressionSize', traits: {"smithy.api#documentation" => "<p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>"}))
    GetRestApiOutput.add_member(:api_key_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeySourceType, location_name: 'apiKeySource', traits: {"smithy.api#documentation" => "<p>The source of the API key for metering requests according to a usage plan. Valid values\n      are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a\n      request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>\n      from a custom authorizer.</p>"}))
    GetRestApiOutput.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>"}))
    GetRestApiOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>"}))
    GetRestApiOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GetRestApiOutput.add_member(:disable_execute_api_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableExecuteApiEndpoint', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.\n      By default, clients can invoke your API with the default\n      <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a\n      custom domain name to invoke your API, disable the default endpoint.</p>"}))
    GetRestApiOutput.add_member(:root_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rootResourceId', traits: {"smithy.api#documentation" => "<p>The API's root resource ID.</p>"}))
    GetRestApiOutput.type = Types::GetRestApiOutput
    GetRestApiRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestApiRequest.type = Types::GetRestApiRequest
    GetRestApisOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRestApi, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetRestApisOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetRestApisOutput.type = Types::GetRestApisOutput
    GetRestApisRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetRestApisRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetRestApisRequest.type = Types::GetRestApisRequest
    GetSdkRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSdkRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the Stage that the SDK will use.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSdkRequest.add_member(:sdk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sdkType', traits: {"smithy.api#documentation" => "<p>The language for the generated SDK. Currently <code>java</code>, <code>javascript</code>, <code>android</code>, <code>objectivec</code> (for iOS), <code>swift</code> (for iOS), and <code>ruby</code>  are supported.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSdkRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>A string-to-string key-value map of query parameters <code>sdkType</code>-dependent properties of the SDK. For <code>sdkType</code> of <code>objectivec</code> or <code>swift</code>,  a parameter named <code>classPrefix</code> is required. For <code>sdkType</code> of <code>android</code>, parameters named <code>groupId</code>, <code>artifactId</code>, <code>artifactVersion</code>, and <code>invokerPackage</code> are required. For <code>sdkType</code> of <code>java</code>, parameters named <code>serviceName</code> and <code>javaPackageName</code> are required. </p>", "smithy.api#httpQueryParams" => {}}))
    GetSdkRequest.type = Types::GetSdkRequest
    GetSdkTypeOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of an SdkType instance.</p>"}))
    GetSdkTypeOutput.add_member(:friendly_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'friendlyName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of an SdkType instance.</p>"}))
    GetSdkTypeOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of an SdkType.</p>"}))
    GetSdkTypeOutput.add_member(:configuration_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSdkConfigurationProperty, location_name: 'configurationProperties', traits: {"smithy.api#documentation" => "<p>A list of configuration properties of an SdkType.</p>"}))
    GetSdkTypeOutput.type = Types::GetSdkTypeOutput
    GetSdkTypeRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the queried SdkType instance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSdkTypeRequest.type = Types::GetSdkTypeRequest
    GetSdkTypesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSdkType, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetSdkTypesOutput.type = Types::GetSdkTypesOutput
    GetSdkTypesRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetSdkTypesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetSdkTypesRequest.type = Types::GetSdkTypesRequest
    GetStageOutput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Deployment that the stage points to.</p>"}))
    GetStageOutput.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of a client certificate for an API stage.</p>"}))
    GetStageOutput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"}))
    GetStageOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The stage's description.</p>"}))
    GetStageOutput.add_member(:cache_cluster_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'cacheClusterEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether a cache cluster is enabled for the stage. To activate a method-level cache, set <code>CachingEnabled</code> to <code>true</code> for a method. </p>"}))
    GetStageOutput.add_member(:cache_cluster_size, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterSize, location_name: 'cacheClusterSize', traits: {"smithy.api#documentation" => "<p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html\">Enabling API caching to enhance responsiveness</a>.</p>"}))
    GetStageOutput.add_member(:cache_cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterStatus, location_name: 'cacheClusterStatus', traits: {"smithy.api#documentation" => "<p>The status of the cache cluster for the stage, if enabled.</p>"}))
    GetStageOutput.add_member(:method_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodSettings, location_name: 'methodSettings', traits: {"smithy.api#documentation" => "<p>A map that defines the method settings for a Stage resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\\*/\\*</code> for overriding all methods in the stage.  </p>"}))
    GetStageOutput.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A map that defines the stage variables for a Stage resource. Variable names can\n          have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>"}))
    GetStageOutput.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version of the associated API documentation.</p>"}))
    GetStageOutput.add_member(:access_log_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: 'accessLogSettings', traits: {"smithy.api#documentation" => "<p>Settings for logging access in this stage.</p>"}))
    GetStageOutput.add_member(:canary_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: CanarySettings, location_name: 'canarySettings', traits: {"smithy.api#documentation" => "<p>Settings for the canary deployment in this stage.</p>"}))
    GetStageOutput.add_member(:tracing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'tracingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>"}))
    GetStageOutput.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'webAclArn', traits: {"smithy.api#documentation" => "<p>The ARN of the WebAcl associated with the Stage.</p>"}))
    GetStageOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GetStageOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the stage was created.</p>"}))
    GetStageOutput.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the stage last updated.</p>"}))
    GetStageOutput.type = Types::GetStageOutput
    GetStageRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStageRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the Stage resource to get information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStageRequest.type = Types::GetStageRequest
    GetStagesOutput.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStage, location_name: 'item', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>"}))
    GetStagesOutput.type = Types::GetStagesOutput
    GetStagesRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStagesRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The stages' deployment identifiers.</p>", "smithy.api#httpQuery" => "deploymentId"}))
    GetStagesRequest.type = Types::GetStagesRequest
    GetTagsOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GetTagsOutput.type = Types::GetTagsOutput
    GetTagsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of a resource that can be tagged.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTagsRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>(Not currently supported) The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetTagsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>(Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetTagsRequest.type = Types::GetTagsRequest
    GetUsageOutput.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The plan Id associated with this usage data.</p>"}))
    GetUsageOutput.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The starting date of the usage data.</p>"}))
    GetUsageOutput.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The ending date of the usage data.</p>"}))
    GetUsageOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfKeyUsages, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, <code>{..., \"values\" : { \"{api_key}\" : [ [0, 100], [10, 90], [100, 10]]}</code>, where <code>{api_key}</code> stands for an API key value and the daily log entry is of the format <code>[used quota, remaining quota]</code>.</p>", "smithy.api#jsonName" => "values"}))
    GetUsageOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetUsageOutput.type = Types::GetUsageOutput
    GetUsagePlanKeyOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The Id of a usage plan key.</p>"}))
    GetUsagePlanKeyOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>"}))
    GetUsagePlanKeyOutput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of a usage plan key.</p>"}))
    GetUsagePlanKeyOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a usage plan key.</p>"}))
    GetUsagePlanKeyOutput.type = Types::GetUsagePlanKeyOutput
    GetUsagePlanKeyRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsagePlanKeyRequest.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyId', traits: {"smithy.api#documentation" => "<p>The key Id of the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsagePlanKeyRequest.type = Types::GetUsagePlanKeyRequest
    GetUsagePlanKeysOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfUsagePlanKey, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetUsagePlanKeysOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetUsagePlanKeysOutput.type = Types::GetUsagePlanKeysOutput
    GetUsagePlanKeysRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsagePlanKeysRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetUsagePlanKeysRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetUsagePlanKeysRequest.add_member(:name_query, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nameQuery', traits: {"smithy.api#documentation" => "<p>A query parameter specifying the name of the to-be-returned usage plan keys.</p>", "smithy.api#httpQuery" => "name"}))
    GetUsagePlanKeysRequest.type = Types::GetUsagePlanKeysRequest
    GetUsagePlanOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of a UsagePlan resource.</p>"}))
    GetUsagePlanOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a usage plan.</p>"}))
    GetUsagePlanOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of a usage plan.</p>"}))
    GetUsagePlanOutput.add_member(:api_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfApiStage, location_name: 'apiStages', traits: {"smithy.api#documentation" => "<p>The associated API stages of a usage plan.</p>"}))
    GetUsagePlanOutput.add_member(:throttle, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleSettings, location_name: 'throttle', traits: {"smithy.api#documentation" => "<p>A map containing method level throttling information for API stage in a usage plan.</p>"}))
    GetUsagePlanOutput.add_member(:quota, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaSettings, location_name: 'quota', traits: {"smithy.api#documentation" => "<p>The target maximum number of permitted requests per a given unit time interval.</p>"}))
    GetUsagePlanOutput.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'productCode', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Marketplace product identifier to associate with the usage plan as a SaaS product on the Amazon Web Services Marketplace.</p>"}))
    GetUsagePlanOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GetUsagePlanOutput.type = Types::GetUsagePlanOutput
    GetUsagePlanRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The identifier of the UsagePlan resource to be retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsagePlanRequest.type = Types::GetUsagePlanRequest
    GetUsagePlansOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfUsagePlan, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetUsagePlansOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetUsagePlansOutput.type = Types::GetUsagePlansOutput
    GetUsagePlansRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetUsagePlansRequest.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyId', traits: {"smithy.api#documentation" => "<p>The identifier of the API key associated with the usage plans.</p>", "smithy.api#httpQuery" => "keyId"}))
    GetUsagePlansRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetUsagePlansRequest.type = Types::GetUsagePlansRequest
    GetUsageRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The Id of the usage plan associated with the usage data.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsageRequest.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyId', traits: {"smithy.api#documentation" => "<p>The Id of the API key associated with the resultant usage data.</p>", "smithy.api#httpQuery" => "keyId"}))
    GetUsageRequest.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The starting date (e.g., 2016-01-01) of the usage data.</p>", "smithy.api#httpQuery" => "startDate", "smithy.api#required" => {}}))
    GetUsageRequest.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The ending date (e.g., 2016-12-31) of the usage data.</p>", "smithy.api#httpQuery" => "endDate", "smithy.api#required" => {}}))
    GetUsageRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetUsageRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetUsageRequest.type = Types::GetUsageRequest
    GetVpcLinkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>"}))
    GetVpcLinkOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name used to label and identify the VPC link.</p>"}))
    GetVpcLinkOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the VPC link.</p>"}))
    GetVpcLinkOutput.add_member(:target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'targetArns', traits: {"smithy.api#documentation" => "<p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>"}))
    GetVpcLinkOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcLinkStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>.  </p>"}))
    GetVpcLinkOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A description about the VPC link status.</p>"}))
    GetVpcLinkOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    GetVpcLinkOutput.type = Types::GetVpcLinkOutput
    GetVpcLinkRequest.add_member(:vpc_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vpcLinkId', traits: {"smithy.api#documentation" => "<p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcLinkRequest.type = Types::GetVpcLinkRequest
    GetVpcLinksOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfVpcLink, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The current page of elements from this collection.</p>", "smithy.api#jsonName" => "item"}))
    GetVpcLinksOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetVpcLinksOutput.type = Types::GetVpcLinksOutput
    GetVpcLinksRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    GetVpcLinksRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>", "smithy.api#httpQuery" => "limit"}))
    GetVpcLinksRequest.type = Types::GetVpcLinksRequest
    ImportApiKeysOutput.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>A list of all the ApiKey identifiers.</p>"}))
    ImportApiKeysOutput.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>A list of warning messages.</p>"}))
    ImportApiKeysOutput.type = Types::ImportApiKeysOutput
    ImportApiKeysRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The payload of the POST request to import API keys. For the payload format, see API Key File Format.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ImportApiKeysRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeysFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>A query parameter to specify the input format to imported API keys. Currently, only the <code>csv</code> format is supported.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ImportApiKeysRequest.add_member(:fail_on_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'failOnWarnings', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A query parameter to indicate whether to rollback ApiKey importation (<code>true</code>) or not (<code>false</code>) when error is encountered.</p>", "smithy.api#httpQuery" => "failonwarnings"}))
    ImportApiKeysRequest[:http_payload] = :body
    ImportApiKeysRequest[:http_payload_member] = ImportApiKeysRequest.member(:body)
    ImportApiKeysRequest.type = Types::ImportApiKeysRequest
    ImportDocumentationPartsOutput.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>A list of the returned documentation part identifiers.</p>"}))
    ImportDocumentationPartsOutput.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>A list of warning messages reported during import of documentation parts.</p>"}))
    ImportDocumentationPartsOutput.type = Types::ImportDocumentationPartsOutput
    ImportDocumentationPartsRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ImportDocumentationPartsRequest.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PutMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>A query parameter to indicate whether to overwrite (<code>overwrite</code>) any existing DocumentationParts definition or to merge (<code>merge</code>) the new definition into the existing one. The default value is <code>merge</code>.</p>", "smithy.api#httpQuery" => "mode"}))
    ImportDocumentationPartsRequest.add_member(:fail_on_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'failOnWarnings', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A query parameter to specify whether to rollback the documentation importation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>", "smithy.api#httpQuery" => "failonwarnings"}))
    ImportDocumentationPartsRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'body', traits: {"smithy.api#documentation" => "<p>Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ImportDocumentationPartsRequest[:http_payload] = :body
    ImportDocumentationPartsRequest[:http_payload_member] = ImportDocumentationPartsRequest.member(:body)
    ImportDocumentationPartsRequest.type = Types::ImportDocumentationPartsRequest
    ImportRestApiOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>"}))
    ImportRestApiOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The API's name.</p>"}))
    ImportRestApiOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The API's description.</p>"}))
    ImportRestApiOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API was created.</p>"}))
    ImportRestApiOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A version identifier for the API.</p>"}))
    ImportRestApiOutput.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>"}))
    ImportRestApiOutput.add_member(:binary_media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'binaryMediaTypes', traits: {"smithy.api#documentation" => "<p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>"}))
    ImportRestApiOutput.add_member(:minimum_compression_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'minimumCompressionSize', traits: {"smithy.api#documentation" => "<p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>"}))
    ImportRestApiOutput.add_member(:api_key_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeySourceType, location_name: 'apiKeySource', traits: {"smithy.api#documentation" => "<p>The source of the API key for metering requests according to a usage plan. Valid values\n      are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a\n      request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>\n      from a custom authorizer.</p>"}))
    ImportRestApiOutput.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>"}))
    ImportRestApiOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>"}))
    ImportRestApiOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    ImportRestApiOutput.add_member(:disable_execute_api_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableExecuteApiEndpoint', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.\n      By default, clients can invoke your API with the default\n      <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a\n      custom domain name to invoke your API, disable the default endpoint.</p>"}))
    ImportRestApiOutput.add_member(:root_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rootResourceId', traits: {"smithy.api#documentation" => "<p>The API's root resource ID.</p>"}))
    ImportRestApiOutput.type = Types::ImportRestApiOutput
    ImportRestApiRequest.add_member(:fail_on_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'failOnWarnings', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A query parameter to indicate whether to rollback the API creation (<code>true</code>) or not (<code>false</code>)\n            when a warning is encountered. The default value is <code>false</code>.</p>", "smithy.api#httpQuery" => "failonwarnings"}))
    ImportRestApiRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>A key-value map of context-specific query string parameters specifying the behavior of different API importing operations. The following shows operation-specific parameters and their supported values.</p>\n         <p> To exclude DocumentationParts from the import, set <code>parameters</code> as <code>ignore=documentation</code>.</p>\n         <p> To configure the endpoint type, set <code>parameters</code> as <code>endpointConfigurationTypes=EDGE</code>, <code>endpointConfigurationTypes=REGIONAL</code>, or <code>endpointConfigurationTypes=PRIVATE</code>. The default endpoint type is <code>EDGE</code>.</p>\n         <p> To handle imported <code>basepath</code>, set <code>parameters</code> as <code>basepath=ignore</code>, <code>basepath=prepend</code> or <code>basepath=split</code>.</p>", "smithy.api#httpQueryParams" => {}}))
    ImportRestApiRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The POST request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ImportRestApiRequest[:http_payload] = :body
    ImportRestApiRequest[:http_payload_member] = ImportRestApiRequest.member(:body)
    ImportRestApiRequest.type = Types::ImportRestApiRequest
    Integration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies an API method integration type. The valid value is one of the following:</p>\n         <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.</p>"}))
    Integration.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies the integration's HTTP method type. For the Type property, if you specify <code>MOCK</code>, this property is optional. For Lambda integrations, you must set the integration method to <code>POST</code>. For all other types, you must specify this property.</p>"}))
    Integration.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p>\n         <p>For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL\n\t    according to the RFC-3986 specification for standard integrations. If <code>connectionType</code> is <code>VPC_LINK</code> specify the Network Load Balancer DNS name.\n      For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of\n      the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>.\n      Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the\n      integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by\n      certain Amazon Web Services  service for fast host-name lookup. action can be used for an Amazon Web Services  service\n      action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing\n      {service_api} refers to a supported action {name} plus any required input parameters.\n      Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service_api\n      refers to the path to an Amazon Web Services  service resource, including the region of the integrated Amazon Web Services \n      service, if applicable. For example, for integration with the S3 API of GetObject, the uri can\n      be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or\n      <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>\n         </p>"}))
    Integration.add_member(:connection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'connectionType', traits: {"smithy.api#documentation" => "<p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>"}))
    Integration.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectionId', traits: {"smithy.api#documentation" => "<p>The ID of the VpcLink used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>"}))
    Integration.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\\*:user/\\*</code>. To use resource-based permissions on supported Amazon Web Services services, specify null.</p>"}))
    Integration.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>"}))
    Integration.add_member(:request_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestTemplates', traits: {"smithy.api#documentation" => "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>"}))
    Integration.add_member(:passthrough_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'passthroughBehavior', traits: {"smithy.api#documentation" => "<p>Specifies how the method request body of an unmapped content type will be passed through\n      the integration request to the back end without transformation. A content type is unmapped if\n      no mapping template is defined in the integration or the content type does not match any of\n      the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the\n      following: <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to\n      the back end without transformation when the method request content type does not match any\n      content type associated with the mapping templates defined in the integration request.\n      <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back\n      end without transformation when no mapping template is defined in the integration request. If\n      a template is defined when this option is selected, the method request of an unmapped\n      content-type will be rejected with an HTTP 415 Unsupported Media Type response. <code>NEVER</code>: rejects\n      the method request with an HTTP 415 Unsupported Media Type response when either the method\n      request content type does not match any content type associated with the mapping templates\n      defined in the integration request or no mapping template is defined in the integration\n      request.</p>"}))
    Integration.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>"}))
    Integration.add_member(:timeout_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'timeoutInMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds. You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>"}))
    Integration.add_member(:cache_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheNamespace', traits: {"smithy.api#documentation" => "<p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>"}))
    Integration.add_member(:cache_key_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'cacheKeyParameters', traits: {"smithy.api#documentation" => "<p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>"}))
    Integration.add_member(:integration_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfIntegrationResponse, location_name: 'integrationResponses', traits: {"smithy.api#documentation" => "<p>Specifies the integration's responses.</p>"}))
    Integration.add_member(:tls_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsConfig, location_name: 'tlsConfig', traits: {"smithy.api#documentation" => "<p>Specifies the TLS configuration for an integration.</p>"}))
    Integration.type = Types::Integration
    IntegrationResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>"}))
    IntegrationResponse.add_member(:selection_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'selectionPattern', traits: {"smithy.api#documentation" => "<p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\\n</code>) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.</p>"}))
    IntegrationResponse.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying response parameters that are passed to the method response from the back end.\n            The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>"}))
    IntegrationResponse.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"}))
    IntegrationResponse.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>"}))
    IntegrationResponse.type = Types::IntegrationResponse
    IntegrationType.add_member(:http, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    IntegrationType.add_member(:aws, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS', traits: {"smithy.api#enumValue" => "AWS"}))
    IntegrationType.add_member(:mock, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOCK', traits: {"smithy.api#enumValue" => "MOCK"}))
    IntegrationType.add_member(:http_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP_PROXY', traits: {"smithy.api#enumValue" => "HTTP_PROXY"}))
    IntegrationType.add_member(:aws_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_PROXY', traits: {"smithy.api#enumValue" => "AWS_PROXY"}))
    IpAddressType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ipv4', traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:dualstack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'dualstack', traits: {"smithy.api#enumValue" => "dualstack"}))
    LimitExceededException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListOfARNs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderARN)
    ListOfApiKey.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey)
    ListOfApiStage.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApiStage)
    ListOfAuthorizer.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Authorizer)
    ListOfBasePathMapping.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BasePathMapping)
    ListOfClientCertificate.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientCertificate)
    ListOfDeployment.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment)
    ListOfDocumentationPart.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPart)
    ListOfDocumentationVersion.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationVersion)
    ListOfDomainName.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName)
    ListOfDomainNameAccessAssociation.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameAccessAssociation)
    ListOfEndpointType.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType)
    ListOfGatewayResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponse)
    ListOfLong.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Long)
    ListOfModel.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Model)
    ListOfPatchOperation.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PatchOperation)
    ListOfRequestValidator.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestValidator)
    ListOfResource.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ListOfRestApi.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RestApi)
    ListOfSdkConfigurationProperty.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SdkConfigurationProperty)
    ListOfSdkType.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SdkType)
    ListOfStage.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stage)
    ListOfStageKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StageKey)
    ListOfString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListOfUsage.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLong)
    ListOfUsagePlan.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsagePlan)
    ListOfUsagePlanKey.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsagePlanKey)
    ListOfVpcLink.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcLink)
    LocationStatusType.add_member(:documented, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENTED', traits: {"smithy.api#enumValue" => "DOCUMENTED"}))
    LocationStatusType.add_member(:undocumented, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDOCUMENTED', traits: {"smithy.api#enumValue" => "UNDOCUMENTED"}))
    MapOfApiStageThrottleSettings.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfApiStageThrottleSettings.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleSettings)
    MapOfIntegrationResponse.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfIntegrationResponse.value = Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationResponse)
    MapOfKeyUsages.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfKeyUsages.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfUsage)
    MapOfMethod.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMethod.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Method)
    MapOfMethodResponse.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMethodResponse.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MethodResponse)
    MapOfMethodSettings.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMethodSettings.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MethodSetting)
    MapOfMethodSnapshot.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMethodSnapshot.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MethodSnapshot)
    MapOfStringToBoolean.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfStringToBoolean.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean)
    MapOfStringToList.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfStringToList.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString)
    MapOfStringToString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfStringToString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Method.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The method's HTTP verb.</p>"}))
    Method.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizationType', traits: {"smithy.api#documentation" => "<p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>"}))
    Method.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>The identifier of an Authorizer to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>"}))
    Method.add_member(:api_key_required, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'apiKeyRequired', traits: {"smithy.api#documentation" => "<p>A boolean flag specifying whether a valid ApiKey is required to invoke this method.</p>"}))
    Method.add_member(:request_validator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestValidatorId', traits: {"smithy.api#documentation" => "<p>The identifier of a RequestValidator for request validation.</p>"}))
    Method.add_member(:operation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'operationName', traits: {"smithy.api#documentation" => "<p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>"}))
    Method.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.</p>"}))
    Method.add_member(:request_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestModels', traits: {"smithy.api#documentation" => "<p>A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>"}))
    Method.add_member(:method_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodResponse, location_name: 'methodResponses', traits: {"smithy.api#documentation" => "<p>Gets a method response associated with a given HTTP status code. </p>"}))
    Method.add_member(:method_integration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, location_name: 'methodIntegration', traits: {"smithy.api#documentation" => "<p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p>"}))
    Method.add_member(:authorization_scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'authorizationScopes', traits: {"smithy.api#documentation" => "<p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"}))
    Method.type = Types::Method
    MethodResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The method response's status code.</p>"}))
    MethodResponse.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>"}))
    MethodResponse.add_member(:response_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseModels', traits: {"smithy.api#documentation" => "<p>Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.</p>"}))
    MethodResponse.type = Types::MethodResponse
    MethodSetting.add_member(:metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'metricsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether Amazon CloudWatch metrics are enabled for this method.</p>"}))
    MethodSetting.add_member(:logging_level, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'loggingLevel', traits: {"smithy.api#documentation" => "<p>Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. Valid values are <code>OFF</code>, <code>ERROR</code>, and <code>INFO</code>. Choose <code>ERROR</code> to write only error-level entries to CloudWatch Logs, or choose <code>INFO</code> to include all <code>ERROR</code> events as well as extra informational events.</p>"}))
    MethodSetting.add_member(:data_trace_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'dataTraceEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. This can be useful to troubleshoot APIs, but can result in logging sensitive data. We recommend that you don't enable this option for production APIs.</p>"}))
    MethodSetting.add_member(:throttling_burst_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'throttlingBurstLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the throttling burst limit.</p>"}))
    MethodSetting.add_member(:throttling_rate_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'throttlingRateLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the throttling rate limit.</p>"}))
    MethodSetting.add_member(:caching_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'cachingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached.</p>"}))
    MethodSetting.add_member(:cache_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'cacheTtlInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached.</p>"}))
    MethodSetting.add_member(:cache_data_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'cacheDataEncrypted', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the cached responses are encrypted.</p>"}))
    MethodSetting.add_member(:require_authorization_for_cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'requireAuthorizationForCacheControl', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether authorization is required for a cache invalidation request.</p>"}))
    MethodSetting.add_member(:unauthorized_cache_control_header_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedCacheControlHeaderStrategy, location_name: 'unauthorizedCacheControlHeaderStrategy', traits: {"smithy.api#documentation" => "<p>Specifies how to handle unauthorized requests for cache invalidation.</p>"}))
    MethodSetting.type = Types::MethodSetting
    MethodSnapshot.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizationType', traits: {"smithy.api#documentation" => "<p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>"}))
    MethodSnapshot.add_member(:api_key_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'apiKeyRequired', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the method requires a valid ApiKey.</p>"}))
    MethodSnapshot.type = Types::MethodSnapshot
    Model.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the model resource.</p>"}))
    Model.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the model. Must be an alphanumeric string.</p>"}))
    Model.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the model.</p>"}))
    Model.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. Do not include \"\\*/\" characters in the description of any properties because such \"\\*/\" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>"}))
    Model.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The content-type for the model.</p>"}))
    Model.type = Types::Model
    MutualTlsAuthentication.add_member(:truststore_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'truststoreUri', traits: {"smithy.api#documentation" => "<p>An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example\n      <code>s3://bucket-name/key-name</code>. The truststore can contain certificates from public or private\n      certificate authorities. To update the truststore, upload a new version to S3, and then update\n      your custom domain name to use the new version. To update the truststore, you must have\n      permissions to access the S3 object.</p>"}))
    MutualTlsAuthentication.add_member(:truststore_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'truststoreVersion', traits: {"smithy.api#documentation" => "<p>The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket.</p>"}))
    MutualTlsAuthentication.add_member(:truststore_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'truststoreWarnings', traits: {"smithy.api#documentation" => "<p>A list of warnings that API Gateway returns while processing your truststore. Invalid\n      certificates produce warnings. Mutual TLS is still enabled, but some clients might not be able\n      to access your API. To resolve warnings, upload a new truststore to S3, and then update you\n      domain name to use the new version.</p>"}))
    MutualTlsAuthentication.type = Types::MutualTlsAuthentication
    MutualTlsAuthenticationInput.add_member(:truststore_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'truststoreUri', traits: {"smithy.api#documentation" => "<p>An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example\n      <code>s3://bucket-name/key-name</code>. The truststore can contain certificates from public or private\n      certificate authorities. To update the truststore, upload a new version to S3, and then update\n      your custom domain name to use the new version. To update the truststore, you must have\n      permissions to access the S3 object.</p>"}))
    MutualTlsAuthenticationInput.add_member(:truststore_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'truststoreVersion', traits: {"smithy.api#documentation" => "<p>The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket</p>"}))
    MutualTlsAuthenticationInput.type = Types::MutualTlsAuthenticationInput
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    Op.add_member(:add, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'add', traits: {"smithy.api#enumValue" => "add"}))
    Op.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'remove', traits: {"smithy.api#enumValue" => "remove"}))
    Op.add_member(:replace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'replace', traits: {"smithy.api#enumValue" => "replace"}))
    Op.add_member(:move, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'move', traits: {"smithy.api#enumValue" => "move"}))
    Op.add_member(:copy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'copy', traits: {"smithy.api#enumValue" => "copy"}))
    Op.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'test', traits: {"smithy.api#enumValue" => "test"}))
    PatchOperation.add_member(:op, Smithy::Schema::Shapes::ShapeRef.new(shape: Op, location_name: 'op', traits: {"smithy.api#documentation" => "<p>An update operation to be performed with this PATCH request. The valid value can be\n            add, remove, replace or copy. Not all valid operations are supported for a given\n            resource. Support of the operations depends on specific operational contexts. Attempts\n            to apply an unsupported operation on a resource will return an error message..</p>"}))
    PatchOperation.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The op operation's target, as identified by a JSON Pointer value that references a\n            location within the targeted resource. For example, if the target resource has an\n            updateable property of {\"name\":\"value\"}, the path for this property is /name. If the\n            name property value is a JSON object (e.g., {\"name\": {\"child/name\": \"child-value\"}}),\n            the path for the child/name property will be /name/child~1name. Any slash (\"/\")\n            character appearing in path names must be escaped with \"~1\", as shown in the example\n            above. Each op operation can have only one path associated with it.</p>"}))
    PatchOperation.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The new target value of the update operation. It is applicable for the add or replace\n            operation. When using AWS CLI to update a property of a JSON value, enclose the JSON\n            object with a pair of single quotes in a Linux shell, e.g., '{\"a\": ...}'.</p>"}))
    PatchOperation.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'from', traits: {"smithy.api#documentation" => "<p>The copy update operation's source as identified by a JSON-Pointer value referencing\n            the location within the targeted resource to copy the value from. For example, to\n            promote a canary deployment, you copy the canary deployment ID to the affiliated\n            deployment ID by calling a PATCH request on a Stage resource with \"op\":\"copy\",\n            \"from\":\"/canarySettings/deploymentId\" and \"path\":\"/deploymentId\".</p>"}))
    PatchOperation.type = Types::PatchOperation
    PathToMapOfMethodSnapshot.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    PathToMapOfMethodSnapshot.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodSnapshot)
    PutGatewayResponseOutput.add_member(:response_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponseType, location_name: 'responseType', traits: {"smithy.api#documentation" => "<p>The response type of the associated GatewayResponse.</p>"}))
    PutGatewayResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code for this GatewayResponse.</p>"}))
    PutGatewayResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>Response parameters (paths, query strings and headers) of the GatewayResponse as a\n      string-to-string map of key-value pairs.</p>"}))
    PutGatewayResponseOutput.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>"}))
    PutGatewayResponseOutput.add_member(:default_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultResponse', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether this GatewayResponse is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>"}))
    PutGatewayResponseOutput.type = Types::PutGatewayResponseOutput
    PutGatewayResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGatewayResponseRequest.add_member(:response_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponseType, location_name: 'responseType', traits: {"smithy.api#documentation" => "<p>The response type of the associated GatewayResponse</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGatewayResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code of the GatewayResponse.</p>"}))
    PutGatewayResponseRequest.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>Response parameters (paths, query strings and headers) of the GatewayResponse as a string-to-string map of key-value  pairs.</p>"}))
    PutGatewayResponseRequest.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>"}))
    PutGatewayResponseRequest.type = Types::PutGatewayResponseRequest
    PutIntegrationOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies an API method integration type. The valid value is one of the following:</p>\n         <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.</p>"}))
    PutIntegrationOutput.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies the integration's HTTP method type. For the Type property, if you specify <code>MOCK</code>, this property is optional. For Lambda integrations, you must set the integration method to <code>POST</code>. For all other types, you must specify this property.</p>"}))
    PutIntegrationOutput.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p>\n         <p>For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL\n\t    according to the RFC-3986 specification for standard integrations. If <code>connectionType</code> is <code>VPC_LINK</code> specify the Network Load Balancer DNS name.\n      For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of\n      the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>.\n      Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the\n      integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by\n      certain Amazon Web Services  service for fast host-name lookup. action can be used for an Amazon Web Services  service\n      action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing\n      {service_api} refers to a supported action {name} plus any required input parameters.\n      Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service_api\n      refers to the path to an Amazon Web Services  service resource, including the region of the integrated Amazon Web Services \n      service, if applicable. For example, for integration with the S3 API of GetObject, the uri can\n      be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or\n      <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>\n         </p>"}))
    PutIntegrationOutput.add_member(:connection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'connectionType', traits: {"smithy.api#documentation" => "<p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>"}))
    PutIntegrationOutput.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectionId', traits: {"smithy.api#documentation" => "<p>The ID of the VpcLink used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>"}))
    PutIntegrationOutput.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\\*:user/\\*</code>. To use resource-based permissions on supported Amazon Web Services services, specify null.</p>"}))
    PutIntegrationOutput.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>"}))
    PutIntegrationOutput.add_member(:request_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestTemplates', traits: {"smithy.api#documentation" => "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>"}))
    PutIntegrationOutput.add_member(:passthrough_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'passthroughBehavior', traits: {"smithy.api#documentation" => "<p>Specifies how the method request body of an unmapped content type will be passed through\n      the integration request to the back end without transformation. A content type is unmapped if\n      no mapping template is defined in the integration or the content type does not match any of\n      the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the\n      following: <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to\n      the back end without transformation when the method request content type does not match any\n      content type associated with the mapping templates defined in the integration request.\n      <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back\n      end without transformation when no mapping template is defined in the integration request. If\n      a template is defined when this option is selected, the method request of an unmapped\n      content-type will be rejected with an HTTP 415 Unsupported Media Type response. <code>NEVER</code>: rejects\n      the method request with an HTTP 415 Unsupported Media Type response when either the method\n      request content type does not match any content type associated with the mapping templates\n      defined in the integration request or no mapping template is defined in the integration\n      request.</p>"}))
    PutIntegrationOutput.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>"}))
    PutIntegrationOutput.add_member(:timeout_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'timeoutInMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds. You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>"}))
    PutIntegrationOutput.add_member(:cache_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheNamespace', traits: {"smithy.api#documentation" => "<p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>"}))
    PutIntegrationOutput.add_member(:cache_key_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'cacheKeyParameters', traits: {"smithy.api#documentation" => "<p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>"}))
    PutIntegrationOutput.add_member(:integration_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfIntegrationResponse, location_name: 'integrationResponses', traits: {"smithy.api#documentation" => "<p>Specifies the integration's responses.</p>"}))
    PutIntegrationOutput.add_member(:tls_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsConfig, location_name: 'tlsConfig', traits: {"smithy.api#documentation" => "<p>Specifies the TLS configuration for an integration.</p>"}))
    PutIntegrationOutput.type = Types::PutIntegrationOutput
    PutIntegrationRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Specifies a put integration request's resource ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies the HTTP method for the integration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#jsonName" => "requestHttpMethod", "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies a put integration input's type.</p>", "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:integration_http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'integrationHttpMethod', traits: {"smithy.api#documentation" => "<p>The HTTP method for the integration.</p>", "smithy.api#jsonName" => "httpMethod"}))
    PutIntegrationRequest.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>Specifies Uniform Resource Identifier (URI) of the integration endpoint. For HTTP or\n      <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the\n      RFC-3986 specification, for either standard integration, where <code>connectionType</code> is not <code>VPC_LINK</code>,\n      or private integration, where <code>connectionType</code> is <code>VPC_LINK</code>. For a private HTTP integration, the\n      URI is not used for routing. For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of the form\n      <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api</code>}. Here,\n      {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the integrated\n      Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by certain Amazon Web Services\n      service for fast host-name lookup. action can be used for an Amazon Web Services service action-based API,\n      using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing {service_api} refers to\n      a supported action {name} plus any required input parameters. Alternatively, path can be used\n      for an Amazon Web Services service path-based API. The ensuing service_api refers to the path to an Amazon Web Services\n      service resource, including the region of the integrated Amazon Web Services service, if applicable. For\n      example, for integration with the S3 API of <code>GetObject</code>, the <code>uri</code> can be either\n      <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or\n      <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>.</p>"}))
    PutIntegrationRequest.add_member(:connection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'connectionType', traits: {"smithy.api#documentation" => "<p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>"}))
    PutIntegrationRequest.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectionId', traits: {"smithy.api#documentation" => "<p>The ID of the VpcLink used for the integration. Specify this value only if you specify <code>VPC_LINK</code> as the connection type.</p>"}))
    PutIntegrationRequest.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>Specifies whether credentials are required for a put integration.</p>"}))
    PutIntegrationRequest.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>"}))
    PutIntegrationRequest.add_member(:request_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestTemplates', traits: {"smithy.api#documentation" => "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>"}))
    PutIntegrationRequest.add_member(:passthrough_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'passthroughBehavior', traits: {"smithy.api#documentation" => "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <code>requestTemplates</code> property on the Integration resource. There are three valid values:  <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>.\n        </p>"}))
    PutIntegrationRequest.add_member(:cache_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheNamespace', traits: {"smithy.api#documentation" => "<p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>"}))
    PutIntegrationRequest.add_member(:cache_key_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'cacheKeyParameters', traits: {"smithy.api#documentation" => "<p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>"}))
    PutIntegrationRequest.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>"}))
    PutIntegrationRequest.add_member(:timeout_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'timeoutInMillis', traits: {"smithy.api#documentation" => "<p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.  You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>"}))
    PutIntegrationRequest.add_member(:tls_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsConfig, location_name: 'tlsConfig'))
    PutIntegrationRequest.type = Types::PutIntegrationRequest
    PutIntegrationResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>"}))
    PutIntegrationResponseOutput.add_member(:selection_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'selectionPattern', traits: {"smithy.api#documentation" => "<p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\\n</code>) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.</p>"}))
    PutIntegrationResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying response parameters that are passed to the method response from the back end.\n            The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>"}))
    PutIntegrationResponseOutput.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"}))
    PutIntegrationResponseOutput.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>"}))
    PutIntegrationResponseOutput.type = Types::PutIntegrationResponseOutput
    PutIntegrationResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationResponseRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Specifies a put integration response request's resource identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationResponseRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies a put integration response request's HTTP method.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationResponseRequest.add_member(:selection_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'selectionPattern', traits: {"smithy.api#documentation" => "<p>Specifies the selection pattern of a put integration response.</p>"}))
    PutIntegrationResponseRequest.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying response parameters that are passed to the method response from the back end.\n            The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> must be a valid and unique response header name and <code>JSON-expression</code> a valid JSON expression without the <code>$</code> prefix.</p>"}))
    PutIntegrationResponseRequest.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Specifies a put integration response's templates.</p>"}))
    PutIntegrationResponseRequest.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>"}))
    PutIntegrationResponseRequest.type = Types::PutIntegrationResponseRequest
    PutMethodOutput.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The method's HTTP verb.</p>"}))
    PutMethodOutput.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizationType', traits: {"smithy.api#documentation" => "<p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>"}))
    PutMethodOutput.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>The identifier of an Authorizer to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>"}))
    PutMethodOutput.add_member(:api_key_required, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'apiKeyRequired', traits: {"smithy.api#documentation" => "<p>A boolean flag specifying whether a valid ApiKey is required to invoke this method.</p>"}))
    PutMethodOutput.add_member(:request_validator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestValidatorId', traits: {"smithy.api#documentation" => "<p>The identifier of a RequestValidator for request validation.</p>"}))
    PutMethodOutput.add_member(:operation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'operationName', traits: {"smithy.api#documentation" => "<p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>"}))
    PutMethodOutput.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.</p>"}))
    PutMethodOutput.add_member(:request_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestModels', traits: {"smithy.api#documentation" => "<p>A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>"}))
    PutMethodOutput.add_member(:method_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodResponse, location_name: 'methodResponses', traits: {"smithy.api#documentation" => "<p>Gets a method response associated with a given HTTP status code. </p>"}))
    PutMethodOutput.add_member(:method_integration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, location_name: 'methodIntegration', traits: {"smithy.api#documentation" => "<p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p>"}))
    PutMethodOutput.add_member(:authorization_scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'authorizationScopes', traits: {"smithy.api#documentation" => "<p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"}))
    PutMethodOutput.type = Types::PutMethodOutput
    PutMethodRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource identifier for the new Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies the method request's HTTP method type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodRequest.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizationType', traits: {"smithy.api#documentation" => "<p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>", "smithy.api#required" => {}}))
    PutMethodRequest.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>Specifies the identifier of an Authorizer to use on this Method, if the type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"}))
    PutMethodRequest.add_member(:api_key_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'apiKeyRequired', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the method required a valid ApiKey.</p>"}))
    PutMethodRequest.add_member(:operation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'operationName', traits: {"smithy.api#documentation" => "<p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>"}))
    PutMethodRequest.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or body-mapping templates.</p>"}))
    PutMethodRequest.add_member(:request_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestModels', traits: {"smithy.api#documentation" => "<p>Specifies the Model resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a Model name as the value.</p>"}))
    PutMethodRequest.add_member(:request_validator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestValidatorId', traits: {"smithy.api#documentation" => "<p>The identifier of a RequestValidator for validating the method request.</p>"}))
    PutMethodRequest.add_member(:authorization_scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'authorizationScopes', traits: {"smithy.api#documentation" => "<p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"}))
    PutMethodRequest.type = Types::PutMethodRequest
    PutMethodResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The method response's status code.</p>"}))
    PutMethodResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>"}))
    PutMethodResponseOutput.add_member(:response_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseModels', traits: {"smithy.api#documentation" => "<p>Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.</p>"}))
    PutMethodResponseOutput.type = Types::PutMethodResponseOutput
    PutMethodResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodResponseRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource identifier for the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodResponseRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The HTTP verb of the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The method response's status code.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodResponseRequest.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>"}))
    PutMethodResponseRequest.add_member(:response_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseModels', traits: {"smithy.api#documentation" => "<p>Specifies the Model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.</p>"}))
    PutMethodResponseRequest.type = Types::PutMethodResponseRequest
    PutMode.add_member(:merge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Merge', traits: {"smithy.api#enumValue" => "merge"}))
    PutMode.add_member(:overwrite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Overwrite', traits: {"smithy.api#enumValue" => "overwrite"}))
    PutRestApiOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>"}))
    PutRestApiOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The API's name.</p>"}))
    PutRestApiOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The API's description.</p>"}))
    PutRestApiOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API was created.</p>"}))
    PutRestApiOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A version identifier for the API.</p>"}))
    PutRestApiOutput.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>"}))
    PutRestApiOutput.add_member(:binary_media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'binaryMediaTypes', traits: {"smithy.api#documentation" => "<p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>"}))
    PutRestApiOutput.add_member(:minimum_compression_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'minimumCompressionSize', traits: {"smithy.api#documentation" => "<p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>"}))
    PutRestApiOutput.add_member(:api_key_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeySourceType, location_name: 'apiKeySource', traits: {"smithy.api#documentation" => "<p>The source of the API key for metering requests according to a usage plan. Valid values\n      are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a\n      request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>\n      from a custom authorizer.</p>"}))
    PutRestApiOutput.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>"}))
    PutRestApiOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>"}))
    PutRestApiOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    PutRestApiOutput.add_member(:disable_execute_api_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableExecuteApiEndpoint', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.\n      By default, clients can invoke your API with the default\n      <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a\n      custom domain name to invoke your API, disable the default endpoint.</p>"}))
    PutRestApiOutput.add_member(:root_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rootResourceId', traits: {"smithy.api#documentation" => "<p>The API's root resource ID.</p>"}))
    PutRestApiOutput.type = Types::PutRestApiOutput
    PutRestApiRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRestApiRequest.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PutMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The <code>mode</code> query parameter to specify the update mode. Valid values are \"merge\" and \"overwrite\". By default,\n        the update mode is \"merge\".</p>", "smithy.api#httpQuery" => "mode"}))
    PutRestApiRequest.add_member(:fail_on_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'failOnWarnings', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A query parameter to indicate whether to rollback the API update (<code>true</code>) or not (<code>false</code>)\n            when a warning is encountered. The default value is <code>false</code>.</p>", "smithy.api#httpQuery" => "failonwarnings"}))
    PutRestApiRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Custom header parameters as part of the request. For example, to exclude DocumentationParts from an imported API, set <code>ignore=documentation</code> as a <code>parameters</code> value, as in the AWS CLI command of <code>aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'</code>.</p>", "smithy.api#httpQueryParams" => {}}))
    PutRestApiRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutRestApiRequest[:http_payload] = :body
    PutRestApiRequest[:http_payload_member] = PutRestApiRequest.member(:body)
    PutRestApiRequest.type = Types::PutRestApiRequest
    QuotaPeriodType.add_member(:day, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY', traits: {"smithy.api#enumValue" => "DAY"}))
    QuotaPeriodType.add_member(:week, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEK', traits: {"smithy.api#enumValue" => "WEEK"}))
    QuotaPeriodType.add_member(:month, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTH', traits: {"smithy.api#enumValue" => "MONTH"}))
    QuotaSettings.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The target maximum number of requests that can be made in a given time period.</p>"}))
    QuotaSettings.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'offset', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of requests subtracted from the given limit in the initial time period.</p>"}))
    QuotaSettings.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaPeriodType, location_name: 'period', traits: {"smithy.api#documentation" => "<p>The time period in which the limit applies. Valid values are \"DAY\", \"WEEK\" or \"MONTH\".</p>"}))
    QuotaSettings.type = Types::QuotaSettings
    RejectDomainNameAccessAssociationRequest.add_member(:domain_name_access_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameAccessAssociationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name access association resource.\n</p>", "smithy.api#httpQuery" => "domainNameAccessAssociationArn", "smithy.api#required" => {}}))
    RejectDomainNameAccessAssociationRequest.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>\nThe ARN of the domain name.\n</p>", "smithy.api#httpQuery" => "domainNameArn", "smithy.api#required" => {}}))
    RejectDomainNameAccessAssociationRequest.type = Types::RejectDomainNameAccessAssociationRequest
    RequestValidator.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of this RequestValidator.</p>"}))
    RequestValidator.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of this RequestValidator</p>"}))
    RequestValidator.add_member(:validate_request_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestBody', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate a request body according to the configured Model schema.</p>"}))
    RequestValidator.add_member(:validate_request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestParameters', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>"}))
    RequestValidator.type = Types::RequestValidator
    Resource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The resource's identifier.</p>"}))
    Resource.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'parentId', traits: {"smithy.api#documentation" => "<p>The parent resource's identifier.</p>"}))
    Resource.add_member(:path_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pathPart', traits: {"smithy.api#documentation" => "<p>The last path segment for this resource.</p>"}))
    Resource.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The full path for this resource.</p>"}))
    Resource.add_member(:resource_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethod, location_name: 'resourceMethods', traits: {"smithy.api#documentation" => "<p>Gets an API resource's method of a given HTTP verb.</p>"}))
    Resource.type = Types::Resource
    ResourceOwner.add_member(:self, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELF', traits: {"smithy.api#enumValue" => "SELF"}))
    ResourceOwner.add_member(:other_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER_ACCOUNTS', traits: {"smithy.api#enumValue" => "OTHER_ACCOUNTS"}))
    RestApi.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>"}))
    RestApi.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The API's name.</p>"}))
    RestApi.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The API's description.</p>"}))
    RestApi.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API was created.</p>"}))
    RestApi.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A version identifier for the API.</p>"}))
    RestApi.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>"}))
    RestApi.add_member(:binary_media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'binaryMediaTypes', traits: {"smithy.api#documentation" => "<p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>"}))
    RestApi.add_member(:minimum_compression_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'minimumCompressionSize', traits: {"smithy.api#documentation" => "<p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>"}))
    RestApi.add_member(:api_key_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeySourceType, location_name: 'apiKeySource', traits: {"smithy.api#documentation" => "<p>The source of the API key for metering requests according to a usage plan. Valid values\n      are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a\n      request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>\n      from a custom authorizer.</p>"}))
    RestApi.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>"}))
    RestApi.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>"}))
    RestApi.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    RestApi.add_member(:disable_execute_api_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableExecuteApiEndpoint', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.\n      By default, clients can invoke your API with the default\n      <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a\n      custom domain name to invoke your API, disable the default endpoint.</p>"}))
    RestApi.add_member(:root_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rootResourceId', traits: {"smithy.api#documentation" => "<p>The API's root resource ID.</p>"}))
    RestApi.type = Types::RestApi
    RoutingMode.add_member(:base_path_mapping_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASE_PATH_MAPPING_ONLY', traits: {"smithy.api#enumValue" => "BASE_PATH_MAPPING_ONLY"}))
    RoutingMode.add_member(:routing_rule_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTING_RULE_ONLY', traits: {"smithy.api#enumValue" => "ROUTING_RULE_ONLY"}))
    RoutingMode.add_member(:routing_rule_then_base_path_mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTING_RULE_THEN_BASE_PATH_MAPPING', traits: {"smithy.api#enumValue" => "ROUTING_RULE_THEN_BASE_PATH_MAPPING"}))
    SdkConfigurationProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a an SdkType configuration property.</p>"}))
    SdkConfigurationProperty.add_member(:friendly_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'friendlyName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of an SdkType configuration property.</p>"}))
    SdkConfigurationProperty.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of an SdkType configuration property.</p>"}))
    SdkConfigurationProperty.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'required', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean flag of an SdkType configuration property to indicate if the associated SDK configuration property is required (<code>true</code>) or not (<code>false</code>).</p>"}))
    SdkConfigurationProperty.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value of an SdkType configuration property.</p>"}))
    SdkConfigurationProperty.type = Types::SdkConfigurationProperty
    SdkResponse.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The content-type header value in the HTTP response.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    SdkResponse.add_member(:content_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentDisposition', traits: {"smithy.api#documentation" => "<p>The content-disposition header value in the HTTP response.</p>", "smithy.api#httpHeader" => "Content-Disposition"}))
    SdkResponse.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The binary blob response to GetSdk, which contains the generated SDK.</p>", "smithy.api#httpPayload" => {}}))
    SdkResponse[:http_payload] = :body
    SdkResponse[:http_payload_member] = SdkResponse.member(:body)
    SdkResponse.type = Types::SdkResponse
    SdkType.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of an SdkType instance.</p>"}))
    SdkType.add_member(:friendly_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'friendlyName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of an SdkType instance.</p>"}))
    SdkType.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of an SdkType.</p>"}))
    SdkType.add_member(:configuration_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSdkConfigurationProperty, location_name: 'configurationProperties', traits: {"smithy.api#documentation" => "<p>A list of configuration properties of an SdkType.</p>"}))
    SdkType.type = Types::SdkType
    SecurityPolicy.add_member(:tls_1_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS_1_0', traits: {"smithy.api#enumValue" => "TLS_1_0"}))
    SecurityPolicy.add_member(:tls_1_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS_1_2', traits: {"smithy.api#enumValue" => "TLS_1_2"}))
    ServiceUnavailableException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    Stage.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Deployment that the stage points to.</p>"}))
    Stage.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of a client certificate for an API stage.</p>"}))
    Stage.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"}))
    Stage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The stage's description.</p>"}))
    Stage.add_member(:cache_cluster_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'cacheClusterEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether a cache cluster is enabled for the stage. To activate a method-level cache, set <code>CachingEnabled</code> to <code>true</code> for a method. </p>"}))
    Stage.add_member(:cache_cluster_size, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterSize, location_name: 'cacheClusterSize', traits: {"smithy.api#documentation" => "<p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html\">Enabling API caching to enhance responsiveness</a>.</p>"}))
    Stage.add_member(:cache_cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterStatus, location_name: 'cacheClusterStatus', traits: {"smithy.api#documentation" => "<p>The status of the cache cluster for the stage, if enabled.</p>"}))
    Stage.add_member(:method_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodSettings, location_name: 'methodSettings', traits: {"smithy.api#documentation" => "<p>A map that defines the method settings for a Stage resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\\*/\\*</code> for overriding all methods in the stage.  </p>"}))
    Stage.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A map that defines the stage variables for a Stage resource. Variable names can\n          have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>"}))
    Stage.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version of the associated API documentation.</p>"}))
    Stage.add_member(:access_log_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: 'accessLogSettings', traits: {"smithy.api#documentation" => "<p>Settings for logging access in this stage.</p>"}))
    Stage.add_member(:canary_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: CanarySettings, location_name: 'canarySettings', traits: {"smithy.api#documentation" => "<p>Settings for the canary deployment in this stage.</p>"}))
    Stage.add_member(:tracing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'tracingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>"}))
    Stage.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'webAclArn', traits: {"smithy.api#documentation" => "<p>The ARN of the WebAcl associated with the Stage.</p>"}))
    Stage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    Stage.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the stage was created.</p>"}))
    Stage.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the stage last updated.</p>"}))
    Stage.type = Types::Stage
    StageKey.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>"}))
    StageKey.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The stage name associated with the stage key.</p>"}))
    StageKey.type = Types::StageKey
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of a resource that can be tagged.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TestInvokeAuthorizerRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeAuthorizerRequest.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>Specifies a test invoke authorizer request's Authorizer ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeAuthorizerRequest.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'headers', traits: {"smithy.api#documentation" => "<p>A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.</p>"}))
    TestInvokeAuthorizerRequest.add_member(:multi_value_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToList, location_name: 'multiValueHeaders', traits: {"smithy.api#documentation" => "<p>The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.</p>"}))
    TestInvokeAuthorizerRequest.add_member(:path_with_query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pathWithQueryString', traits: {"smithy.api#documentation" => "<p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>"}))
    TestInvokeAuthorizerRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The simulated request body of an incoming invocation request.</p>"}))
    TestInvokeAuthorizerRequest.add_member(:stage_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'stageVariables', traits: {"smithy.api#documentation" => "<p>A key-value map of stage variables to simulate an invocation on a deployed Stage.</p>"}))
    TestInvokeAuthorizerRequest.add_member(:additional_context, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'additionalContext', traits: {"smithy.api#documentation" => "<p>A key-value map of additional context variables.</p>"}))
    TestInvokeAuthorizerRequest.type = Types::TestInvokeAuthorizerRequest
    TestInvokeAuthorizerResponse.add_member(:client_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'clientStatus', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The HTTP status code that the client would have received. Value is 0 if the authorizer succeeded.</p>"}))
    TestInvokeAuthorizerResponse.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'log', traits: {"smithy.api#documentation" => "<p>The API Gateway execution log for the test authorizer request.</p>"}))
    TestInvokeAuthorizerResponse.add_member(:latency, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'latency', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The execution latency, in ms, of the test authorizer request.</p>"}))
    TestInvokeAuthorizerResponse.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The principal identity returned by the Authorizer</p>"}))
    TestInvokeAuthorizerResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The JSON policy document returned by the Authorizer</p>"}))
    TestInvokeAuthorizerResponse.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToList, location_name: 'authorization', traits: {"smithy.api#documentation" => "<p>The authorization response.</p>"}))
    TestInvokeAuthorizerResponse.add_member(:claims, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'claims', traits: {"smithy.api#documentation" => "<p>The open identity claims, with any supported custom attributes, returned from the Cognito Your User Pool configured for the API.</p>"}))
    TestInvokeAuthorizerResponse.type = Types::TestInvokeAuthorizerResponse
    TestInvokeMethodRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeMethodRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Specifies a test invoke method request's resource ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeMethodRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies a test invoke method request's HTTP method.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeMethodRequest.add_member(:path_with_query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pathWithQueryString', traits: {"smithy.api#documentation" => "<p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>"}))
    TestInvokeMethodRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The simulated request body of an incoming invocation request.</p>"}))
    TestInvokeMethodRequest.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'headers', traits: {"smithy.api#documentation" => "<p>A key-value map of headers to simulate an incoming invocation request.</p>"}))
    TestInvokeMethodRequest.add_member(:multi_value_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToList, location_name: 'multiValueHeaders', traits: {"smithy.api#documentation" => "<p>The headers as a map from string to list of values to simulate an incoming invocation request.</p>"}))
    TestInvokeMethodRequest.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>A ClientCertificate identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.</p>"}))
    TestInvokeMethodRequest.add_member(:stage_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'stageVariables', traits: {"smithy.api#documentation" => "<p>A key-value map of stage variables to simulate an invocation on a deployed Stage.</p>"}))
    TestInvokeMethodRequest.type = Types::TestInvokeMethodRequest
    TestInvokeMethodResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'status', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The HTTP status code.</p>"}))
    TestInvokeMethodResponse.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The body of the HTTP response.</p>"}))
    TestInvokeMethodResponse.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'headers', traits: {"smithy.api#documentation" => "<p>The headers of the HTTP response.</p>"}))
    TestInvokeMethodResponse.add_member(:multi_value_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToList, location_name: 'multiValueHeaders', traits: {"smithy.api#documentation" => "<p>The headers of the HTTP response as a map from string to list of values.</p>"}))
    TestInvokeMethodResponse.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'log', traits: {"smithy.api#documentation" => "<p>The API Gateway execution log for the test invoke request.</p>"}))
    TestInvokeMethodResponse.add_member(:latency, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'latency', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The execution latency, in ms, of the test invoke request.</p>"}))
    TestInvokeMethodResponse.type = Types::TestInvokeMethodResponse
    ThrottleSettings.add_member(:burst_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'burstLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The API target request burst rate limit. This allows more requests through for a period of time than the target rate limit.</p>"}))
    ThrottleSettings.add_member(:rate_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'rateLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The API target request rate limit.</p>"}))
    ThrottleSettings.type = Types::ThrottleSettings
    TlsConfig.add_member(:insecure_skip_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'insecureSkipVerification', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether or not API Gateway skips verification that the certificate for an integration endpoint is\n            issued by a supported certificate authority. This isn’t recommended, but it enables you to\n            use certificates that are signed by private certificate authorities, or certificates\n            that are self-signed. If enabled, API Gateway still performs basic certificate\n            validation, which includes checking the certificate's expiration date, hostname, and\n            presence of a root certificate authority. Supported only for <code>HTTP</code> and\n            <code>HTTP_PROXY</code> integrations.</p>\n         <important>\n            <p>Enabling <code>insecureSkipVerification</code> isn't recommended, especially for integrations with public\n          HTTPS endpoints. If you enable <code>insecureSkipVerification</code>, you increase the risk of man-in-the-middle attacks.</p>\n         </important>"}))
    TlsConfig.type = Types::TlsConfig
    TooManyRequestsException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnauthorizedCacheControlHeaderStrategy.add_member(:fail_with_403, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL_WITH_403', traits: {"smithy.api#enumValue" => "FAIL_WITH_403"}))
    UnauthorizedCacheControlHeaderStrategy.add_member(:succeed_with_response_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEED_WITH_RESPONSE_HEADER', traits: {"smithy.api#enumValue" => "SUCCEED_WITH_RESPONSE_HEADER"}))
    UnauthorizedCacheControlHeaderStrategy.add_member(:succeed_without_response_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEED_WITHOUT_RESPONSE_HEADER', traits: {"smithy.api#enumValue" => "SUCCEED_WITHOUT_RESPONSE_HEADER"}))
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of a resource that can be tagged.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The Tag keys to delete.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAccountOutput.add_member(:cloudwatch_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cloudwatchRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an Amazon CloudWatch role for the current Account. </p>"}))
    UpdateAccountOutput.add_member(:throttle_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleSettings, location_name: 'throttleSettings', traits: {"smithy.api#documentation" => "<p>Specifies the API request limits configured for the current Account.</p>"}))
    UpdateAccountOutput.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'features', traits: {"smithy.api#documentation" => "<p>A list of features supported for the account. When usage plans are enabled, the features list will include an entry of <code>\"UsagePlans\"</code>.</p>"}))
    UpdateAccountOutput.add_member(:api_key_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiKeyVersion', traits: {"smithy.api#documentation" => "<p>The version of the API keys used for the account.</p>"}))
    UpdateAccountOutput.type = Types::UpdateAccountOutput
    UpdateAccountRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateAccountRequest.type = Types::UpdateAccountRequest
    UpdateApiKeyOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the API Key.</p>"}))
    UpdateApiKeyOutput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the API Key.</p>"}))
    UpdateApiKeyOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the API Key.</p>"}))
    UpdateApiKeyOutput.add_member(:customer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customerId', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>"}))
    UpdateApiKeyOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the API Key.</p>"}))
    UpdateApiKeyOutput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the API Key can be used by callers.</p>"}))
    UpdateApiKeyOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API Key was created.</p>"}))
    UpdateApiKeyOutput.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API Key was last updated.</p>"}))
    UpdateApiKeyOutput.add_member(:stage_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'stageKeys', traits: {"smithy.api#documentation" => "<p>A list of Stage resources that are associated with the ApiKey resource.</p>"}))
    UpdateApiKeyOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    UpdateApiKeyOutput.type = Types::UpdateApiKeyOutput
    UpdateApiKeyRequest.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiKey', traits: {"smithy.api#documentation" => "<p>The identifier of the ApiKey resource to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateApiKeyRequest.type = Types::UpdateApiKeyRequest
    UpdateAuthorizerOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the authorizer resource.</p>"}))
    UpdateAuthorizerOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the authorizer.</p>"}))
    UpdateAuthorizerOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>"}))
    UpdateAuthorizerOutput.add_member(:provider_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfARNs, location_name: 'providerARNs', traits: {"smithy.api#documentation" => "<p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>"}))
    UpdateAuthorizerOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>"}))
    UpdateAuthorizerOutput.add_member(:authorizer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerUri', traits: {"smithy.api#documentation" => "<p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>"}))
    UpdateAuthorizerOutput.add_member(:authorizer_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerCredentials', traits: {"smithy.api#documentation" => "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>"}))
    UpdateAuthorizerOutput.add_member(:identity_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identitySource', traits: {"smithy.api#documentation" => "<p>The identity source for which authorization is requested. For a <code>TOKEN</code> or\n        <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request\n      header mapping expression for the custom header holding the authorization token submitted by\n      the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is\n      <code>method.request.header.Auth</code>. For the <code>REQUEST</code> authorizer, this is required when authorization\n      caching is enabled. The value is a comma-separated string of one or more mapping expressions\n      of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string\n      parameter are defined as identity sources, this value is <code>method.request.header.Auth</code>,\n      <code>method.request.querystring.Name</code>. These parameters will be used to derive the authorization\n      caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of\n      the identity-related request parameters are present, not null and non-empty. Only when this is\n      true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401\n      Unauthorized response without calling the Lambda function. The valid value is a string of\n      comma-separated mapping expressions of the specified request parameters. When the\n      authorization caching is not enabled, this property is optional. </p>"}))
    UpdateAuthorizerOutput.add_member(:identity_validation_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityValidationExpression', traits: {"smithy.api#documentation" => "<p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>"}))
    UpdateAuthorizerOutput.add_member(:authorizer_result_ttl_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'authorizerResultTtlInSeconds', traits: {"smithy.api#documentation" => "<p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>"}))
    UpdateAuthorizerOutput.type = Types::UpdateAuthorizerOutput
    UpdateAuthorizerRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAuthorizerRequest.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>The identifier of the Authorizer resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAuthorizerRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateAuthorizerRequest.type = Types::UpdateAuthorizerRequest
    UpdateBasePathMappingOutput.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'basePath', traits: {"smithy.api#documentation" => "<p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>"}))
    UpdateBasePathMappingOutput.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>"}))
    UpdateBasePathMappingOutput.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The name of the associated stage.</p>"}))
    UpdateBasePathMappingOutput.type = Types::UpdateBasePathMappingOutput
    UpdateBasePathMappingRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name of the BasePathMapping resource to change.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBasePathMappingRequest.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>\n  The identifier for the domain name resource. Supported only for private custom domain names.\n</p>", "smithy.api#httpQuery" => "domainNameId"}))
    UpdateBasePathMappingRequest.add_member(:base_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'basePath', traits: {"smithy.api#documentation" => "<p>The base path of the BasePathMapping resource to change.</p>\n         <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBasePathMappingRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateBasePathMappingRequest.type = Types::UpdateBasePathMappingRequest
    UpdateClientCertificateOutput.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the client certificate.</p>"}))
    UpdateClientCertificateOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the client certificate.</p>"}))
    UpdateClientCertificateOutput.add_member(:pem_encoded_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pemEncodedCertificate', traits: {"smithy.api#documentation" => "<p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>"}))
    UpdateClientCertificateOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the client certificate was created.</p>"}))
    UpdateClientCertificateOutput.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expirationDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the client certificate will expire.</p>"}))
    UpdateClientCertificateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    UpdateClientCertificateOutput.type = Types::UpdateClientCertificateOutput
    UpdateClientCertificateRequest.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the ClientCertificate resource to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClientCertificateRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateClientCertificateRequest.type = Types::UpdateClientCertificateRequest
    UpdateDeploymentOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the deployment resource.</p>"}))
    UpdateDeploymentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the deployment resource.</p>"}))
    UpdateDeploymentOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date and time that the deployment resource was created.</p>"}))
    UpdateDeploymentOutput.add_member(:api_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: PathToMapOfMethodSnapshot, location_name: 'apiSummary', traits: {"smithy.api#documentation" => "<p>A summary of the RestApi at the date and time that the deployment resource was created.</p>"}))
    UpdateDeploymentOutput.type = Types::UpdateDeploymentOutput
    UpdateDeploymentRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The replacement identifier for the Deployment resource to change information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateDeploymentRequest.type = Types::UpdateDeploymentRequest
    UpdateDocumentationPartOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The DocumentationPart identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>"}))
    UpdateDocumentationPartOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentationPartLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>"}))
    UpdateDocumentationPartOutput.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>\"{ \\\"description\\\": \\\"The API does ...\\\" }\"</code>.  Only OpenAPI-compliant documentation-related fields from the properties map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>"}))
    UpdateDocumentationPartOutput.type = Types::UpdateDocumentationPartOutput
    UpdateDocumentationPartRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentationPartRequest.add_member(:documentation_part_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationPartId', traits: {"smithy.api#documentation" => "<p>The identifier of the to-be-updated documentation part.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentationPartRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateDocumentationPartRequest.type = Types::UpdateDocumentationPartRequest
    UpdateDocumentationVersionOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version identifier of the API documentation snapshot.</p>"}))
    UpdateDocumentationVersionOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The date when the API documentation snapshot is created.</p>"}))
    UpdateDocumentationVersionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the API documentation snapshot.</p>"}))
    UpdateDocumentationVersionOutput.type = Types::UpdateDocumentationVersionOutput
    UpdateDocumentationVersionRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentationVersionRequest.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version identifier of the to-be-updated documentation version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentationVersionRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateDocumentationVersionRequest.type = Types::UpdateDocumentationVersionRequest
    UpdateDomainNameOutput.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>"}))
    UpdateDomainNameOutput.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>The identifier for the domain name resource. Supported only for private custom domain names.</p>"}))
    UpdateDomainNameOutput.add_member(:domain_name_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameArn', traits: {"smithy.api#documentation" => "<p>The ARN of the domain name.\n</p>"}))
    UpdateDomainNameOutput.add_member(:certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateName', traits: {"smithy.api#documentation" => "<p>The name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>"}))
    UpdateDomainNameOutput.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>"}))
    UpdateDomainNameOutput.add_member(:certificate_upload_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'certificateUploadDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the certificate that was used by edge-optimized endpoint or private endpoint for this domain name was uploaded.</p>"}))
    UpdateDomainNameOutput.add_member(:regional_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalDomainName', traits: {"smithy.api#documentation" => "<p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>"}))
    UpdateDomainNameOutput.add_member(:regional_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalHostedZoneId', traits: {"smithy.api#documentation" => "<p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>"}))
    UpdateDomainNameOutput.add_member(:regional_certificate_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateName', traits: {"smithy.api#documentation" => "<p>The name of the certificate that will be used for validating the regional domain name.</p>"}))
    UpdateDomainNameOutput.add_member(:regional_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regionalCertificateArn', traits: {"smithy.api#documentation" => "<p>The reference to an Amazon Web Services-managed certificate that will be used for validating the regional domain name. Certificate Manager is the only supported source.</p>"}))
    UpdateDomainNameOutput.add_member(:distribution_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'distributionDomainName', traits: {"smithy.api#documentation" => "<p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.</p>"}))
    UpdateDomainNameOutput.add_member(:distribution_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'distributionHostedZoneId', traits: {"smithy.api#documentation" => "<p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway. </p>"}))
    UpdateDomainNameOutput.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>"}))
    UpdateDomainNameOutput.add_member(:domain_name_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameStatus, location_name: 'domainNameStatus', traits: {"smithy.api#documentation" => "<p>The status of the DomainName migration. The valid values are <code>AVAILABLE</code> and <code>UPDATING</code>. If the status is <code>UPDATING</code>, the domain cannot be modified further until the existing operation is complete. If it is <code>AVAILABLE</code>, the domain can be updated.</p>"}))
    UpdateDomainNameOutput.add_member(:domain_name_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameStatusMessage', traits: {"smithy.api#documentation" => "<p>An optional text message containing detailed information about status of the DomainName migration.</p>"}))
    UpdateDomainNameOutput.add_member(:security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicy, location_name: 'securityPolicy', traits: {"smithy.api#documentation" => "<p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>"}))
    UpdateDomainNameOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    UpdateDomainNameOutput.add_member(:mutual_tls_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: MutualTlsAuthentication, location_name: 'mutualTlsAuthentication', traits: {"smithy.api#documentation" => "<p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway\n      performs two-way authentication between the client and the server. Clients must present a\n      trusted certificate to access your API.</p>"}))
    UpdateDomainNameOutput.add_member(:ownership_verification_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownershipVerificationCertificateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the public certificate issued by ACM to validate ownership of your custom\n      domain. Only required when configuring mutual TLS and using an ACM imported or private CA\n      certificate ARN as the regionalCertificateArn.</p>"}))
    UpdateDomainNameOutput.add_member(:management_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'managementPolicy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the API Gateway Management service for this DomainName. This policy document controls access for access association sources to create domain name access associations with this DomainName. Supported only for private custom domain names.</p>"}))
    UpdateDomainNameOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method\n      configuration. Supported only for private custom\n      domain names.</p>"}))
    UpdateDomainNameOutput.add_member(:routing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingMode, location_name: 'routingMode', traits: {"smithy.api#documentation" => "<p>The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.</p>"}))
    UpdateDomainNameOutput.type = Types::UpdateDomainNameOutput
    UpdateDomainNameRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The name of the DomainName resource to be changed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainNameRequest.add_member(:domain_name_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainNameId', traits: {"smithy.api#documentation" => "<p>\n  The identifier for the domain name resource. Supported only for private custom domain names.\n</p>", "smithy.api#httpQuery" => "domainNameId"}))
    UpdateDomainNameRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateDomainNameRequest.type = Types::UpdateDomainNameRequest
    UpdateGatewayResponseOutput.add_member(:response_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponseType, location_name: 'responseType', traits: {"smithy.api#documentation" => "<p>The response type of the associated GatewayResponse.</p>"}))
    UpdateGatewayResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code for this GatewayResponse.</p>"}))
    UpdateGatewayResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>Response parameters (paths, query strings and headers) of the GatewayResponse as a\n      string-to-string map of key-value pairs.</p>"}))
    UpdateGatewayResponseOutput.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>"}))
    UpdateGatewayResponseOutput.add_member(:default_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultResponse', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether this GatewayResponse is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>"}))
    UpdateGatewayResponseOutput.type = Types::UpdateGatewayResponseOutput
    UpdateGatewayResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayResponseRequest.add_member(:response_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayResponseType, location_name: 'responseType', traits: {"smithy.api#documentation" => "<p>The response type of the associated GatewayResponse.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayResponseRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateGatewayResponseRequest.type = Types::UpdateGatewayResponseRequest
    UpdateIntegrationOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies an API method integration type. The valid value is one of the following:</p>\n         <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.</p>"}))
    UpdateIntegrationOutput.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies the integration's HTTP method type. For the Type property, if you specify <code>MOCK</code>, this property is optional. For Lambda integrations, you must set the integration method to <code>POST</code>. For all other types, you must specify this property.</p>"}))
    UpdateIntegrationOutput.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p>\n         <p>For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL\n\t    according to the RFC-3986 specification for standard integrations. If <code>connectionType</code> is <code>VPC_LINK</code> specify the Network Load Balancer DNS name.\n      For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of\n      the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>.\n      Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the\n      integrated Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by\n      certain Amazon Web Services  service for fast host-name lookup. action can be used for an Amazon Web Services  service\n      action-based API, using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing\n      {service_api} refers to a supported action {name} plus any required input parameters.\n      Alternatively, path can be used for an Amazon Web Services service path-based API. The ensuing service_api\n      refers to the path to an Amazon Web Services  service resource, including the region of the integrated Amazon Web Services \n      service, if applicable. For example, for integration with the S3 API of GetObject, the uri can\n      be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or\n      <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>\n         </p>"}))
    UpdateIntegrationOutput.add_member(:connection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'connectionType', traits: {"smithy.api#documentation" => "<p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>"}))
    UpdateIntegrationOutput.add_member(:connection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectionId', traits: {"smithy.api#documentation" => "<p>The ID of the VpcLink used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>"}))
    UpdateIntegrationOutput.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\\*:user/\\*</code>. To use resource-based permissions on supported Amazon Web Services services, specify null.</p>"}))
    UpdateIntegrationOutput.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>"}))
    UpdateIntegrationOutput.add_member(:request_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestTemplates', traits: {"smithy.api#documentation" => "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>"}))
    UpdateIntegrationOutput.add_member(:passthrough_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'passthroughBehavior', traits: {"smithy.api#documentation" => "<p>Specifies how the method request body of an unmapped content type will be passed through\n      the integration request to the back end without transformation. A content type is unmapped if\n      no mapping template is defined in the integration or the content type does not match any of\n      the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the\n      following: <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to\n      the back end without transformation when the method request content type does not match any\n      content type associated with the mapping templates defined in the integration request.\n      <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back\n      end without transformation when no mapping template is defined in the integration request. If\n      a template is defined when this option is selected, the method request of an unmapped\n      content-type will be rejected with an HTTP 415 Unsupported Media Type response. <code>NEVER</code>: rejects\n      the method request with an HTTP 415 Unsupported Media Type response when either the method\n      request content type does not match any content type associated with the mapping templates\n      defined in the integration request or no mapping template is defined in the integration\n      request.</p>"}))
    UpdateIntegrationOutput.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>"}))
    UpdateIntegrationOutput.add_member(:timeout_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'timeoutInMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds. You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>"}))
    UpdateIntegrationOutput.add_member(:cache_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheNamespace', traits: {"smithy.api#documentation" => "<p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>"}))
    UpdateIntegrationOutput.add_member(:cache_key_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'cacheKeyParameters', traits: {"smithy.api#documentation" => "<p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>"}))
    UpdateIntegrationOutput.add_member(:integration_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfIntegrationResponse, location_name: 'integrationResponses', traits: {"smithy.api#documentation" => "<p>Specifies the integration's responses.</p>"}))
    UpdateIntegrationOutput.add_member(:tls_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsConfig, location_name: 'tlsConfig', traits: {"smithy.api#documentation" => "<p>Specifies the TLS configuration for an integration.</p>"}))
    UpdateIntegrationOutput.type = Types::UpdateIntegrationOutput
    UpdateIntegrationRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Represents an update integration request's resource identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Represents an update integration request's HTTP method.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateIntegrationRequest.type = Types::UpdateIntegrationRequest
    UpdateIntegrationResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>"}))
    UpdateIntegrationResponseOutput.add_member(:selection_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'selectionPattern', traits: {"smithy.api#documentation" => "<p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\\n</code>) character in such cases. If the back end is an Lambda function, the Lambda function error header is matched. For all other HTTP and Amazon Web Services back ends, the HTTP status code is matched.</p>"}))
    UpdateIntegrationResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying response parameters that are passed to the method response from the back end.\n            The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>"}))
    UpdateIntegrationResponseOutput.add_member(:response_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseTemplates', traits: {"smithy.api#documentation" => "<p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"}))
    UpdateIntegrationResponseOutput.add_member(:content_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: 'contentHandling', traits: {"smithy.api#documentation" => "<p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>\n         <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>"}))
    UpdateIntegrationResponseOutput.type = Types::UpdateIntegrationResponseOutput
    UpdateIntegrationResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Specifies an update integration response request's resource identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>Specifies an update integration response request's HTTP method.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>Specifies an update integration response request's status code.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateIntegrationResponseRequest.type = Types::UpdateIntegrationResponseRequest
    UpdateMethodOutput.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The method's HTTP verb.</p>"}))
    UpdateMethodOutput.add_member(:authorization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizationType', traits: {"smithy.api#documentation" => "<p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>"}))
    UpdateMethodOutput.add_member(:authorizer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizerId', traits: {"smithy.api#documentation" => "<p>The identifier of an Authorizer to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>"}))
    UpdateMethodOutput.add_member(:api_key_required, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'apiKeyRequired', traits: {"smithy.api#documentation" => "<p>A boolean flag specifying whether a valid ApiKey is required to invoke this method.</p>"}))
    UpdateMethodOutput.add_member(:request_validator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestValidatorId', traits: {"smithy.api#documentation" => "<p>The identifier of a RequestValidator for request validation.</p>"}))
    UpdateMethodOutput.add_member(:operation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'operationName', traits: {"smithy.api#documentation" => "<p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>"}))
    UpdateMethodOutput.add_member(:request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'requestParameters', traits: {"smithy.api#documentation" => "<p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or templates.</p>"}))
    UpdateMethodOutput.add_member(:request_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'requestModels', traits: {"smithy.api#documentation" => "<p>A key-value map specifying data schemas, represented by Model resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>"}))
    UpdateMethodOutput.add_member(:method_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodResponse, location_name: 'methodResponses', traits: {"smithy.api#documentation" => "<p>Gets a method response associated with a given HTTP status code. </p>"}))
    UpdateMethodOutput.add_member(:method_integration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, location_name: 'methodIntegration', traits: {"smithy.api#documentation" => "<p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p>"}))
    UpdateMethodOutput.add_member(:authorization_scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'authorizationScopes', traits: {"smithy.api#documentation" => "<p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"}))
    UpdateMethodOutput.type = Types::UpdateMethodOutput
    UpdateMethodRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource identifier for the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The HTTP verb of the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateMethodRequest.type = Types::UpdateMethodRequest
    UpdateMethodResponseOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The method response's status code.</p>"}))
    UpdateMethodResponseOutput.add_member(:response_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToBoolean, location_name: 'responseParameters', traits: {"smithy.api#documentation" => "<p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's IntegrationResponse. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>"}))
    UpdateMethodResponseOutput.add_member(:response_models, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'responseModels', traits: {"smithy.api#documentation" => "<p>Specifies the Model resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a Model name as the value.</p>"}))
    UpdateMethodResponseOutput.type = Types::UpdateMethodResponseOutput
    UpdateMethodResponseRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodResponseRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Resource identifier for the MethodResponse resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodResponseRequest.add_member(:http_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'httpMethod', traits: {"smithy.api#documentation" => "<p>The HTTP verb of the Method resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodResponseRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code for the MethodResponse resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodResponseRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateMethodResponseRequest.type = Types::UpdateMethodResponseRequest
    UpdateModelOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the model resource.</p>"}))
    UpdateModelOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the model. Must be an alphanumeric string.</p>"}))
    UpdateModelOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the model.</p>"}))
    UpdateModelOutput.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. Do not include \"\\*/\" characters in the description of any properties because such \"\\*/\" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>"}))
    UpdateModelOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The content-type for the model.</p>"}))
    UpdateModelOutput.type = Types::UpdateModelOutput
    UpdateModelRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelName', traits: {"smithy.api#documentation" => "<p>The name of the model to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateModelRequest.type = Types::UpdateModelRequest
    UpdateRequestValidatorOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of this RequestValidator.</p>"}))
    UpdateRequestValidatorOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of this RequestValidator</p>"}))
    UpdateRequestValidatorOutput.add_member(:validate_request_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestBody', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate a request body according to the configured Model schema.</p>"}))
    UpdateRequestValidatorOutput.add_member(:validate_request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'validateRequestParameters', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>"}))
    UpdateRequestValidatorOutput.type = Types::UpdateRequestValidatorOutput
    UpdateRequestValidatorRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRequestValidatorRequest.add_member(:request_validator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestValidatorId', traits: {"smithy.api#documentation" => "<p>The identifier of RequestValidator to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRequestValidatorRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateRequestValidatorRequest.type = Types::UpdateRequestValidatorRequest
    UpdateResourceOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The resource's identifier.</p>"}))
    UpdateResourceOutput.add_member(:parent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'parentId', traits: {"smithy.api#documentation" => "<p>The parent resource's identifier.</p>"}))
    UpdateResourceOutput.add_member(:path_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pathPart', traits: {"smithy.api#documentation" => "<p>The last path segment for this resource.</p>"}))
    UpdateResourceOutput.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The full path for this resource.</p>"}))
    UpdateResourceOutput.add_member(:resource_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethod, location_name: 'resourceMethods', traits: {"smithy.api#documentation" => "<p>Gets an API resource's method of a given HTTP verb.</p>"}))
    UpdateResourceOutput.type = Types::UpdateResourceOutput
    UpdateResourceRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Resource resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateResourceRequest.type = Types::UpdateResourceRequest
    UpdateRestApiOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>"}))
    UpdateRestApiOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The API's name.</p>"}))
    UpdateRestApiOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The API's description.</p>"}))
    UpdateRestApiOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the API was created.</p>"}))
    UpdateRestApiOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A version identifier for the API.</p>"}))
    UpdateRestApiOutput.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>"}))
    UpdateRestApiOutput.add_member(:binary_media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'binaryMediaTypes', traits: {"smithy.api#documentation" => "<p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>"}))
    UpdateRestApiOutput.add_member(:minimum_compression_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'minimumCompressionSize', traits: {"smithy.api#documentation" => "<p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>"}))
    UpdateRestApiOutput.add_member(:api_key_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeySourceType, location_name: 'apiKeySource', traits: {"smithy.api#documentation" => "<p>The source of the API key for metering requests according to a usage plan. Valid values\n      are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a\n      request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>\n      from a custom authorizer.</p>"}))
    UpdateRestApiOutput.add_member(:endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration, location_name: 'endpointConfiguration', traits: {"smithy.api#documentation" => "<p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>"}))
    UpdateRestApiOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>"}))
    UpdateRestApiOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    UpdateRestApiOutput.add_member(:disable_execute_api_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableExecuteApiEndpoint', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.\n      By default, clients can invoke your API with the default\n      <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a\n      custom domain name to invoke your API, disable the default endpoint.</p>"}))
    UpdateRestApiOutput.add_member(:root_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'rootResourceId', traits: {"smithy.api#documentation" => "<p>The API's root resource ID.</p>"}))
    UpdateRestApiOutput.type = Types::UpdateRestApiOutput
    UpdateRestApiRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRestApiRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateRestApiRequest.type = Types::UpdateRestApiRequest
    UpdateStageOutput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Deployment that the stage points to.</p>"}))
    UpdateStageOutput.add_member(:client_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientCertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of a client certificate for an API stage.</p>"}))
    UpdateStageOutput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"}))
    UpdateStageOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The stage's description.</p>"}))
    UpdateStageOutput.add_member(:cache_cluster_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'cacheClusterEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether a cache cluster is enabled for the stage. To activate a method-level cache, set <code>CachingEnabled</code> to <code>true</code> for a method. </p>"}))
    UpdateStageOutput.add_member(:cache_cluster_size, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterSize, location_name: 'cacheClusterSize', traits: {"smithy.api#documentation" => "<p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html\">Enabling API caching to enhance responsiveness</a>.</p>"}))
    UpdateStageOutput.add_member(:cache_cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterStatus, location_name: 'cacheClusterStatus', traits: {"smithy.api#documentation" => "<p>The status of the cache cluster for the stage, if enabled.</p>"}))
    UpdateStageOutput.add_member(:method_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMethodSettings, location_name: 'methodSettings', traits: {"smithy.api#documentation" => "<p>A map that defines the method settings for a Stage resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\\*/\\*</code> for overriding all methods in the stage.  </p>"}))
    UpdateStageOutput.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A map that defines the stage variables for a Stage resource. Variable names can\n          have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>"}))
    UpdateStageOutput.add_member(:documentation_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentationVersion', traits: {"smithy.api#documentation" => "<p>The version of the associated API documentation.</p>"}))
    UpdateStageOutput.add_member(:access_log_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: 'accessLogSettings', traits: {"smithy.api#documentation" => "<p>Settings for logging access in this stage.</p>"}))
    UpdateStageOutput.add_member(:canary_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: CanarySettings, location_name: 'canarySettings', traits: {"smithy.api#documentation" => "<p>Settings for the canary deployment in this stage.</p>"}))
    UpdateStageOutput.add_member(:tracing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'tracingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>"}))
    UpdateStageOutput.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'webAclArn', traits: {"smithy.api#documentation" => "<p>The ARN of the WebAcl associated with the Stage.</p>"}))
    UpdateStageOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    UpdateStageOutput.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the stage was created.</p>"}))
    UpdateStageOutput.add_member(:last_updated_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedDate', traits: {"smithy.api#documentation" => "<p>The timestamp when the stage last updated.</p>"}))
    UpdateStageOutput.type = Types::UpdateStageOutput
    UpdateStageRequest.add_member(:rest_api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'restApiId', traits: {"smithy.api#documentation" => "<p>The string identifier of the associated RestApi.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStageRequest.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the Stage resource to change information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStageRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateStageRequest.type = Types::UpdateStageRequest
    UpdateUsageOutput.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The plan Id associated with this usage data.</p>"}))
    UpdateUsageOutput.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The starting date of the usage data.</p>"}))
    UpdateUsageOutput.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The ending date of the usage data.</p>"}))
    UpdateUsageOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfKeyUsages, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, <code>{..., \"values\" : { \"{api_key}\" : [ [0, 100], [10, 90], [100, 10]]}</code>, where <code>{api_key}</code> stands for an API key value and the daily log entry is of the format <code>[used quota, remaining quota]</code>.</p>", "smithy.api#jsonName" => "values"}))
    UpdateUsageOutput.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The current pagination position in the paged result set.</p>", "smithy.api#httpQuery" => "position"}))
    UpdateUsageOutput.type = Types::UpdateUsageOutput
    UpdateUsagePlanOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of a UsagePlan resource.</p>"}))
    UpdateUsagePlanOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a usage plan.</p>"}))
    UpdateUsagePlanOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of a usage plan.</p>"}))
    UpdateUsagePlanOutput.add_member(:api_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfApiStage, location_name: 'apiStages', traits: {"smithy.api#documentation" => "<p>The associated API stages of a usage plan.</p>"}))
    UpdateUsagePlanOutput.add_member(:throttle, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleSettings, location_name: 'throttle', traits: {"smithy.api#documentation" => "<p>A map containing method level throttling information for API stage in a usage plan.</p>"}))
    UpdateUsagePlanOutput.add_member(:quota, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaSettings, location_name: 'quota', traits: {"smithy.api#documentation" => "<p>The target maximum number of permitted requests per a given unit time interval.</p>"}))
    UpdateUsagePlanOutput.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'productCode', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Marketplace product identifier to associate with the usage plan as a SaaS product on the Amazon Web Services Marketplace.</p>"}))
    UpdateUsagePlanOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    UpdateUsagePlanOutput.type = Types::UpdateUsagePlanOutput
    UpdateUsagePlanRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The Id of the to-be-updated usage plan.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUsagePlanRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateUsagePlanRequest.type = Types::UpdateUsagePlanRequest
    UpdateUsageRequest.add_member(:usage_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usagePlanId', traits: {"smithy.api#documentation" => "<p>The Id of the usage plan associated with the usage data.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUsageRequest.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyId', traits: {"smithy.api#documentation" => "<p>The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUsageRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateUsageRequest.type = Types::UpdateUsageRequest
    UpdateVpcLinkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>"}))
    UpdateVpcLinkOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name used to label and identify the VPC link.</p>"}))
    UpdateVpcLinkOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the VPC link.</p>"}))
    UpdateVpcLinkOutput.add_member(:target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'targetArns', traits: {"smithy.api#documentation" => "<p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>"}))
    UpdateVpcLinkOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcLinkStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>.  </p>"}))
    UpdateVpcLinkOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A description about the VPC link status.</p>"}))
    UpdateVpcLinkOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    UpdateVpcLinkOutput.type = Types::UpdateVpcLinkOutput
    UpdateVpcLinkRequest.add_member(:vpc_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vpcLinkId', traits: {"smithy.api#documentation" => "<p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVpcLinkRequest.add_member(:patch_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfPatchOperation, location_name: 'patchOperations', traits: {"smithy.api#documentation" => "<p>For more information about supported patch operations, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html\">Patch Operations</a>.</p>"}))
    UpdateVpcLinkRequest.type = Types::UpdateVpcLinkRequest
    UsagePlan.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of a UsagePlan resource.</p>"}))
    UsagePlan.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a usage plan.</p>"}))
    UsagePlan.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of a usage plan.</p>"}))
    UsagePlan.add_member(:api_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfApiStage, location_name: 'apiStages', traits: {"smithy.api#documentation" => "<p>The associated API stages of a usage plan.</p>"}))
    UsagePlan.add_member(:throttle, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleSettings, location_name: 'throttle', traits: {"smithy.api#documentation" => "<p>A map containing method level throttling information for API stage in a usage plan.</p>"}))
    UsagePlan.add_member(:quota, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaSettings, location_name: 'quota', traits: {"smithy.api#documentation" => "<p>The target maximum number of permitted requests per a given unit time interval.</p>"}))
    UsagePlan.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'productCode', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Marketplace product identifier to associate with the usage plan as a SaaS product on the Amazon Web Services Marketplace.</p>"}))
    UsagePlan.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    UsagePlan.type = Types::UsagePlan
    UsagePlanKey.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The Id of a usage plan key.</p>"}))
    UsagePlanKey.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>"}))
    UsagePlanKey.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of a usage plan key.</p>"}))
    UsagePlanKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a usage plan key.</p>"}))
    UsagePlanKey.type = Types::UsagePlanKey
    VpcLink.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>"}))
    VpcLink.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name used to label and identify the VPC link.</p>"}))
    VpcLink.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the VPC link.</p>"}))
    VpcLink.add_member(:target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'targetArns', traits: {"smithy.api#documentation" => "<p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>"}))
    VpcLink.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcLinkStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>.  </p>"}))
    VpcLink.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A description about the VPC link status.</p>"}))
    VpcLink.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The collection of tags. Each tag element is associated with a given resource.</p>"}))
    VpcLink.type = Types::VpcLink
    VpcLinkStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VpcLinkStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    VpcLinkStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    VpcLinkStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))

    BackplaneControlService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.apigateway#BackplaneControlService"
      service.name = "BackplaneControlService"
      service.version = "2015-07-09"
      service.traits = {"aws.api#service" => {"sdkId" => "API Gateway", "arnNamespace" => "apigateway", "cloudFormationName" => "ApiGateway", "cloudTrailEventSource" => "apigateway.amazonaws.com", "docId" => "apigateway-2015-07-09", "endpointPrefix" => "apigateway"}, "aws.auth#sigv4" => {"name" => "apigateway"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon API Gateway"}
      service.add_operation(:create_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateApiKey"
        operation.name = "CreateApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apikeys", "code" => 201}}
      end)
      service.add_operation(:create_authorizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateAuthorizer"
        operation.name = "CreateAuthorizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAuthorizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAuthorizerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/authorizers", "code" => 201}}
      end)
      service.add_operation(:create_base_path_mapping, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateBasePathMapping"
        operation.name = "CreateBasePathMapping"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBasePathMappingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBasePathMappingOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domainnames/{domainName}/basepathmappings", "code" => 201}}
      end)
      service.add_operation(:create_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/deployments", "code" => 201}}
      end)
      service.add_operation(:create_documentation_part, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDocumentationPart"
        operation.name = "CreateDocumentationPart"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDocumentationPartRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDocumentationPartOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/documentation/parts", "code" => 201}}
      end)
      service.add_operation(:create_documentation_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDocumentationVersion"
        operation.name = "CreateDocumentationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDocumentationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDocumentationVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/documentation/versions", "code" => 201}}
      end)
      service.add_operation(:create_domain_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDomainName"
        operation.name = "CreateDomainName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainNameOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domainnames", "code" => 201}}
      end)
      service.add_operation(:create_domain_name_access_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDomainNameAccessAssociation"
        operation.name = "CreateDomainNameAccessAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainNameAccessAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainNameAccessAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domainnameaccessassociations", "code" => 201}}
      end)
      service.add_operation(:create_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateModel"
        operation.name = "CreateModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/models", "code" => 201}}
      end)
      service.add_operation(:create_request_validator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateRequestValidator"
        operation.name = "CreateRequestValidator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRequestValidatorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRequestValidatorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/requestvalidators", "code" => 201}}
      end)
      service.add_operation(:create_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateResource"
        operation.name = "CreateResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/resources/{parentId}", "code" => 201}}
      end)
      service.add_operation(:create_rest_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateRestApi"
        operation.name = "CreateRestApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRestApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRestApiOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis", "code" => 201}}
      end)
      service.add_operation(:create_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateStage"
        operation.name = "CreateStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/stages", "code" => 201}}
      end)
      service.add_operation(:create_usage_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateUsagePlan"
        operation.name = "CreateUsagePlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsagePlanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsagePlanOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/usageplans", "code" => 201}}
      end)
      service.add_operation(:create_usage_plan_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateUsagePlanKey"
        operation.name = "CreateUsagePlanKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsagePlanKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsagePlanKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/usageplans/{usagePlanId}/keys", "code" => 201}}
      end)
      service.add_operation(:create_vpc_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateVpcLink"
        operation.name = "CreateVpcLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/vpclinks", "code" => 202}}
      end)
      service.add_operation(:delete_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteApiKey"
        operation.name = "DeleteApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apikeys/{apiKey}", "code" => 202}}
      end)
      service.add_operation(:delete_authorizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteAuthorizer"
        operation.name = "DeleteAuthorizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAuthorizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/authorizers/{authorizerId}", "code" => 202}}
      end)
      service.add_operation(:delete_base_path_mapping, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteBasePathMapping"
        operation.name = "DeleteBasePathMapping"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBasePathMappingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domainnames/{domainName}/basepathmappings/{basePath}", "code" => 202}}
      end)
      service.add_operation(:delete_client_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteClientCertificate"
        operation.name = "DeleteClientCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClientCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clientcertificates/{clientCertificateId}", "code" => 202}}
      end)
      service.add_operation(:delete_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/deployments/{deploymentId}", "code" => 202}}
      end)
      service.add_operation(:delete_documentation_part, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDocumentationPart"
        operation.name = "DeleteDocumentationPart"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDocumentationPartRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/documentation/parts/{documentationPartId}", "code" => 202}}
      end)
      service.add_operation(:delete_documentation_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDocumentationVersion"
        operation.name = "DeleteDocumentationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDocumentationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/documentation/versions/{documentationVersion}", "code" => 202}}
      end)
      service.add_operation(:delete_domain_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDomainName"
        operation.name = "DeleteDomainName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domainnames/{domainName}", "code" => 202}}
      end)
      service.add_operation(:delete_domain_name_access_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDomainNameAccessAssociation"
        operation.name = "DeleteDomainNameAccessAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainNameAccessAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domainnameaccessassociations/{domainNameAccessAssociationArn}", "code" => 202}}
      end)
      service.add_operation(:delete_gateway_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteGatewayResponse"
        operation.name = "DeleteGatewayResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/gatewayresponses/{responseType}", "code" => 202}}
      end)
      service.add_operation(:delete_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration", "code" => 204}}
      end)
      service.add_operation(:delete_integration_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteIntegrationResponse"
        operation.name = "DeleteIntegrationResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}", "code" => 204}}
      end)
      service.add_operation(:delete_method, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteMethod"
        operation.name = "DeleteMethod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMethodRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 204}}
      end)
      service.add_operation(:delete_method_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteMethodResponse"
        operation.name = "DeleteMethodResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMethodResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}", "code" => 204}}
      end)
      service.add_operation(:delete_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteModel"
        operation.name = "DeleteModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/models/{modelName}", "code" => 202}}
      end)
      service.add_operation(:delete_request_validator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteRequestValidator"
        operation.name = "DeleteRequestValidator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRequestValidatorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/requestvalidators/{requestValidatorId}", "code" => 202}}
      end)
      service.add_operation(:delete_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteResource"
        operation.name = "DeleteResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}", "code" => 202}}
      end)
      service.add_operation(:delete_rest_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteRestApi"
        operation.name = "DeleteRestApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRestApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}", "code" => 202}}
      end)
      service.add_operation(:delete_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteStage"
        operation.name = "DeleteStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/stages/{stageName}", "code" => 202}}
      end)
      service.add_operation(:delete_usage_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteUsagePlan"
        operation.name = "DeleteUsagePlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUsagePlanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/usageplans/{usagePlanId}", "code" => 202}}
      end)
      service.add_operation(:delete_usage_plan_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteUsagePlanKey"
        operation.name = "DeleteUsagePlanKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUsagePlanKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/usageplans/{usagePlanId}/keys/{keyId}", "code" => 202}}
      end)
      service.add_operation(:delete_vpc_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteVpcLink"
        operation.name = "DeleteVpcLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/vpclinks/{vpcLinkId}", "code" => 202}}
      end)
      service.add_operation(:flush_stage_authorizers_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#FlushStageAuthorizersCache"
        operation.name = "FlushStageAuthorizersCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: FlushStageAuthorizersCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/stages/{stageName}/cache/authorizers", "code" => 202}}
      end)
      service.add_operation(:flush_stage_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#FlushStageCache"
        operation.name = "FlushStageCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: FlushStageCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/stages/{stageName}/cache/data", "code" => 202}}
      end)
      service.add_operation(:generate_client_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GenerateClientCertificate"
        operation.name = "GenerateClientCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateClientCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateClientCertificateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clientcertificates", "code" => 201}}
      end)
      service.add_operation(:get_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetAccount"
        operation.name = "GetAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account", "code" => 200}}
      end)
      service.add_operation(:get_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetApiKey"
        operation.name = "GetApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apikeys/{apiKey}", "code" => 200}}
      end)
      service.add_operation(:get_api_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetApiKeys"
        operation.name = "GetApiKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiKeysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiKeysOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apikeys", "code" => 200}}
        operation[:paginator] = Paginators::GetApiKeys.new
      end)
      service.add_operation(:get_authorizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetAuthorizer"
        operation.name = "GetAuthorizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/authorizers/{authorizerId}", "code" => 200}}
      end)
      service.add_operation(:get_authorizers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetAuthorizers"
        operation.name = "GetAuthorizers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/authorizers", "code" => 200}}
      end)
      service.add_operation(:get_base_path_mapping, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetBasePathMapping"
        operation.name = "GetBasePathMapping"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBasePathMappingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBasePathMappingOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnames/{domainName}/basepathmappings/{basePath}", "code" => 200}}
      end)
      service.add_operation(:get_base_path_mappings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetBasePathMappings"
        operation.name = "GetBasePathMappings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBasePathMappingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBasePathMappingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnames/{domainName}/basepathmappings", "code" => 200}}
        operation[:paginator] = Paginators::GetBasePathMappings.new
      end)
      service.add_operation(:get_client_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetClientCertificate"
        operation.name = "GetClientCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClientCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClientCertificateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clientcertificates/{clientCertificateId}", "code" => 200}}
      end)
      service.add_operation(:get_client_certificates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetClientCertificates"
        operation.name = "GetClientCertificates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClientCertificatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClientCertificatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clientcertificates", "code" => 200}}
        operation[:paginator] = Paginators::GetClientCertificates.new
      end)
      service.add_operation(:get_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/deployments/{deploymentId}", "code" => 200}}
      end)
      service.add_operation(:get_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDeployments"
        operation.name = "GetDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/deployments", "code" => 200}}
        operation[:paginator] = Paginators::GetDeployments.new
      end)
      service.add_operation(:get_documentation_part, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDocumentationPart"
        operation.name = "GetDocumentationPart"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentationPartRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentationPartOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/documentation/parts/{documentationPartId}", "code" => 200}}
      end)
      service.add_operation(:get_documentation_parts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDocumentationParts"
        operation.name = "GetDocumentationParts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentationPartsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentationPartsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/documentation/parts", "code" => 200}}
      end)
      service.add_operation(:get_documentation_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDocumentationVersion"
        operation.name = "GetDocumentationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentationVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/documentation/versions/{documentationVersion}", "code" => 200}}
      end)
      service.add_operation(:get_documentation_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDocumentationVersions"
        operation.name = "GetDocumentationVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentationVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentationVersionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/documentation/versions", "code" => 200}}
      end)
      service.add_operation(:get_domain_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDomainName"
        operation.name = "GetDomainName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNameOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_name_access_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDomainNameAccessAssociations"
        operation.name = "GetDomainNameAccessAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNameAccessAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNameAccessAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnameaccessassociations", "code" => 200}}
      end)
      service.add_operation(:get_domain_names, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDomainNames"
        operation.name = "GetDomainNames"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNamesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainNamesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnames", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetDomainNamesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::GetDomainNames.new
      end)
      service.add_operation(:get_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetExport"
        operation.name = "GetExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/stages/{stageName}/exports/{exportType}", "code" => 200}}
      end)
      service.add_operation(:get_gateway_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetGatewayResponse"
        operation.name = "GetGatewayResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/gatewayresponses/{responseType}", "code" => 200}}
      end)
      service.add_operation(:get_gateway_responses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetGatewayResponses"
        operation.name = "GetGatewayResponses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayResponsesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayResponsesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/gatewayresponses", "code" => 200}}
      end)
      service.add_operation(:get_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetIntegration"
        operation.name = "GetIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntegrationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration", "code" => 200}}
      end)
      service.add_operation(:get_integration_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetIntegrationResponse"
        operation.name = "GetIntegrationResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntegrationResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntegrationResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}", "code" => 200}}
      end)
      service.add_operation(:get_method, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetMethod"
        operation.name = "GetMethod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMethodRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMethodOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 200}}
      end)
      service.add_operation(:get_method_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetMethodResponse"
        operation.name = "GetMethodResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMethodResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMethodResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}", "code" => 200}}
      end)
      service.add_operation(:get_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetModel"
        operation.name = "GetModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/models/{modelName}", "code" => 200}}
      end)
      service.add_operation(:get_model_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetModelTemplate"
        operation.name = "GetModelTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/models/{modelName}/default_template", "code" => 200}}
      end)
      service.add_operation(:get_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetModels"
        operation.name = "GetModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/models", "code" => 200}}
        operation[:paginator] = Paginators::GetModels.new
      end)
      service.add_operation(:get_request_validator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetRequestValidator"
        operation.name = "GetRequestValidator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRequestValidatorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRequestValidatorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/requestvalidators/{requestValidatorId}", "code" => 200}}
      end)
      service.add_operation(:get_request_validators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetRequestValidators"
        operation.name = "GetRequestValidators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRequestValidatorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRequestValidatorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/requestvalidators", "code" => 200}}
      end)
      service.add_operation(:get_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetResource"
        operation.name = "GetResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}", "code" => 200}}
      end)
      service.add_operation(:get_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetResources"
        operation.name = "GetResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources", "code" => 200}}
        operation[:paginator] = Paginators::GetResources.new
      end)
      service.add_operation(:get_rest_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetRestApi"
        operation.name = "GetRestApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestApiOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}", "code" => 200}}
      end)
      service.add_operation(:get_rest_apis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetRestApis"
        operation.name = "GetRestApis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestApisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRestApisOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis", "code" => 200}}
        operation[:paginator] = Paginators::GetRestApis.new
      end)
      service.add_operation(:get_sdk, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetSdk"
        operation.name = "GetSdk"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSdkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SdkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/stages/{stageName}/sdks/{sdkType}", "code" => 200}}
      end)
      service.add_operation(:get_sdk_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetSdkType"
        operation.name = "GetSdkType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSdkTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSdkTypeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdktypes/{id}", "code" => 200}}
      end)
      service.add_operation(:get_sdk_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetSdkTypes"
        operation.name = "GetSdkTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSdkTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSdkTypesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdktypes", "code" => 200}}
      end)
      service.add_operation(:get_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetStage"
        operation.name = "GetStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/stages/{stageName}", "code" => 200}}
      end)
      service.add_operation(:get_stages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetStages"
        operation.name = "GetStages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStagesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/stages", "code" => 200}}
      end)
      service.add_operation(:get_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetTags"
        operation.name = "GetTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:get_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsage"
        operation.name = "GetUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans/{usagePlanId}/usage", "code" => 200}}
        operation[:paginator] = Paginators::GetUsage.new
      end)
      service.add_operation(:get_usage_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsagePlan"
        operation.name = "GetUsagePlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsagePlanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsagePlanOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans/{usagePlanId}", "code" => 200}}
      end)
      service.add_operation(:get_usage_plan_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsagePlanKey"
        operation.name = "GetUsagePlanKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsagePlanKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsagePlanKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans/{usagePlanId}/keys/{keyId}", "code" => 200}}
      end)
      service.add_operation(:get_usage_plan_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsagePlanKeys"
        operation.name = "GetUsagePlanKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsagePlanKeysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsagePlanKeysOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans/{usagePlanId}/keys", "code" => 200}}
        operation[:paginator] = Paginators::GetUsagePlanKeys.new
      end)
      service.add_operation(:get_usage_plans, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsagePlans"
        operation.name = "GetUsagePlans"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsagePlansRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsagePlansOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans", "code" => 200}}
        operation[:paginator] = Paginators::GetUsagePlans.new
      end)
      service.add_operation(:get_vpc_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetVpcLink"
        operation.name = "GetVpcLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vpclinks/{vpcLinkId}", "code" => 200}}
      end)
      service.add_operation(:get_vpc_links, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetVpcLinks"
        operation.name = "GetVpcLinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcLinksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcLinksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vpclinks", "code" => 200}}
        operation[:paginator] = Paginators::GetVpcLinks.new
      end)
      service.add_operation(:import_api_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#ImportApiKeys"
        operation.name = "ImportApiKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportApiKeysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportApiKeysOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apikeys?mode=import", "code" => 201}}
      end)
      service.add_operation(:import_documentation_parts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#ImportDocumentationParts"
        operation.name = "ImportDocumentationParts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDocumentationPartsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDocumentationPartsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/documentation/parts", "code" => 200}}
      end)
      service.add_operation(:import_rest_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#ImportRestApi"
        operation.name = "ImportRestApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportRestApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportRestApiOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis?mode=import", "code" => 201}}
      end)
      service.add_operation(:put_gateway_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutGatewayResponse"
        operation.name = "PutGatewayResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutGatewayResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutGatewayResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/gatewayresponses/{responseType}", "code" => 201}}
      end)
      service.add_operation(:put_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutIntegration"
        operation.name = "PutIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntegrationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration", "code" => 201}}
      end)
      service.add_operation(:put_integration_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutIntegrationResponse"
        operation.name = "PutIntegrationResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntegrationResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntegrationResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}", "code" => 201}}
      end)
      service.add_operation(:put_method, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutMethod"
        operation.name = "PutMethod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMethodRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMethodOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 201}}
      end)
      service.add_operation(:put_method_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutMethodResponse"
        operation.name = "PutMethodResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMethodResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMethodResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}", "code" => 201}}
      end)
      service.add_operation(:put_rest_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutRestApi"
        operation.name = "PutRestApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRestApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRestApiOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}", "code" => 200}}
      end)
      service.add_operation(:reject_domain_name_access_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#RejectDomainNameAccessAssociation"
        operation.name = "RejectDomainNameAccessAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectDomainNameAccessAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rejectdomainnameaccessassociations", "code" => 202}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:test_invoke_authorizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#TestInvokeAuthorizer"
        operation.name = "TestInvokeAuthorizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestInvokeAuthorizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestInvokeAuthorizerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/authorizers/{authorizerId}", "code" => 200}}
      end)
      service.add_operation(:test_invoke_method, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#TestInvokeMethod"
        operation.name = "TestInvokeMethod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestInvokeMethodRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestInvokeMethodResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateAccount"
        operation.name = "UpdateAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/account", "code" => 200}}
      end)
      service.add_operation(:update_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateApiKey"
        operation.name = "UpdateApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/apikeys/{apiKey}", "code" => 200}}
      end)
      service.add_operation(:update_authorizer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateAuthorizer"
        operation.name = "UpdateAuthorizer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAuthorizerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAuthorizerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/authorizers/{authorizerId}", "code" => 200}}
      end)
      service.add_operation(:update_base_path_mapping, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateBasePathMapping"
        operation.name = "UpdateBasePathMapping"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBasePathMappingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBasePathMappingOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/domainnames/{domainName}/basepathmappings/{basePath}", "code" => 200}}
      end)
      service.add_operation(:update_client_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateClientCertificate"
        operation.name = "UpdateClientCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClientCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClientCertificateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/clientcertificates/{clientCertificateId}", "code" => 200}}
      end)
      service.add_operation(:update_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateDeployment"
        operation.name = "UpdateDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/deployments/{deploymentId}", "code" => 200}}
      end)
      service.add_operation(:update_documentation_part, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateDocumentationPart"
        operation.name = "UpdateDocumentationPart"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDocumentationPartRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDocumentationPartOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/documentation/parts/{documentationPartId}", "code" => 200}}
      end)
      service.add_operation(:update_documentation_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateDocumentationVersion"
        operation.name = "UpdateDocumentationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDocumentationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDocumentationVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/documentation/versions/{documentationVersion}", "code" => 200}}
      end)
      service.add_operation(:update_domain_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateDomainName"
        operation.name = "UpdateDomainName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainNameOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:update_gateway_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateGatewayResponse"
        operation.name = "UpdateGatewayResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/gatewayresponses/{responseType}", "code" => 200}}
      end)
      service.add_operation(:update_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateIntegration"
        operation.name = "UpdateIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIntegrationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration", "code" => 200}}
      end)
      service.add_operation(:update_integration_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateIntegrationResponse"
        operation.name = "UpdateIntegrationResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIntegrationResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIntegrationResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}", "code" => 200}}
      end)
      service.add_operation(:update_method, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateMethod"
        operation.name = "UpdateMethod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMethodRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMethodOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 200}}
      end)
      service.add_operation(:update_method_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateMethodResponse"
        operation.name = "UpdateMethodResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMethodResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMethodResponseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}", "code" => 201}}
      end)
      service.add_operation(:update_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateModel"
        operation.name = "UpdateModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/models/{modelName}", "code" => 200}}
      end)
      service.add_operation(:update_request_validator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateRequestValidator"
        operation.name = "UpdateRequestValidator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRequestValidatorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRequestValidatorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/requestvalidators/{requestValidatorId}", "code" => 200}}
      end)
      service.add_operation(:update_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateResource"
        operation.name = "UpdateResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}", "code" => 200}}
      end)
      service.add_operation(:update_rest_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateRestApi"
        operation.name = "UpdateRestApi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRestApiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRestApiOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}", "code" => 200}}
      end)
      service.add_operation(:update_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateStage"
        operation.name = "UpdateStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/stages/{stageName}", "code" => 200}}
      end)
      service.add_operation(:update_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateUsage"
        operation.name = "UpdateUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUsageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUsageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/usageplans/{usagePlanId}/keys/{keyId}/usage", "code" => 200}}
      end)
      service.add_operation(:update_usage_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateUsagePlan"
        operation.name = "UpdateUsagePlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUsagePlanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUsagePlanOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/usageplans/{usagePlanId}", "code" => 200}}
      end)
      service.add_operation(:update_vpc_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateVpcLink"
        operation.name = "UpdateVpcLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/vpclinks/{vpcLinkId}", "code" => 200}}
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
