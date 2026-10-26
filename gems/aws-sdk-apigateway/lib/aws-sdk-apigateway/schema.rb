# frozen_string_literal: true

# This is generated code!

module Aws::APIGateway
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessAssociationSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#AccessAssociationSourceType", name: "AccessAssociationSourceType")
    AccessLogSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#AccessLogSettings", name: "AccessLogSettings")
    ApiKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ApiKey", name: "ApiKey")
    ApiKeySourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#ApiKeySourceType", name: "ApiKeySourceType")
    ApiKeysFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#ApiKeysFormat", name: "ApiKeysFormat")
    ApiStage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ApiStage", name: "ApiStage")
    ApiStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#ApiStatus", name: "ApiStatus")
    Authorizer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#Authorizer", name: "Authorizer")
    AuthorizerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#AuthorizerType", name: "AuthorizerType")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BasePathMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#BasePathMapping", name: "BasePathMapping")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.apigateway#Blob", name: "Blob")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.apigateway#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CacheClusterSize = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#CacheClusterSize", name: "CacheClusterSize")
    CacheClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#CacheClusterStatus", name: "CacheClusterStatus")
    CanarySettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CanarySettings", name: "CanarySettings")
    ClientCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ClientCertificate", name: "ClientCertificate")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#ConnectionType", name: "ConnectionType")
    ContentHandlingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#ContentHandlingStrategy", name: "ContentHandlingStrategy")
    CreateApiKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateApiKeyOutput", name: "CreateApiKeyOutput")
    CreateApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateApiKeyRequest", name: "CreateApiKeyRequest")
    CreateAuthorizerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateAuthorizerOutput", name: "CreateAuthorizerOutput")
    CreateAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateAuthorizerRequest", name: "CreateAuthorizerRequest")
    CreateBasePathMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateBasePathMappingOutput", name: "CreateBasePathMappingOutput")
    CreateBasePathMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateBasePathMappingRequest", name: "CreateBasePathMappingRequest")
    CreateDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDeploymentOutput", name: "CreateDeploymentOutput")
    CreateDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDeploymentRequest", name: "CreateDeploymentRequest")
    CreateDocumentationPartOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDocumentationPartOutput", name: "CreateDocumentationPartOutput")
    CreateDocumentationPartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDocumentationPartRequest", name: "CreateDocumentationPartRequest")
    CreateDocumentationVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDocumentationVersionOutput", name: "CreateDocumentationVersionOutput")
    CreateDocumentationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDocumentationVersionRequest", name: "CreateDocumentationVersionRequest")
    CreateDomainNameAccessAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDomainNameAccessAssociationOutput", name: "CreateDomainNameAccessAssociationOutput")
    CreateDomainNameAccessAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDomainNameAccessAssociationRequest", name: "CreateDomainNameAccessAssociationRequest")
    CreateDomainNameOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDomainNameOutput", name: "CreateDomainNameOutput")
    CreateDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateDomainNameRequest", name: "CreateDomainNameRequest")
    CreateModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateModelOutput", name: "CreateModelOutput")
    CreateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateModelRequest", name: "CreateModelRequest")
    CreateRequestValidatorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateRequestValidatorOutput", name: "CreateRequestValidatorOutput")
    CreateRequestValidatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateRequestValidatorRequest", name: "CreateRequestValidatorRequest")
    CreateResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateResourceOutput", name: "CreateResourceOutput")
    CreateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateResourceRequest", name: "CreateResourceRequest")
    CreateRestApiOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateRestApiOutput", name: "CreateRestApiOutput")
    CreateRestApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateRestApiRequest", name: "CreateRestApiRequest")
    CreateStageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateStageOutput", name: "CreateStageOutput")
    CreateStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateStageRequest", name: "CreateStageRequest")
    CreateUsagePlanKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateUsagePlanKeyOutput", name: "CreateUsagePlanKeyOutput")
    CreateUsagePlanKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateUsagePlanKeyRequest", name: "CreateUsagePlanKeyRequest")
    CreateUsagePlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateUsagePlanOutput", name: "CreateUsagePlanOutput")
    CreateUsagePlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateUsagePlanRequest", name: "CreateUsagePlanRequest")
    CreateVpcLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateVpcLinkOutput", name: "CreateVpcLinkOutput")
    CreateVpcLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#CreateVpcLinkRequest", name: "CreateVpcLinkRequest")
    DeleteApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteApiKeyRequest", name: "DeleteApiKeyRequest")
    DeleteAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteAuthorizerRequest", name: "DeleteAuthorizerRequest")
    DeleteBasePathMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteBasePathMappingRequest", name: "DeleteBasePathMappingRequest")
    DeleteClientCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteClientCertificateRequest", name: "DeleteClientCertificateRequest")
    DeleteDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteDeploymentRequest", name: "DeleteDeploymentRequest")
    DeleteDocumentationPartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteDocumentationPartRequest", name: "DeleteDocumentationPartRequest")
    DeleteDocumentationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteDocumentationVersionRequest", name: "DeleteDocumentationVersionRequest")
    DeleteDomainNameAccessAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteDomainNameAccessAssociationRequest", name: "DeleteDomainNameAccessAssociationRequest")
    DeleteDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteDomainNameRequest", name: "DeleteDomainNameRequest")
    DeleteGatewayResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteGatewayResponseRequest", name: "DeleteGatewayResponseRequest")
    DeleteIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteIntegrationRequest", name: "DeleteIntegrationRequest")
    DeleteIntegrationResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteIntegrationResponseRequest", name: "DeleteIntegrationResponseRequest")
    DeleteMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteMethodRequest", name: "DeleteMethodRequest")
    DeleteMethodResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteMethodResponseRequest", name: "DeleteMethodResponseRequest")
    DeleteModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteModelRequest", name: "DeleteModelRequest")
    DeleteRequestValidatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteRequestValidatorRequest", name: "DeleteRequestValidatorRequest")
    DeleteResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteResourceRequest", name: "DeleteResourceRequest")
    DeleteRestApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteRestApiRequest", name: "DeleteRestApiRequest")
    DeleteStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteStageRequest", name: "DeleteStageRequest")
    DeleteUsagePlanKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteUsagePlanKeyRequest", name: "DeleteUsagePlanKeyRequest")
    DeleteUsagePlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteUsagePlanRequest", name: "DeleteUsagePlanRequest")
    DeleteVpcLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeleteVpcLinkRequest", name: "DeleteVpcLinkRequest")
    Deployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#Deployment", name: "Deployment")
    DeploymentCanarySettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DeploymentCanarySettings", name: "DeploymentCanarySettings")
    DocumentationPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DocumentationPart", name: "DocumentationPart")
    DocumentationPartLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DocumentationPartLocation", name: "DocumentationPartLocation")
    DocumentationPartLocationStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigateway#DocumentationPartLocationStatusCode", name: "DocumentationPartLocationStatusCode", traits: {"smithy.api#pattern" => "^([1-5]\\d\\d|\\*|\\s*)$"})
    DocumentationPartType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#DocumentationPartType", name: "DocumentationPartType")
    DocumentationVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DocumentationVersion", name: "DocumentationVersion")
    DomainName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DomainName", name: "DomainName")
    DomainNameAccessAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#DomainNameAccessAssociation", name: "DomainNameAccessAssociation")
    DomainNameStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#DomainNameStatus", name: "DomainNameStatus")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.apigateway#Double", name: "Double", traits: {"smithy.api#default" => 0})
    EndpointAccessMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#EndpointAccessMode", name: "EndpointAccessMode")
    EndpointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#EndpointConfiguration", name: "EndpointConfiguration")
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#EndpointType", name: "EndpointType")
    ExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ExportResponse", name: "ExportResponse")
    FlushStageAuthorizersCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#FlushStageAuthorizersCacheRequest", name: "FlushStageAuthorizersCacheRequest")
    FlushStageCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#FlushStageCacheRequest", name: "FlushStageCacheRequest")
    GatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GatewayResponse", name: "GatewayResponse")
    GatewayResponseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#GatewayResponseType", name: "GatewayResponseType")
    GenerateClientCertificateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GenerateClientCertificateOutput", name: "GenerateClientCertificateOutput")
    GenerateClientCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GenerateClientCertificateRequest", name: "GenerateClientCertificateRequest")
    GetAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetAccountOutput", name: "GetAccountOutput")
    GetAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetAccountRequest", name: "GetAccountRequest")
    GetApiKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetApiKeyOutput", name: "GetApiKeyOutput")
    GetApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetApiKeyRequest", name: "GetApiKeyRequest")
    GetApiKeysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetApiKeysOutput", name: "GetApiKeysOutput")
    GetApiKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetApiKeysRequest", name: "GetApiKeysRequest")
    GetAuthorizerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetAuthorizerOutput", name: "GetAuthorizerOutput")
    GetAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetAuthorizerRequest", name: "GetAuthorizerRequest")
    GetAuthorizersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetAuthorizersOutput", name: "GetAuthorizersOutput")
    GetAuthorizersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetAuthorizersRequest", name: "GetAuthorizersRequest")
    GetBasePathMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetBasePathMappingOutput", name: "GetBasePathMappingOutput")
    GetBasePathMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetBasePathMappingRequest", name: "GetBasePathMappingRequest")
    GetBasePathMappingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetBasePathMappingsOutput", name: "GetBasePathMappingsOutput")
    GetBasePathMappingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetBasePathMappingsRequest", name: "GetBasePathMappingsRequest")
    GetClientCertificateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetClientCertificateOutput", name: "GetClientCertificateOutput")
    GetClientCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetClientCertificateRequest", name: "GetClientCertificateRequest")
    GetClientCertificatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetClientCertificatesOutput", name: "GetClientCertificatesOutput")
    GetClientCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetClientCertificatesRequest", name: "GetClientCertificatesRequest")
    GetDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDeploymentOutput", name: "GetDeploymentOutput")
    GetDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDeploymentRequest", name: "GetDeploymentRequest")
    GetDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDeploymentsOutput", name: "GetDeploymentsOutput")
    GetDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDeploymentsRequest", name: "GetDeploymentsRequest")
    GetDocumentationPartOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDocumentationPartOutput", name: "GetDocumentationPartOutput")
    GetDocumentationPartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDocumentationPartRequest", name: "GetDocumentationPartRequest")
    GetDocumentationPartsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDocumentationPartsOutput", name: "GetDocumentationPartsOutput")
    GetDocumentationPartsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDocumentationPartsRequest", name: "GetDocumentationPartsRequest")
    GetDocumentationVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDocumentationVersionOutput", name: "GetDocumentationVersionOutput")
    GetDocumentationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDocumentationVersionRequest", name: "GetDocumentationVersionRequest")
    GetDocumentationVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDocumentationVersionsOutput", name: "GetDocumentationVersionsOutput")
    GetDocumentationVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDocumentationVersionsRequest", name: "GetDocumentationVersionsRequest")
    GetDomainNameAccessAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDomainNameAccessAssociationsOutput", name: "GetDomainNameAccessAssociationsOutput")
    GetDomainNameAccessAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDomainNameAccessAssociationsRequest", name: "GetDomainNameAccessAssociationsRequest")
    GetDomainNameOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDomainNameOutput", name: "GetDomainNameOutput")
    GetDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDomainNameRequest", name: "GetDomainNameRequest")
    GetDomainNamesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDomainNamesOutput", name: "GetDomainNamesOutput")
    GetDomainNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetDomainNamesRequest", name: "GetDomainNamesRequest")
    GetExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetExportRequest", name: "GetExportRequest")
    GetGatewayResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetGatewayResponseOutput", name: "GetGatewayResponseOutput")
    GetGatewayResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetGatewayResponseRequest", name: "GetGatewayResponseRequest")
    GetGatewayResponsesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetGatewayResponsesOutput", name: "GetGatewayResponsesOutput")
    GetGatewayResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetGatewayResponsesRequest", name: "GetGatewayResponsesRequest")
    GetIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetIntegrationOutput", name: "GetIntegrationOutput")
    GetIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetIntegrationRequest", name: "GetIntegrationRequest")
    GetIntegrationResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetIntegrationResponseOutput", name: "GetIntegrationResponseOutput")
    GetIntegrationResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetIntegrationResponseRequest", name: "GetIntegrationResponseRequest")
    GetMethodOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetMethodOutput", name: "GetMethodOutput")
    GetMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetMethodRequest", name: "GetMethodRequest")
    GetMethodResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetMethodResponseOutput", name: "GetMethodResponseOutput")
    GetMethodResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetMethodResponseRequest", name: "GetMethodResponseRequest")
    GetModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetModelOutput", name: "GetModelOutput")
    GetModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetModelRequest", name: "GetModelRequest")
    GetModelTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetModelTemplateOutput", name: "GetModelTemplateOutput")
    GetModelTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetModelTemplateRequest", name: "GetModelTemplateRequest")
    GetModelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetModelsOutput", name: "GetModelsOutput")
    GetModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetModelsRequest", name: "GetModelsRequest")
    GetRequestValidatorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetRequestValidatorOutput", name: "GetRequestValidatorOutput")
    GetRequestValidatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetRequestValidatorRequest", name: "GetRequestValidatorRequest")
    GetRequestValidatorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetRequestValidatorsOutput", name: "GetRequestValidatorsOutput")
    GetRequestValidatorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetRequestValidatorsRequest", name: "GetRequestValidatorsRequest")
    GetResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetResourceOutput", name: "GetResourceOutput")
    GetResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetResourceRequest", name: "GetResourceRequest")
    GetResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetResourcesOutput", name: "GetResourcesOutput")
    GetResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetResourcesRequest", name: "GetResourcesRequest")
    GetRestApiOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetRestApiOutput", name: "GetRestApiOutput")
    GetRestApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetRestApiRequest", name: "GetRestApiRequest")
    GetRestApisOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetRestApisOutput", name: "GetRestApisOutput")
    GetRestApisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetRestApisRequest", name: "GetRestApisRequest")
    GetSdkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetSdkRequest", name: "GetSdkRequest")
    GetSdkTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetSdkTypeOutput", name: "GetSdkTypeOutput")
    GetSdkTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetSdkTypeRequest", name: "GetSdkTypeRequest")
    GetSdkTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetSdkTypesOutput", name: "GetSdkTypesOutput")
    GetSdkTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetSdkTypesRequest", name: "GetSdkTypesRequest")
    GetStageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetStageOutput", name: "GetStageOutput")
    GetStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetStageRequest", name: "GetStageRequest")
    GetStagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetStagesOutput", name: "GetStagesOutput")
    GetStagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetStagesRequest", name: "GetStagesRequest")
    GetTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetTagsOutput", name: "GetTagsOutput")
    GetTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetTagsRequest", name: "GetTagsRequest")
    GetUsageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsageOutput", name: "GetUsageOutput")
    GetUsagePlanKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsagePlanKeyOutput", name: "GetUsagePlanKeyOutput")
    GetUsagePlanKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsagePlanKeyRequest", name: "GetUsagePlanKeyRequest")
    GetUsagePlanKeysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsagePlanKeysOutput", name: "GetUsagePlanKeysOutput")
    GetUsagePlanKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsagePlanKeysRequest", name: "GetUsagePlanKeysRequest")
    GetUsagePlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsagePlanOutput", name: "GetUsagePlanOutput")
    GetUsagePlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsagePlanRequest", name: "GetUsagePlanRequest")
    GetUsagePlansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsagePlansOutput", name: "GetUsagePlansOutput")
    GetUsagePlansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsagePlansRequest", name: "GetUsagePlansRequest")
    GetUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetUsageRequest", name: "GetUsageRequest")
    GetVpcLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetVpcLinkOutput", name: "GetVpcLinkOutput")
    GetVpcLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetVpcLinkRequest", name: "GetVpcLinkRequest")
    GetVpcLinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetVpcLinksOutput", name: "GetVpcLinksOutput")
    GetVpcLinksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#GetVpcLinksRequest", name: "GetVpcLinksRequest")
    ImportApiKeysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ImportApiKeysOutput", name: "ImportApiKeysOutput")
    ImportApiKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ImportApiKeysRequest", name: "ImportApiKeysRequest")
    ImportDocumentationPartsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ImportDocumentationPartsOutput", name: "ImportDocumentationPartsOutput")
    ImportDocumentationPartsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ImportDocumentationPartsRequest", name: "ImportDocumentationPartsRequest")
    ImportRestApiOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ImportRestApiOutput", name: "ImportRestApiOutput")
    ImportRestApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ImportRestApiRequest", name: "ImportRestApiRequest")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigateway#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#Integration", name: "Integration")
    IntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#IntegrationResponse", name: "IntegrationResponse")
    IntegrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#IntegrationType", name: "IntegrationType")
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#IpAddressType", name: "IpAddressType")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListOfARNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfARNs", name: "ListOfARNs")
    ListOfApiKey = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfApiKey", name: "ListOfApiKey")
    ListOfApiStage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfApiStage", name: "ListOfApiStage")
    ListOfAuthorizer = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfAuthorizer", name: "ListOfAuthorizer")
    ListOfBasePathMapping = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfBasePathMapping", name: "ListOfBasePathMapping")
    ListOfClientCertificate = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfClientCertificate", name: "ListOfClientCertificate")
    ListOfDeployment = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfDeployment", name: "ListOfDeployment")
    ListOfDocumentationPart = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfDocumentationPart", name: "ListOfDocumentationPart")
    ListOfDocumentationVersion = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfDocumentationVersion", name: "ListOfDocumentationVersion")
    ListOfDomainName = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfDomainName", name: "ListOfDomainName")
    ListOfDomainNameAccessAssociation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfDomainNameAccessAssociation", name: "ListOfDomainNameAccessAssociation")
    ListOfEndpointType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfEndpointType", name: "ListOfEndpointType")
    ListOfGatewayResponse = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfGatewayResponse", name: "ListOfGatewayResponse")
    ListOfLong = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfLong", name: "ListOfLong")
    ListOfModel = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfModel", name: "ListOfModel")
    ListOfPatchOperation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfPatchOperation", name: "ListOfPatchOperation")
    ListOfRequestValidator = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfRequestValidator", name: "ListOfRequestValidator")
    ListOfResource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfResource", name: "ListOfResource")
    ListOfRestApi = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfRestApi", name: "ListOfRestApi")
    ListOfSdkConfigurationProperty = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfSdkConfigurationProperty", name: "ListOfSdkConfigurationProperty")
    ListOfSdkType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfSdkType", name: "ListOfSdkType")
    ListOfStage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfStage", name: "ListOfStage")
    ListOfStageKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfStageKeys", name: "ListOfStageKeys")
    ListOfString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfString", name: "ListOfString")
    ListOfUsage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfUsage", name: "ListOfUsage")
    ListOfUsagePlan = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfUsagePlan", name: "ListOfUsagePlan")
    ListOfUsagePlanKey = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfUsagePlanKey", name: "ListOfUsagePlanKey")
    ListOfVpcLink = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigateway#ListOfVpcLink", name: "ListOfVpcLink")
    LocationStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#LocationStatusType", name: "LocationStatusType")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigateway#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MapOfApiStageThrottleSettings = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfApiStageThrottleSettings", name: "MapOfApiStageThrottleSettings")
    MapOfIntegrationResponse = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfIntegrationResponse", name: "MapOfIntegrationResponse")
    MapOfKeyUsages = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfKeyUsages", name: "MapOfKeyUsages")
    MapOfMethod = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfMethod", name: "MapOfMethod")
    MapOfMethodResponse = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfMethodResponse", name: "MapOfMethodResponse")
    MapOfMethodSettings = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfMethodSettings", name: "MapOfMethodSettings")
    MapOfMethodSnapshot = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfMethodSnapshot", name: "MapOfMethodSnapshot")
    MapOfStringToBoolean = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfStringToBoolean", name: "MapOfStringToBoolean")
    MapOfStringToList = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfStringToList", name: "MapOfStringToList")
    MapOfStringToString = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#MapOfStringToString", name: "MapOfStringToString")
    Method = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#Method", name: "Method")
    MethodResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#MethodResponse", name: "MethodResponse")
    MethodSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#MethodSetting", name: "MethodSetting")
    MethodSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#MethodSnapshot", name: "MethodSnapshot")
    Model = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#Model", name: "Model")
    MutualTlsAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#MutualTlsAuthentication", name: "MutualTlsAuthentication")
    MutualTlsAuthenticationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#MutualTlsAuthenticationInput", name: "MutualTlsAuthenticationInput")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.apigateway#NullableBoolean", name: "NullableBoolean")
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigateway#NullableInteger", name: "NullableInteger")
    Op = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#Op", name: "Op")
    PatchOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PatchOperation", name: "PatchOperation")
    PathToMapOfMethodSnapshot = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigateway#PathToMapOfMethodSnapshot", name: "PathToMapOfMethodSnapshot")
    ProviderARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigateway#ProviderARN", name: "ProviderARN")
    PutGatewayResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutGatewayResponseOutput", name: "PutGatewayResponseOutput")
    PutGatewayResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutGatewayResponseRequest", name: "PutGatewayResponseRequest")
    PutIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutIntegrationOutput", name: "PutIntegrationOutput")
    PutIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutIntegrationRequest", name: "PutIntegrationRequest")
    PutIntegrationResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutIntegrationResponseOutput", name: "PutIntegrationResponseOutput")
    PutIntegrationResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutIntegrationResponseRequest", name: "PutIntegrationResponseRequest")
    PutMethodOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutMethodOutput", name: "PutMethodOutput")
    PutMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutMethodRequest", name: "PutMethodRequest")
    PutMethodResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutMethodResponseOutput", name: "PutMethodResponseOutput")
    PutMethodResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutMethodResponseRequest", name: "PutMethodResponseRequest")
    PutMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#PutMode", name: "PutMode")
    PutRestApiOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutRestApiOutput", name: "PutRestApiOutput")
    PutRestApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#PutRestApiRequest", name: "PutRestApiRequest")
    QuotaPeriodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#QuotaPeriodType", name: "QuotaPeriodType")
    QuotaSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#QuotaSettings", name: "QuotaSettings")
    RejectDomainNameAccessAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#RejectDomainNameAccessAssociationRequest", name: "RejectDomainNameAccessAssociationRequest")
    RequestValidator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#RequestValidator", name: "RequestValidator")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#Resource", name: "Resource")
    ResourceOwner = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#ResourceOwner", name: "ResourceOwner")
    ResponseTransferMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#ResponseTransferMode", name: "ResponseTransferMode")
    RestApi = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#RestApi", name: "RestApi")
    RoutingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#RoutingMode", name: "RoutingMode")
    SdkConfigurationProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#SdkConfigurationProperty", name: "SdkConfigurationProperty")
    SdkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#SdkResponse", name: "SdkResponse")
    SdkType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#SdkType", name: "SdkType")
    SecurityPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#SecurityPolicy", name: "SecurityPolicy")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Stage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#Stage", name: "Stage")
    StageKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#StageKey", name: "StageKey")
    StatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigateway#StatusCode", name: "StatusCode", traits: {"smithy.api#pattern" => "^[1-5]\\d\\d$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigateway#String", name: "String")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#TagResourceRequest", name: "TagResourceRequest")
    TestInvokeAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#TestInvokeAuthorizerRequest", name: "TestInvokeAuthorizerRequest")
    TestInvokeAuthorizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#TestInvokeAuthorizerResponse", name: "TestInvokeAuthorizerResponse")
    TestInvokeMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#TestInvokeMethodRequest", name: "TestInvokeMethodRequest")
    TestInvokeMethodResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#TestInvokeMethodResponse", name: "TestInvokeMethodResponse")
    ThrottleSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#ThrottleSettings", name: "ThrottleSettings")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.apigateway#Timestamp", name: "Timestamp")
    TlsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#TlsConfig", name: "TlsConfig")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedCacheControlHeaderStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#UnauthorizedCacheControlHeaderStrategy", name: "UnauthorizedCacheControlHeaderStrategy")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateAccountOutput", name: "UpdateAccountOutput")
    UpdateAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateAccountRequest", name: "UpdateAccountRequest")
    UpdateApiKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateApiKeyOutput", name: "UpdateApiKeyOutput")
    UpdateApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateApiKeyRequest", name: "UpdateApiKeyRequest")
    UpdateAuthorizerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateAuthorizerOutput", name: "UpdateAuthorizerOutput")
    UpdateAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateAuthorizerRequest", name: "UpdateAuthorizerRequest")
    UpdateBasePathMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateBasePathMappingOutput", name: "UpdateBasePathMappingOutput")
    UpdateBasePathMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateBasePathMappingRequest", name: "UpdateBasePathMappingRequest")
    UpdateClientCertificateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateClientCertificateOutput", name: "UpdateClientCertificateOutput")
    UpdateClientCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateClientCertificateRequest", name: "UpdateClientCertificateRequest")
    UpdateDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateDeploymentOutput", name: "UpdateDeploymentOutput")
    UpdateDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateDeploymentRequest", name: "UpdateDeploymentRequest")
    UpdateDocumentationPartOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateDocumentationPartOutput", name: "UpdateDocumentationPartOutput")
    UpdateDocumentationPartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateDocumentationPartRequest", name: "UpdateDocumentationPartRequest")
    UpdateDocumentationVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateDocumentationVersionOutput", name: "UpdateDocumentationVersionOutput")
    UpdateDocumentationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateDocumentationVersionRequest", name: "UpdateDocumentationVersionRequest")
    UpdateDomainNameOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateDomainNameOutput", name: "UpdateDomainNameOutput")
    UpdateDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateDomainNameRequest", name: "UpdateDomainNameRequest")
    UpdateGatewayResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateGatewayResponseOutput", name: "UpdateGatewayResponseOutput")
    UpdateGatewayResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateGatewayResponseRequest", name: "UpdateGatewayResponseRequest")
    UpdateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateIntegrationOutput", name: "UpdateIntegrationOutput")
    UpdateIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateIntegrationRequest", name: "UpdateIntegrationRequest")
    UpdateIntegrationResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateIntegrationResponseOutput", name: "UpdateIntegrationResponseOutput")
    UpdateIntegrationResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateIntegrationResponseRequest", name: "UpdateIntegrationResponseRequest")
    UpdateMethodOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateMethodOutput", name: "UpdateMethodOutput")
    UpdateMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateMethodRequest", name: "UpdateMethodRequest")
    UpdateMethodResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateMethodResponseOutput", name: "UpdateMethodResponseOutput")
    UpdateMethodResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateMethodResponseRequest", name: "UpdateMethodResponseRequest")
    UpdateModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateModelOutput", name: "UpdateModelOutput")
    UpdateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateModelRequest", name: "UpdateModelRequest")
    UpdateRequestValidatorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateRequestValidatorOutput", name: "UpdateRequestValidatorOutput")
    UpdateRequestValidatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateRequestValidatorRequest", name: "UpdateRequestValidatorRequest")
    UpdateResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateResourceOutput", name: "UpdateResourceOutput")
    UpdateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateResourceRequest", name: "UpdateResourceRequest")
    UpdateRestApiOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateRestApiOutput", name: "UpdateRestApiOutput")
    UpdateRestApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateRestApiRequest", name: "UpdateRestApiRequest")
    UpdateStageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateStageOutput", name: "UpdateStageOutput")
    UpdateStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateStageRequest", name: "UpdateStageRequest")
    UpdateUsageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateUsageOutput", name: "UpdateUsageOutput")
    UpdateUsagePlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateUsagePlanOutput", name: "UpdateUsagePlanOutput")
    UpdateUsagePlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateUsagePlanRequest", name: "UpdateUsagePlanRequest")
    UpdateUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateUsageRequest", name: "UpdateUsageRequest")
    UpdateVpcLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateVpcLinkOutput", name: "UpdateVpcLinkOutput")
    UpdateVpcLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UpdateVpcLinkRequest", name: "UpdateVpcLinkRequest")
    UsagePlan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UsagePlan", name: "UsagePlan")
    UsagePlanKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#UsagePlanKey", name: "UsagePlanKey")
    VpcLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigateway#VpcLink", name: "VpcLink")
    VpcLinkStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigateway#VpcLinkStatus", name: "VpcLinkStatus")

    AccessAssociationSourceType.add_member(:vpce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPCE", traits: {"smithy.api#enumValue" => "VPCE"}))
    AccessLogSettings.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "format"))
    AccessLogSettings.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "destinationArn"))
    AccessLogSettings.type = Types::AccessLogSettings
    ApiKey.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    ApiKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ApiKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ApiKey.add_member(:customer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customerId"))
    ApiKey.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    ApiKey.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    ApiKey.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    ApiKey.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDate"))
    ApiKey.add_member(:stage_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "stageKeys"))
    ApiKey.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    ApiKey.type = Types::ApiKey
    ApiKeySourceType.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEADER", traits: {"smithy.api#enumValue" => "HEADER"}))
    ApiKeySourceType.add_member(:authorizer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZER", traits: {"smithy.api#enumValue" => "AUTHORIZER"}))
    ApiKeysFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "csv", traits: {"smithy.api#enumValue" => "csv"}))
    ApiStage.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiId"))
    ApiStage.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stage"))
    ApiStage.add_member(:throttle, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfApiStageThrottleSettings, name: "throttle"))
    ApiStage.type = Types::ApiStage
    ApiStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ApiStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ApiStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ApiStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Authorizer.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Authorizer.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Authorizer.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, name: "type"))
    Authorizer.add_member(:provider_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfARNs, name: "providerARNs"))
    Authorizer.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authType"))
    Authorizer.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerUri"))
    Authorizer.add_member(:authorizer_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerCredentials"))
    Authorizer.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identitySource"))
    Authorizer.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityValidationExpression"))
    Authorizer.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "authorizerResultTtlInSeconds"))
    Authorizer.type = Types::Authorizer
    AuthorizerType.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN", traits: {"smithy.api#enumValue" => "TOKEN"}))
    AuthorizerType.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST", traits: {"smithy.api#enumValue" => "REQUEST"}))
    AuthorizerType.add_member(:cognito_user_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COGNITO_USER_POOLS", traits: {"smithy.api#enumValue" => "COGNITO_USER_POOLS"}))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    BadRequestException.type = Types::BadRequestException
    BasePathMapping.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "basePath"))
    BasePathMapping.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId"))
    BasePathMapping.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stage"))
    BasePathMapping.type = Types::BasePathMapping
    CacheClusterSize.add_member(:size_0_point_5_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_0_POINT_5_GB", traits: {"smithy.api#enumValue" => "0.5"}))
    CacheClusterSize.add_member(:size_1_point_6_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_1_POINT_6_GB", traits: {"smithy.api#enumValue" => "1.6"}))
    CacheClusterSize.add_member(:size_6_point_1_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_6_POINT_1_GB", traits: {"smithy.api#enumValue" => "6.1"}))
    CacheClusterSize.add_member(:size_13_point_5_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_13_POINT_5_GB", traits: {"smithy.api#enumValue" => "13.5"}))
    CacheClusterSize.add_member(:size_28_point_4_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_28_POINT_4_GB", traits: {"smithy.api#enumValue" => "28.4"}))
    CacheClusterSize.add_member(:size_58_point_2_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_58_POINT_2_GB", traits: {"smithy.api#enumValue" => "58.2"}))
    CacheClusterSize.add_member(:size_118_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_118_GB", traits: {"smithy.api#enumValue" => "118"}))
    CacheClusterSize.add_member(:size_237_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE_237_GB", traits: {"smithy.api#enumValue" => "237"}))
    CacheClusterStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    CacheClusterStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    CacheClusterStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    CacheClusterStatus.add_member(:not_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    CacheClusterStatus.add_member(:flush_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLUSH_IN_PROGRESS", traits: {"smithy.api#enumValue" => "FLUSH_IN_PROGRESS"}))
    CanarySettings.add_member(:percent_traffic, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "percentTraffic", traits: {"smithy.api#default" => 0}))
    CanarySettings.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId"))
    CanarySettings.add_member(:stage_variable_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "stageVariableOverrides"))
    CanarySettings.add_member(:use_stage_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useStageCache", traits: {"smithy.api#default" => false}))
    CanarySettings.type = Types::CanarySettings
    ClientCertificate.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    ClientCertificate.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    ClientCertificate.add_member(:pem_encoded_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pemEncodedCertificate"))
    ClientCertificate.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    ClientCertificate.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expirationDate"))
    ClientCertificate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    ClientCertificate.type = Types::ClientCertificate
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConflictException.type = Types::ConflictException
    ConnectionType.add_member(:internet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNET", traits: {"smithy.api#enumValue" => "INTERNET"}))
    ConnectionType.add_member(:vpc_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_LINK", traits: {"smithy.api#enumValue" => "VPC_LINK"}))
    ContentHandlingStrategy.add_member(:convert_to_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONVERT_TO_BINARY", traits: {"smithy.api#enumValue" => "CONVERT_TO_BINARY"}))
    ContentHandlingStrategy.add_member(:convert_to_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONVERT_TO_TEXT", traits: {"smithy.api#enumValue" => "CONVERT_TO_TEXT"}))
    CreateApiKeyOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateApiKeyOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    CreateApiKeyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateApiKeyOutput.add_member(:customer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customerId"))
    CreateApiKeyOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateApiKeyOutput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    CreateApiKeyOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    CreateApiKeyOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDate"))
    CreateApiKeyOutput.add_member(:stage_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "stageKeys"))
    CreateApiKeyOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateApiKeyOutput.type = Types::CreateApiKeyOutput
    CreateApiKeyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateApiKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateApiKeyRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    CreateApiKeyRequest.add_member(:generate_distinct_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "generateDistinctId", traits: {"smithy.api#default" => false}))
    CreateApiKeyRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    CreateApiKeyRequest.add_member(:stage_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfStageKeys, name: "stageKeys"))
    CreateApiKeyRequest.add_member(:customer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customerId"))
    CreateApiKeyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateApiKeyRequest.type = Types::CreateApiKeyRequest
    CreateAuthorizerOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateAuthorizerOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateAuthorizerOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, name: "type"))
    CreateAuthorizerOutput.add_member(:provider_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfARNs, name: "providerARNs"))
    CreateAuthorizerOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authType"))
    CreateAuthorizerOutput.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerUri"))
    CreateAuthorizerOutput.add_member(:authorizer_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerCredentials"))
    CreateAuthorizerOutput.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identitySource"))
    CreateAuthorizerOutput.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityValidationExpression"))
    CreateAuthorizerOutput.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "authorizerResultTtlInSeconds"))
    CreateAuthorizerOutput.type = Types::CreateAuthorizerOutput
    CreateAuthorizerRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:provider_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfARNs, name: "providerARNs"))
    CreateAuthorizerRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authType"))
    CreateAuthorizerRequest.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerUri"))
    CreateAuthorizerRequest.add_member(:authorizer_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerCredentials"))
    CreateAuthorizerRequest.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identitySource"))
    CreateAuthorizerRequest.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityValidationExpression"))
    CreateAuthorizerRequest.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "authorizerResultTtlInSeconds"))
    CreateAuthorizerRequest.type = Types::CreateAuthorizerRequest
    CreateBasePathMappingOutput.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "basePath"))
    CreateBasePathMappingOutput.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId"))
    CreateBasePathMappingOutput.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stage"))
    CreateBasePathMappingOutput.type = Types::CreateBasePathMappingOutput
    CreateBasePathMappingRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBasePathMappingRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    CreateBasePathMappingRequest.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "basePath"))
    CreateBasePathMappingRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#required" => {}}))
    CreateBasePathMappingRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stage"))
    CreateBasePathMappingRequest.type = Types::CreateBasePathMappingRequest
    CreateDeploymentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateDeploymentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateDeploymentOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    CreateDeploymentOutput.add_member(:api_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: PathToMapOfMethodSnapshot, name: "apiSummary"))
    CreateDeploymentOutput.type = Types::CreateDeploymentOutput
    CreateDeploymentRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName"))
    CreateDeploymentRequest.add_member(:stage_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageDescription"))
    CreateDeploymentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateDeploymentRequest.add_member(:cache_cluster_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "cacheClusterEnabled"))
    CreateDeploymentRequest.add_member(:cache_cluster_size, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterSize, name: "cacheClusterSize"))
    CreateDeploymentRequest.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "variables"))
    CreateDeploymentRequest.add_member(:canary_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentCanarySettings, name: "canarySettings"))
    CreateDeploymentRequest.add_member(:tracing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "tracingEnabled"))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDocumentationPartOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateDocumentationPartOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPartLocation, name: "location"))
    CreateDocumentationPartOutput.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "properties"))
    CreateDocumentationPartOutput.type = Types::CreateDocumentationPartOutput
    CreateDocumentationPartRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDocumentationPartRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPartLocation, name: "location", traits: {"smithy.api#required" => {}}))
    CreateDocumentationPartRequest.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "properties", traits: {"smithy.api#required" => {}}))
    CreateDocumentationPartRequest.type = Types::CreateDocumentationPartRequest
    CreateDocumentationVersionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    CreateDocumentationVersionOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    CreateDocumentationVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateDocumentationVersionOutput.type = Types::CreateDocumentationVersionOutput
    CreateDocumentationVersionRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDocumentationVersionRequest.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion", traits: {"smithy.api#required" => {}}))
    CreateDocumentationVersionRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName"))
    CreateDocumentationVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateDocumentationVersionRequest.type = Types::CreateDocumentationVersionRequest
    CreateDomainNameAccessAssociationOutput.add_member(:domain_name_access_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameAccessAssociationArn"))
    CreateDomainNameAccessAssociationOutput.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn"))
    CreateDomainNameAccessAssociationOutput.add_member(:access_association_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessAssociationSourceType, name: "accessAssociationSourceType"))
    CreateDomainNameAccessAssociationOutput.add_member(:access_association_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessAssociationSource"))
    CreateDomainNameAccessAssociationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateDomainNameAccessAssociationOutput.type = Types::CreateDomainNameAccessAssociationOutput
    CreateDomainNameAccessAssociationRequest.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn", traits: {"smithy.api#required" => {}}))
    CreateDomainNameAccessAssociationRequest.add_member(:access_association_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessAssociationSourceType, name: "accessAssociationSourceType", traits: {"smithy.api#required" => {}}))
    CreateDomainNameAccessAssociationRequest.add_member(:access_association_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessAssociationSource", traits: {"smithy.api#required" => {}}))
    CreateDomainNameAccessAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateDomainNameAccessAssociationRequest.type = Types::CreateDomainNameAccessAssociationRequest
    CreateDomainNameOutput.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName"))
    CreateDomainNameOutput.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId"))
    CreateDomainNameOutput.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn"))
    CreateDomainNameOutput.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateName"))
    CreateDomainNameOutput.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateArn"))
    CreateDomainNameOutput.add_member(:certificate_upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "certificateUploadDate"))
    CreateDomainNameOutput.add_member(:regional_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalDomainName"))
    CreateDomainNameOutput.add_member(:regional_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalHostedZoneId"))
    CreateDomainNameOutput.add_member(:regional_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateName"))
    CreateDomainNameOutput.add_member(:regional_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateArn"))
    CreateDomainNameOutput.add_member(:distribution_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "distributionDomainName"))
    CreateDomainNameOutput.add_member(:distribution_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "distributionHostedZoneId"))
    CreateDomainNameOutput.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    CreateDomainNameOutput.add_member(:domain_name_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameStatus, name: "domainNameStatus"))
    CreateDomainNameOutput.add_member(:domain_name_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameStatusMessage"))
    CreateDomainNameOutput.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    CreateDomainNameOutput.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    CreateDomainNameOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateDomainNameOutput.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthentication, name: "mutualTlsAuthentication"))
    CreateDomainNameOutput.add_member(:ownership_verification_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownershipVerificationCertificateArn"))
    CreateDomainNameOutput.add_member(:management_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "managementPolicy"))
    CreateDomainNameOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    CreateDomainNameOutput.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, name: "routingMode"))
    CreateDomainNameOutput.type = Types::CreateDomainNameOutput
    CreateDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateName"))
    CreateDomainNameRequest.add_member(:certificate_body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateBody"))
    CreateDomainNameRequest.add_member(:certificate_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificatePrivateKey"))
    CreateDomainNameRequest.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateChain"))
    CreateDomainNameRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateArn"))
    CreateDomainNameRequest.add_member(:regional_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateName"))
    CreateDomainNameRequest.add_member(:regional_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateArn"))
    CreateDomainNameRequest.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    CreateDomainNameRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateDomainNameRequest.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    CreateDomainNameRequest.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    CreateDomainNameRequest.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthenticationInput, name: "mutualTlsAuthentication"))
    CreateDomainNameRequest.add_member(:ownership_verification_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownershipVerificationCertificateArn"))
    CreateDomainNameRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    CreateDomainNameRequest.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, name: "routingMode"))
    CreateDomainNameRequest.type = Types::CreateDomainNameRequest
    CreateModelOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateModelOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateModelOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateModelOutput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schema"))
    CreateModelOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentType"))
    CreateModelOutput.type = Types::CreateModelOutput
    CreateModelRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    CreateModelRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateModelRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schema"))
    CreateModelRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentType", traits: {"smithy.api#required" => {}}))
    CreateModelRequest.type = Types::CreateModelRequest
    CreateRequestValidatorOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateRequestValidatorOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateRequestValidatorOutput.add_member(:validate_request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestBody", traits: {"smithy.api#default" => false}))
    CreateRequestValidatorOutput.add_member(:validate_request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestParameters", traits: {"smithy.api#default" => false}))
    CreateRequestValidatorOutput.type = Types::CreateRequestValidatorOutput
    CreateRequestValidatorRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRequestValidatorRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateRequestValidatorRequest.add_member(:validate_request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestBody", traits: {"smithy.api#default" => false}))
    CreateRequestValidatorRequest.add_member(:validate_request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestParameters", traits: {"smithy.api#default" => false}))
    CreateRequestValidatorRequest.type = Types::CreateRequestValidatorRequest
    CreateResourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateResourceOutput.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "parentId"))
    CreateResourceOutput.add_member(:path_part, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pathPart"))
    CreateResourceOutput.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    CreateResourceOutput.add_member(:resource_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethod, name: "resourceMethods"))
    CreateResourceOutput.type = Types::CreateResourceOutput
    CreateResourceRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResourceRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "parentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateResourceRequest.add_member(:path_part, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pathPart", traits: {"smithy.api#required" => {}}))
    CreateResourceRequest.type = Types::CreateResourceRequest
    CreateRestApiOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateRestApiOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateRestApiOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateRestApiOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    CreateRestApiOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    CreateRestApiOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    CreateRestApiOutput.add_member(:binary_media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "binaryMediaTypes"))
    CreateRestApiOutput.add_member(:minimum_compression_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "minimumCompressionSize"))
    CreateRestApiOutput.add_member(:api_key_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeySourceType, name: "apiKeySource"))
    CreateRestApiOutput.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    CreateRestApiOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    CreateRestApiOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateRestApiOutput.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "disableExecuteApiEndpoint", traits: {"smithy.api#default" => false}))
    CreateRestApiOutput.add_member(:root_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootResourceId"))
    CreateRestApiOutput.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    CreateRestApiOutput.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    CreateRestApiOutput.add_member(:api_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiStatus, name: "apiStatus"))
    CreateRestApiOutput.add_member(:api_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiStatusMessage"))
    CreateRestApiOutput.type = Types::CreateRestApiOutput
    CreateRestApiRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    CreateRestApiRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateRestApiRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    CreateRestApiRequest.add_member(:clone_from, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cloneFrom"))
    CreateRestApiRequest.add_member(:binary_media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "binaryMediaTypes"))
    CreateRestApiRequest.add_member(:minimum_compression_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "minimumCompressionSize"))
    CreateRestApiRequest.add_member(:api_key_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeySourceType, name: "apiKeySource"))
    CreateRestApiRequest.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    CreateRestApiRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    CreateRestApiRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateRestApiRequest.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "disableExecuteApiEndpoint", traits: {"smithy.api#default" => false}))
    CreateRestApiRequest.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    CreateRestApiRequest.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    CreateRestApiRequest.type = Types::CreateRestApiRequest
    CreateStageOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId"))
    CreateStageOutput.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    CreateStageOutput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName"))
    CreateStageOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateStageOutput.add_member(:cache_cluster_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "cacheClusterEnabled", traits: {"smithy.api#default" => false}))
    CreateStageOutput.add_member(:cache_cluster_size, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterSize, name: "cacheClusterSize"))
    CreateStageOutput.add_member(:cache_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterStatus, name: "cacheClusterStatus"))
    CreateStageOutput.add_member(:method_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodSettings, name: "methodSettings"))
    CreateStageOutput.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "variables"))
    CreateStageOutput.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion"))
    CreateStageOutput.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, name: "accessLogSettings"))
    CreateStageOutput.add_member(:canary_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CanarySettings, name: "canarySettings"))
    CreateStageOutput.add_member(:tracing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "tracingEnabled", traits: {"smithy.api#default" => false}))
    CreateStageOutput.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "webAclArn"))
    CreateStageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateStageOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    CreateStageOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDate"))
    CreateStageOutput.type = Types::CreateStageOutput
    CreateStageRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStageRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName", traits: {"smithy.api#required" => {}}))
    CreateStageRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    CreateStageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateStageRequest.add_member(:cache_cluster_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "cacheClusterEnabled", traits: {"smithy.api#default" => false}))
    CreateStageRequest.add_member(:cache_cluster_size, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterSize, name: "cacheClusterSize"))
    CreateStageRequest.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "variables"))
    CreateStageRequest.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion"))
    CreateStageRequest.add_member(:canary_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CanarySettings, name: "canarySettings"))
    CreateStageRequest.add_member(:tracing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "tracingEnabled", traits: {"smithy.api#default" => false}))
    CreateStageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateStageRequest.type = Types::CreateStageRequest
    CreateUsagePlanKeyOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateUsagePlanKeyOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    CreateUsagePlanKeyOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    CreateUsagePlanKeyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateUsagePlanKeyOutput.type = Types::CreateUsagePlanKeyOutput
    CreateUsagePlanKeyRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUsagePlanKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyId", traits: {"smithy.api#required" => {}}))
    CreateUsagePlanKeyRequest.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyType", traits: {"smithy.api#required" => {}}))
    CreateUsagePlanKeyRequest.type = Types::CreateUsagePlanKeyRequest
    CreateUsagePlanOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateUsagePlanOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateUsagePlanOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateUsagePlanOutput.add_member(:api_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfApiStage, name: "apiStages"))
    CreateUsagePlanOutput.add_member(:throttle, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleSettings, name: "throttle"))
    CreateUsagePlanOutput.add_member(:quota, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSettings, name: "quota"))
    CreateUsagePlanOutput.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productCode"))
    CreateUsagePlanOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateUsagePlanOutput.type = Types::CreateUsagePlanOutput
    CreateUsagePlanRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    CreateUsagePlanRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateUsagePlanRequest.add_member(:api_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfApiStage, name: "apiStages"))
    CreateUsagePlanRequest.add_member(:throttle, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleSettings, name: "throttle"))
    CreateUsagePlanRequest.add_member(:quota, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSettings, name: "quota"))
    CreateUsagePlanRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateUsagePlanRequest.type = Types::CreateUsagePlanRequest
    CreateVpcLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    CreateVpcLinkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateVpcLinkOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateVpcLinkOutput.add_member(:target_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "targetArns"))
    CreateVpcLinkOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkStatus, name: "status"))
    CreateVpcLinkOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusMessage"))
    CreateVpcLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateVpcLinkOutput.type = Types::CreateVpcLinkOutput
    CreateVpcLinkRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    CreateVpcLinkRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreateVpcLinkRequest.add_member(:target_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "targetArns", traits: {"smithy.api#required" => {}}))
    CreateVpcLinkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    CreateVpcLinkRequest.type = Types::CreateVpcLinkRequest
    DeleteApiKeyRequest.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiKey", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiKeyRequest.type = Types::DeleteApiKeyRequest
    DeleteAuthorizerRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAuthorizerRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAuthorizerRequest.type = Types::DeleteAuthorizerRequest
    DeleteBasePathMappingRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBasePathMappingRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    DeleteBasePathMappingRequest.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "basePath", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBasePathMappingRequest.type = Types::DeleteBasePathMappingRequest
    DeleteClientCertificateRequest.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClientCertificateRequest.type = Types::DeleteClientCertificateRequest
    DeleteDeploymentRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.type = Types::DeleteDeploymentRequest
    DeleteDocumentationPartRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentationPartRequest.add_member(:documentation_part_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationPartId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentationPartRequest.type = Types::DeleteDocumentationPartRequest
    DeleteDocumentationVersionRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentationVersionRequest.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentationVersionRequest.type = Types::DeleteDocumentationVersionRequest
    DeleteDomainNameAccessAssociationRequest.add_member(:domain_name_access_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameAccessAssociationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainNameAccessAssociationRequest.type = Types::DeleteDomainNameAccessAssociationRequest
    DeleteDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainNameRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    DeleteDomainNameRequest.type = Types::DeleteDomainNameRequest
    DeleteGatewayResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayResponseRequest.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponseType, name: "responseType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayResponseRequest.type = Types::DeleteGatewayResponseRequest
    DeleteIntegrationRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.type = Types::DeleteIntegrationRequest
    DeleteIntegrationResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.type = Types::DeleteIntegrationResponseRequest
    DeleteMethodRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodRequest.type = Types::DeleteMethodRequest
    DeleteMethodResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodResponseRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodResponseRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMethodResponseRequest.type = Types::DeleteMethodResponseRequest
    DeleteModelRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "modelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.type = Types::DeleteModelRequest
    DeleteRequestValidatorRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRequestValidatorRequest.add_member(:request_validator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "requestValidatorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRequestValidatorRequest.type = Types::DeleteRequestValidatorRequest
    DeleteResourceRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceRequest.type = Types::DeleteResourceRequest
    DeleteRestApiRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRestApiRequest.type = Types::DeleteRestApiRequest
    DeleteStageRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStageRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStageRequest.type = Types::DeleteStageRequest
    DeleteUsagePlanKeyRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUsagePlanKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUsagePlanKeyRequest.type = Types::DeleteUsagePlanKeyRequest
    DeleteUsagePlanRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUsagePlanRequest.type = Types::DeleteUsagePlanRequest
    DeleteVpcLinkRequest.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vpcLinkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcLinkRequest.type = Types::DeleteVpcLinkRequest
    Deployment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Deployment.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    Deployment.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    Deployment.add_member(:api_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: PathToMapOfMethodSnapshot, name: "apiSummary"))
    Deployment.type = Types::Deployment
    DeploymentCanarySettings.add_member(:percent_traffic, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "percentTraffic", traits: {"smithy.api#default" => 0}))
    DeploymentCanarySettings.add_member(:stage_variable_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "stageVariableOverrides"))
    DeploymentCanarySettings.add_member(:use_stage_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useStageCache", traits: {"smithy.api#default" => false}))
    DeploymentCanarySettings.type = Types::DeploymentCanarySettings
    DocumentationPart.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    DocumentationPart.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPartLocation, name: "location"))
    DocumentationPart.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "properties"))
    DocumentationPart.type = Types::DocumentationPart
    DocumentationPartLocation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPartType, name: "type", traits: {"smithy.api#required" => {}}))
    DocumentationPartLocation.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    DocumentationPartLocation.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "method"))
    DocumentationPartLocation.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPartLocationStatusCode, name: "statusCode"))
    DocumentationPartLocation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DocumentationPartLocation.type = Types::DocumentationPartLocation
    DocumentationPartType.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API", traits: {"smithy.api#enumValue" => "API"}))
    DocumentationPartType.add_member(:authorizer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZER", traits: {"smithy.api#enumValue" => "AUTHORIZER"}))
    DocumentationPartType.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODEL", traits: {"smithy.api#enumValue" => "MODEL"}))
    DocumentationPartType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    DocumentationPartType.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METHOD", traits: {"smithy.api#enumValue" => "METHOD"}))
    DocumentationPartType.add_member(:path_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATH_PARAMETER", traits: {"smithy.api#enumValue" => "PATH_PARAMETER"}))
    DocumentationPartType.add_member(:query_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY_PARAMETER", traits: {"smithy.api#enumValue" => "QUERY_PARAMETER"}))
    DocumentationPartType.add_member(:request_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_HEADER", traits: {"smithy.api#enumValue" => "REQUEST_HEADER"}))
    DocumentationPartType.add_member(:request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_BODY", traits: {"smithy.api#enumValue" => "REQUEST_BODY"}))
    DocumentationPartType.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE", traits: {"smithy.api#enumValue" => "RESPONSE"}))
    DocumentationPartType.add_member(:response_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE_HEADER", traits: {"smithy.api#enumValue" => "RESPONSE_HEADER"}))
    DocumentationPartType.add_member(:response_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE_BODY", traits: {"smithy.api#enumValue" => "RESPONSE_BODY"}))
    DocumentationVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    DocumentationVersion.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    DocumentationVersion.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    DocumentationVersion.type = Types::DocumentationVersion
    DomainName.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName"))
    DomainName.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId"))
    DomainName.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn"))
    DomainName.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateName"))
    DomainName.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateArn"))
    DomainName.add_member(:certificate_upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "certificateUploadDate"))
    DomainName.add_member(:regional_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalDomainName"))
    DomainName.add_member(:regional_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalHostedZoneId"))
    DomainName.add_member(:regional_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateName"))
    DomainName.add_member(:regional_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateArn"))
    DomainName.add_member(:distribution_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "distributionDomainName"))
    DomainName.add_member(:distribution_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "distributionHostedZoneId"))
    DomainName.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    DomainName.add_member(:domain_name_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameStatus, name: "domainNameStatus"))
    DomainName.add_member(:domain_name_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameStatusMessage"))
    DomainName.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    DomainName.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    DomainName.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    DomainName.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthentication, name: "mutualTlsAuthentication"))
    DomainName.add_member(:ownership_verification_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownershipVerificationCertificateArn"))
    DomainName.add_member(:management_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "managementPolicy"))
    DomainName.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    DomainName.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, name: "routingMode"))
    DomainName.type = Types::DomainName
    DomainNameAccessAssociation.add_member(:domain_name_access_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameAccessAssociationArn"))
    DomainNameAccessAssociation.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn"))
    DomainNameAccessAssociation.add_member(:access_association_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessAssociationSourceType, name: "accessAssociationSourceType"))
    DomainNameAccessAssociation.add_member(:access_association_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessAssociationSource"))
    DomainNameAccessAssociation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    DomainNameAccessAssociation.type = Types::DomainNameAccessAssociation
    DomainNameStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DomainNameStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DomainNameStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DomainNameStatus.add_member(:pending_certificate_reimport, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CERTIFICATE_REIMPORT", traits: {"smithy.api#enumValue" => "PENDING_CERTIFICATE_REIMPORT"}))
    DomainNameStatus.add_member(:pending_ownership_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_OWNERSHIP_VERIFICATION", traits: {"smithy.api#enumValue" => "PENDING_OWNERSHIP_VERIFICATION"}))
    DomainNameStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EndpointAccessMode.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    EndpointAccessMode.add_member(:strict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRICT", traits: {"smithy.api#enumValue" => "STRICT"}))
    EndpointConfiguration.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfEndpointType, name: "types"))
    EndpointConfiguration.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    EndpointConfiguration.add_member(:vpc_endpoint_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "vpcEndpointIds"))
    EndpointConfiguration.type = Types::EndpointConfiguration
    EndpointType.add_member(:regional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGIONAL", traits: {"smithy.api#enumValue" => "REGIONAL"}))
    EndpointType.add_member(:edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE", traits: {"smithy.api#enumValue" => "EDGE"}))
    EndpointType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ExportResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    ExportResponse.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentDisposition", traits: {"smithy.api#httpHeader" => "Content-Disposition"}))
    ExportResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "body", traits: {"smithy.api#httpPayload" => {}}))
    ExportResponse[:http_payload] = :body
    ExportResponse[:http_payload_member] = ExportResponse.member(:body)
    ExportResponse.type = Types::ExportResponse
    FlushStageAuthorizersCacheRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushStageAuthorizersCacheRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushStageAuthorizersCacheRequest.type = Types::FlushStageAuthorizersCacheRequest
    FlushStageCacheRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushStageCacheRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    FlushStageCacheRequest.type = Types::FlushStageCacheRequest
    GatewayResponse.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponseType, name: "responseType"))
    GatewayResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    GatewayResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    GatewayResponse.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    GatewayResponse.add_member(:default_response, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "defaultResponse", traits: {"smithy.api#default" => false}))
    GatewayResponse.type = Types::GatewayResponse
    GatewayResponseType.add_member(:default_4_xx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_4XX", traits: {"smithy.api#enumValue" => "DEFAULT_4XX"}))
    GatewayResponseType.add_member(:default_5_xx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_5XX", traits: {"smithy.api#enumValue" => "DEFAULT_5XX"}))
    GatewayResponseType.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    GatewayResponseType.add_member(:unauthorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAUTHORIZED", traits: {"smithy.api#enumValue" => "UNAUTHORIZED"}))
    GatewayResponseType.add_member(:invalid_api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_API_KEY", traits: {"smithy.api#enumValue" => "INVALID_API_KEY"}))
    GatewayResponseType.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    GatewayResponseType.add_member(:authorizer_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZER_FAILURE", traits: {"smithy.api#enumValue" => "AUTHORIZER_FAILURE"}))
    GatewayResponseType.add_member(:authorizer_configuration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZER_CONFIGURATION_ERROR", traits: {"smithy.api#enumValue" => "AUTHORIZER_CONFIGURATION_ERROR"}))
    GatewayResponseType.add_member(:invalid_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SIGNATURE", traits: {"smithy.api#enumValue" => "INVALID_SIGNATURE"}))
    GatewayResponseType.add_member(:expired_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED_TOKEN", traits: {"smithy.api#enumValue" => "EXPIRED_TOKEN"}))
    GatewayResponseType.add_member(:missing_authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_AUTHENTICATION_TOKEN", traits: {"smithy.api#enumValue" => "MISSING_AUTHENTICATION_TOKEN"}))
    GatewayResponseType.add_member(:integration_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGRATION_FAILURE", traits: {"smithy.api#enumValue" => "INTEGRATION_FAILURE"}))
    GatewayResponseType.add_member(:integration_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGRATION_TIMEOUT", traits: {"smithy.api#enumValue" => "INTEGRATION_TIMEOUT"}))
    GatewayResponseType.add_member(:api_configuration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_CONFIGURATION_ERROR", traits: {"smithy.api#enumValue" => "API_CONFIGURATION_ERROR"}))
    GatewayResponseType.add_member(:unsupported_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_MEDIA_TYPE", traits: {"smithy.api#enumValue" => "UNSUPPORTED_MEDIA_TYPE"}))
    GatewayResponseType.add_member(:bad_request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAD_REQUEST_PARAMETERS", traits: {"smithy.api#enumValue" => "BAD_REQUEST_PARAMETERS"}))
    GatewayResponseType.add_member(:bad_request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAD_REQUEST_BODY", traits: {"smithy.api#enumValue" => "BAD_REQUEST_BODY"}))
    GatewayResponseType.add_member(:request_too_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_TOO_LARGE", traits: {"smithy.api#enumValue" => "REQUEST_TOO_LARGE"}))
    GatewayResponseType.add_member(:throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THROTTLED", traits: {"smithy.api#enumValue" => "THROTTLED"}))
    GatewayResponseType.add_member(:quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "QUOTA_EXCEEDED"}))
    GatewayResponseType.add_member(:waf_filtered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF_FILTERED", traits: {"smithy.api#enumValue" => "WAF_FILTERED"}))
    GenerateClientCertificateOutput.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    GenerateClientCertificateOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GenerateClientCertificateOutput.add_member(:pem_encoded_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pemEncodedCertificate"))
    GenerateClientCertificateOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    GenerateClientCertificateOutput.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expirationDate"))
    GenerateClientCertificateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GenerateClientCertificateOutput.type = Types::GenerateClientCertificateOutput
    GenerateClientCertificateRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GenerateClientCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GenerateClientCertificateRequest.type = Types::GenerateClientCertificateRequest
    GetAccountOutput.add_member(:cloudwatch_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cloudwatchRoleArn"))
    GetAccountOutput.add_member(:throttle_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleSettings, name: "throttleSettings"))
    GetAccountOutput.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "features"))
    GetAccountOutput.add_member(:api_key_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiKeyVersion"))
    GetAccountOutput.type = Types::GetAccountOutput
    GetAccountRequest.type = Types::GetAccountRequest
    GetApiKeyOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetApiKeyOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    GetApiKeyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    GetApiKeyOutput.add_member(:customer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customerId"))
    GetApiKeyOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetApiKeyOutput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    GetApiKeyOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    GetApiKeyOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDate"))
    GetApiKeyOutput.add_member(:stage_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "stageKeys"))
    GetApiKeyOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GetApiKeyOutput.type = Types::GetApiKeyOutput
    GetApiKeyRequest.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiKey", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiKeyRequest.add_member(:include_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "includeValue", traits: {"smithy.api#httpQuery" => "includeValue"}))
    GetApiKeyRequest.type = Types::GetApiKeyRequest
    GetApiKeysOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    GetApiKeysOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfApiKey, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetApiKeysOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetApiKeysOutput.type = Types::GetApiKeysOutput
    GetApiKeysRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetApiKeysRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetApiKeysRequest.add_member(:name_query, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nameQuery", traits: {"smithy.api#httpQuery" => "name"}))
    GetApiKeysRequest.add_member(:customer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customerId", traits: {"smithy.api#httpQuery" => "customerId"}))
    GetApiKeysRequest.add_member(:include_values, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "includeValues", traits: {"smithy.api#httpQuery" => "includeValues"}))
    GetApiKeysRequest.type = Types::GetApiKeysRequest
    GetAuthorizerOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetAuthorizerOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    GetAuthorizerOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, name: "type"))
    GetAuthorizerOutput.add_member(:provider_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfARNs, name: "providerARNs"))
    GetAuthorizerOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authType"))
    GetAuthorizerOutput.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerUri"))
    GetAuthorizerOutput.add_member(:authorizer_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerCredentials"))
    GetAuthorizerOutput.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identitySource"))
    GetAuthorizerOutput.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityValidationExpression"))
    GetAuthorizerOutput.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "authorizerResultTtlInSeconds"))
    GetAuthorizerOutput.type = Types::GetAuthorizerOutput
    GetAuthorizerRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizerRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizerRequest.type = Types::GetAuthorizerRequest
    GetAuthorizersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfAuthorizer, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetAuthorizersOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetAuthorizersOutput.type = Types::GetAuthorizersOutput
    GetAuthorizersRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizersRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetAuthorizersRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetAuthorizersRequest.type = Types::GetAuthorizersRequest
    GetBasePathMappingOutput.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "basePath"))
    GetBasePathMappingOutput.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId"))
    GetBasePathMappingOutput.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stage"))
    GetBasePathMappingOutput.type = Types::GetBasePathMappingOutput
    GetBasePathMappingRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBasePathMappingRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    GetBasePathMappingRequest.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "basePath", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBasePathMappingRequest.type = Types::GetBasePathMappingRequest
    GetBasePathMappingsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfBasePathMapping, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetBasePathMappingsOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetBasePathMappingsOutput.type = Types::GetBasePathMappingsOutput
    GetBasePathMappingsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBasePathMappingsRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    GetBasePathMappingsRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetBasePathMappingsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetBasePathMappingsRequest.type = Types::GetBasePathMappingsRequest
    GetClientCertificateOutput.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    GetClientCertificateOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetClientCertificateOutput.add_member(:pem_encoded_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pemEncodedCertificate"))
    GetClientCertificateOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    GetClientCertificateOutput.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expirationDate"))
    GetClientCertificateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GetClientCertificateOutput.type = Types::GetClientCertificateOutput
    GetClientCertificateRequest.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClientCertificateRequest.type = Types::GetClientCertificateRequest
    GetClientCertificatesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfClientCertificate, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetClientCertificatesOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetClientCertificatesOutput.type = Types::GetClientCertificatesOutput
    GetClientCertificatesRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetClientCertificatesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetClientCertificatesRequest.type = Types::GetClientCertificatesRequest
    GetDeploymentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetDeploymentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetDeploymentOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    GetDeploymentOutput.add_member(:api_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: PathToMapOfMethodSnapshot, name: "apiSummary"))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetDeploymentRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:embed, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "embed", traits: {"smithy.api#httpQuery" => "embed"}))
    GetDeploymentRequest.type = Types::GetDeploymentRequest
    GetDeploymentsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDeployment, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetDeploymentsOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDeploymentsOutput.type = Types::GetDeploymentsOutput
    GetDeploymentsRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentsRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDeploymentsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetDeploymentsRequest.type = Types::GetDeploymentsRequest
    GetDocumentationPartOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetDocumentationPartOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPartLocation, name: "location"))
    GetDocumentationPartOutput.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "properties"))
    GetDocumentationPartOutput.type = Types::GetDocumentationPartOutput
    GetDocumentationPartRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationPartRequest.add_member(:documentation_part_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationPartId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationPartRequest.type = Types::GetDocumentationPartRequest
    GetDocumentationPartsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDocumentationPart, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetDocumentationPartsOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDocumentationPartsOutput.type = Types::GetDocumentationPartsOutput
    GetDocumentationPartsRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationPartsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPartType, name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    GetDocumentationPartsRequest.add_member(:name_query, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nameQuery", traits: {"smithy.api#httpQuery" => "name"}))
    GetDocumentationPartsRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path", traits: {"smithy.api#httpQuery" => "path"}))
    GetDocumentationPartsRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDocumentationPartsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetDocumentationPartsRequest.add_member(:location_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStatusType, name: "locationStatus", traits: {"smithy.api#httpQuery" => "locationStatus"}))
    GetDocumentationPartsRequest.type = Types::GetDocumentationPartsRequest
    GetDocumentationVersionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    GetDocumentationVersionOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    GetDocumentationVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetDocumentationVersionOutput.type = Types::GetDocumentationVersionOutput
    GetDocumentationVersionRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationVersionRequest.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationVersionRequest.type = Types::GetDocumentationVersionRequest
    GetDocumentationVersionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDocumentationVersion, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetDocumentationVersionsOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDocumentationVersionsOutput.type = Types::GetDocumentationVersionsOutput
    GetDocumentationVersionsRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentationVersionsRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDocumentationVersionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetDocumentationVersionsRequest.type = Types::GetDocumentationVersionsRequest
    GetDomainNameAccessAssociationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDomainNameAccessAssociation, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetDomainNameAccessAssociationsOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDomainNameAccessAssociationsOutput.type = Types::GetDomainNameAccessAssociationsOutput
    GetDomainNameAccessAssociationsRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDomainNameAccessAssociationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetDomainNameAccessAssociationsRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceOwner, name: "resourceOwner", traits: {"smithy.api#httpQuery" => "resourceOwner"}))
    GetDomainNameAccessAssociationsRequest.type = Types::GetDomainNameAccessAssociationsRequest
    GetDomainNameOutput.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName"))
    GetDomainNameOutput.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId"))
    GetDomainNameOutput.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn"))
    GetDomainNameOutput.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateName"))
    GetDomainNameOutput.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateArn"))
    GetDomainNameOutput.add_member(:certificate_upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "certificateUploadDate"))
    GetDomainNameOutput.add_member(:regional_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalDomainName"))
    GetDomainNameOutput.add_member(:regional_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalHostedZoneId"))
    GetDomainNameOutput.add_member(:regional_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateName"))
    GetDomainNameOutput.add_member(:regional_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateArn"))
    GetDomainNameOutput.add_member(:distribution_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "distributionDomainName"))
    GetDomainNameOutput.add_member(:distribution_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "distributionHostedZoneId"))
    GetDomainNameOutput.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    GetDomainNameOutput.add_member(:domain_name_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameStatus, name: "domainNameStatus"))
    GetDomainNameOutput.add_member(:domain_name_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameStatusMessage"))
    GetDomainNameOutput.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    GetDomainNameOutput.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    GetDomainNameOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GetDomainNameOutput.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthentication, name: "mutualTlsAuthentication"))
    GetDomainNameOutput.add_member(:ownership_verification_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownershipVerificationCertificateArn"))
    GetDomainNameOutput.add_member(:management_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "managementPolicy"))
    GetDomainNameOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    GetDomainNameOutput.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, name: "routingMode"))
    GetDomainNameOutput.type = Types::GetDomainNameOutput
    GetDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainNameRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    GetDomainNameRequest.type = Types::GetDomainNameRequest
    GetDomainNamesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDomainName, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetDomainNamesOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDomainNamesOutput.type = Types::GetDomainNamesOutput
    GetDomainNamesRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetDomainNamesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetDomainNamesRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceOwner, name: "resourceOwner", traits: {"smithy.api#httpQuery" => "resourceOwner"}))
    GetDomainNamesRequest.type = Types::GetDomainNamesRequest
    GetExportRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportRequest.add_member(:export_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "exportType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "parameters", traits: {"smithy.api#httpQueryParams" => {}}))
    GetExportRequest.add_member(:accepts, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accepts", traits: {"smithy.api#httpHeader" => "Accept"}))
    GetExportRequest.type = Types::GetExportRequest
    GetGatewayResponseOutput.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponseType, name: "responseType"))
    GetGatewayResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    GetGatewayResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    GetGatewayResponseOutput.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    GetGatewayResponseOutput.add_member(:default_response, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "defaultResponse", traits: {"smithy.api#default" => false}))
    GetGatewayResponseOutput.type = Types::GetGatewayResponseOutput
    GetGatewayResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayResponseRequest.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponseType, name: "responseType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayResponseRequest.type = Types::GetGatewayResponseRequest
    GetGatewayResponsesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfGatewayResponse, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetGatewayResponsesOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetGatewayResponsesOutput.type = Types::GetGatewayResponsesOutput
    GetGatewayResponsesRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayResponsesRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetGatewayResponsesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetGatewayResponsesRequest.type = Types::GetGatewayResponsesRequest
    GetIntegrationOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "type"))
    GetIntegrationOutput.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod"))
    GetIntegrationOutput.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uri"))
    GetIntegrationOutput.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "connectionType"))
    GetIntegrationOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectionId"))
    GetIntegrationOutput.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentials"))
    GetIntegrationOutput.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestParameters"))
    GetIntegrationOutput.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestTemplates"))
    GetIntegrationOutput.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "passthroughBehavior"))
    GetIntegrationOutput.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    GetIntegrationOutput.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "timeoutInMillis", traits: {"smithy.api#default" => 0}))
    GetIntegrationOutput.add_member(:cache_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheNamespace"))
    GetIntegrationOutput.add_member(:cache_key_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "cacheKeyParameters"))
    GetIntegrationOutput.add_member(:integration_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfIntegrationResponse, name: "integrationResponses"))
    GetIntegrationOutput.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, name: "tlsConfig"))
    GetIntegrationOutput.add_member(:response_transfer_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTransferMode, name: "responseTransferMode"))
    GetIntegrationOutput.add_member(:integration_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "integrationTarget"))
    GetIntegrationOutput.type = Types::GetIntegrationOutput
    GetIntegrationRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.type = Types::GetIntegrationRequest
    GetIntegrationResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    GetIntegrationResponseOutput.add_member(:selection_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "selectionPattern"))
    GetIntegrationResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    GetIntegrationResponseOutput.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    GetIntegrationResponseOutput.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    GetIntegrationResponseOutput.type = Types::GetIntegrationResponseOutput
    GetIntegrationResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.type = Types::GetIntegrationResponseRequest
    GetMethodOutput.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod"))
    GetMethodOutput.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizationType"))
    GetMethodOutput.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId"))
    GetMethodOutput.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "apiKeyRequired"))
    GetMethodOutput.add_member(:request_validator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "requestValidatorId"))
    GetMethodOutput.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operationName"))
    GetMethodOutput.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "requestParameters"))
    GetMethodOutput.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestModels"))
    GetMethodOutput.add_member(:method_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodResponse, name: "methodResponses"))
    GetMethodOutput.add_member(:method_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "methodIntegration"))
    GetMethodOutput.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "authorizationScopes"))
    GetMethodOutput.type = Types::GetMethodOutput
    GetMethodRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodRequest.type = Types::GetMethodRequest
    GetMethodResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    GetMethodResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "responseParameters"))
    GetMethodResponseOutput.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseModels"))
    GetMethodResponseOutput.type = Types::GetMethodResponseOutput
    GetMethodResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodResponseRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodResponseRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMethodResponseRequest.type = Types::GetMethodResponseRequest
    GetModelOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetModelOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    GetModelOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetModelOutput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schema"))
    GetModelOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentType"))
    GetModelOutput.type = Types::GetModelOutput
    GetModelRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "modelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelRequest.add_member(:flatten, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "flatten", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "flatten"}))
    GetModelRequest.type = Types::GetModelRequest
    GetModelTemplateOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    GetModelTemplateOutput.type = Types::GetModelTemplateOutput
    GetModelTemplateRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelTemplateRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "modelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelTemplateRequest.type = Types::GetModelTemplateRequest
    GetModelsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfModel, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetModelsOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetModelsOutput.type = Types::GetModelsOutput
    GetModelsRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelsRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetModelsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetModelsRequest.type = Types::GetModelsRequest
    GetRequestValidatorOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetRequestValidatorOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    GetRequestValidatorOutput.add_member(:validate_request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestBody", traits: {"smithy.api#default" => false}))
    GetRequestValidatorOutput.add_member(:validate_request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestParameters", traits: {"smithy.api#default" => false}))
    GetRequestValidatorOutput.type = Types::GetRequestValidatorOutput
    GetRequestValidatorRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRequestValidatorRequest.add_member(:request_validator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "requestValidatorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRequestValidatorRequest.type = Types::GetRequestValidatorRequest
    GetRequestValidatorsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRequestValidator, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetRequestValidatorsOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetRequestValidatorsOutput.type = Types::GetRequestValidatorsOutput
    GetRequestValidatorsRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRequestValidatorsRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetRequestValidatorsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetRequestValidatorsRequest.type = Types::GetRequestValidatorsRequest
    GetResourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetResourceOutput.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "parentId"))
    GetResourceOutput.add_member(:path_part, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pathPart"))
    GetResourceOutput.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    GetResourceOutput.add_member(:resource_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethod, name: "resourceMethods"))
    GetResourceOutput.type = Types::GetResourceOutput
    GetResourceRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceRequest.add_member(:embed, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "embed", traits: {"smithy.api#httpQuery" => "embed"}))
    GetResourceRequest.type = Types::GetResourceRequest
    GetResourcesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfResource, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetResourcesOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetResourcesOutput.type = Types::GetResourcesOutput
    GetResourcesRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcesRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetResourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetResourcesRequest.add_member(:embed, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "embed", traits: {"smithy.api#httpQuery" => "embed"}))
    GetResourcesRequest.type = Types::GetResourcesRequest
    GetRestApiOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetRestApiOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    GetRestApiOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetRestApiOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    GetRestApiOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    GetRestApiOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    GetRestApiOutput.add_member(:binary_media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "binaryMediaTypes"))
    GetRestApiOutput.add_member(:minimum_compression_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "minimumCompressionSize"))
    GetRestApiOutput.add_member(:api_key_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeySourceType, name: "apiKeySource"))
    GetRestApiOutput.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    GetRestApiOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    GetRestApiOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GetRestApiOutput.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "disableExecuteApiEndpoint", traits: {"smithy.api#default" => false}))
    GetRestApiOutput.add_member(:root_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootResourceId"))
    GetRestApiOutput.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    GetRestApiOutput.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    GetRestApiOutput.add_member(:api_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiStatus, name: "apiStatus"))
    GetRestApiOutput.add_member(:api_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiStatusMessage"))
    GetRestApiOutput.type = Types::GetRestApiOutput
    GetRestApiRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRestApiRequest.type = Types::GetRestApiRequest
    GetRestApisOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRestApi, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetRestApisOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetRestApisOutput.type = Types::GetRestApisOutput
    GetRestApisRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetRestApisRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetRestApisRequest.type = Types::GetRestApisRequest
    GetSdkRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSdkRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSdkRequest.add_member(:sdk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sdkType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSdkRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "parameters", traits: {"smithy.api#httpQueryParams" => {}}))
    GetSdkRequest.type = Types::GetSdkRequest
    GetSdkTypeOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetSdkTypeOutput.add_member(:friendly_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "friendlyName"))
    GetSdkTypeOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetSdkTypeOutput.add_member(:configuration_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfSdkConfigurationProperty, name: "configurationProperties"))
    GetSdkTypeOutput.type = Types::GetSdkTypeOutput
    GetSdkTypeRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSdkTypeRequest.type = Types::GetSdkTypeRequest
    GetSdkTypesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfSdkType, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetSdkTypesOutput.type = Types::GetSdkTypesOutput
    GetSdkTypesRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetSdkTypesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetSdkTypesRequest.type = Types::GetSdkTypesRequest
    GetStageOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId"))
    GetStageOutput.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    GetStageOutput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName"))
    GetStageOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetStageOutput.add_member(:cache_cluster_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "cacheClusterEnabled", traits: {"smithy.api#default" => false}))
    GetStageOutput.add_member(:cache_cluster_size, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterSize, name: "cacheClusterSize"))
    GetStageOutput.add_member(:cache_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterStatus, name: "cacheClusterStatus"))
    GetStageOutput.add_member(:method_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodSettings, name: "methodSettings"))
    GetStageOutput.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "variables"))
    GetStageOutput.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion"))
    GetStageOutput.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, name: "accessLogSettings"))
    GetStageOutput.add_member(:canary_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CanarySettings, name: "canarySettings"))
    GetStageOutput.add_member(:tracing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "tracingEnabled", traits: {"smithy.api#default" => false}))
    GetStageOutput.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "webAclArn"))
    GetStageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GetStageOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    GetStageOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDate"))
    GetStageOutput.type = Types::GetStageOutput
    GetStageRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStageRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStageRequest.type = Types::GetStageRequest
    GetStagesOutput.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfStage, name: "item"))
    GetStagesOutput.type = Types::GetStagesOutput
    GetStagesRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStagesRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId", traits: {"smithy.api#httpQuery" => "deploymentId"}))
    GetStagesRequest.type = Types::GetStagesRequest
    GetTagsOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GetTagsOutput.type = Types::GetTagsOutput
    GetTagsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTagsRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetTagsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetTagsRequest.type = Types::GetTagsRequest
    GetUsageOutput.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId"))
    GetUsageOutput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startDate"))
    GetUsageOutput.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endDate"))
    GetUsageOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfKeyUsages, name: "items", traits: {"smithy.api#jsonName" => "values"}))
    GetUsageOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetUsageOutput.type = Types::GetUsageOutput
    GetUsagePlanKeyOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetUsagePlanKeyOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    GetUsagePlanKeyOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    GetUsagePlanKeyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    GetUsagePlanKeyOutput.type = Types::GetUsagePlanKeyOutput
    GetUsagePlanKeyRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsagePlanKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsagePlanKeyRequest.type = Types::GetUsagePlanKeyRequest
    GetUsagePlanKeysOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfUsagePlanKey, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetUsagePlanKeysOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetUsagePlanKeysOutput.type = Types::GetUsagePlanKeysOutput
    GetUsagePlanKeysRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsagePlanKeysRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetUsagePlanKeysRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetUsagePlanKeysRequest.add_member(:name_query, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nameQuery", traits: {"smithy.api#httpQuery" => "name"}))
    GetUsagePlanKeysRequest.type = Types::GetUsagePlanKeysRequest
    GetUsagePlanOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetUsagePlanOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    GetUsagePlanOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetUsagePlanOutput.add_member(:api_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfApiStage, name: "apiStages"))
    GetUsagePlanOutput.add_member(:throttle, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleSettings, name: "throttle"))
    GetUsagePlanOutput.add_member(:quota, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSettings, name: "quota"))
    GetUsagePlanOutput.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productCode"))
    GetUsagePlanOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GetUsagePlanOutput.type = Types::GetUsagePlanOutput
    GetUsagePlanRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsagePlanRequest.type = Types::GetUsagePlanRequest
    GetUsagePlansOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfUsagePlan, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetUsagePlansOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetUsagePlansOutput.type = Types::GetUsagePlansOutput
    GetUsagePlansRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetUsagePlansRequest.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyId", traits: {"smithy.api#httpQuery" => "keyId"}))
    GetUsagePlansRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetUsagePlansRequest.type = Types::GetUsagePlansRequest
    GetUsageRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsageRequest.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyId", traits: {"smithy.api#httpQuery" => "keyId"}))
    GetUsageRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startDate", traits: {"smithy.api#httpQuery" => "startDate", "smithy.api#required" => {}}))
    GetUsageRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endDate", traits: {"smithy.api#httpQuery" => "endDate", "smithy.api#required" => {}}))
    GetUsageRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetUsageRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetUsageRequest.type = Types::GetUsageRequest
    GetVpcLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetVpcLinkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    GetVpcLinkOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    GetVpcLinkOutput.add_member(:target_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "targetArns"))
    GetVpcLinkOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkStatus, name: "status"))
    GetVpcLinkOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusMessage"))
    GetVpcLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    GetVpcLinkOutput.type = Types::GetVpcLinkOutput
    GetVpcLinkRequest.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vpcLinkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcLinkRequest.type = Types::GetVpcLinkRequest
    GetVpcLinksOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfVpcLink, name: "items", traits: {"smithy.api#jsonName" => "item"}))
    GetVpcLinksOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetVpcLinksOutput.type = Types::GetVpcLinksOutput
    GetVpcLinksRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    GetVpcLinksRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetVpcLinksRequest.type = Types::GetVpcLinksRequest
    ImportApiKeysOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "ids"))
    ImportApiKeysOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    ImportApiKeysOutput.type = Types::ImportApiKeysOutput
    ImportApiKeysRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ImportApiKeysRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeysFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ImportApiKeysRequest.add_member(:fail_on_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "failOnWarnings", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "failonwarnings"}))
    ImportApiKeysRequest[:http_payload] = :body
    ImportApiKeysRequest[:http_payload_member] = ImportApiKeysRequest.member(:body)
    ImportApiKeysRequest.type = Types::ImportApiKeysRequest
    ImportDocumentationPartsOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "ids"))
    ImportDocumentationPartsOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    ImportDocumentationPartsOutput.type = Types::ImportDocumentationPartsOutput
    ImportDocumentationPartsRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ImportDocumentationPartsRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PutMode, name: "mode", traits: {"smithy.api#httpQuery" => "mode"}))
    ImportDocumentationPartsRequest.add_member(:fail_on_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "failOnWarnings", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "failonwarnings"}))
    ImportDocumentationPartsRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ImportDocumentationPartsRequest[:http_payload] = :body
    ImportDocumentationPartsRequest[:http_payload_member] = ImportDocumentationPartsRequest.member(:body)
    ImportDocumentationPartsRequest.type = Types::ImportDocumentationPartsRequest
    ImportRestApiOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    ImportRestApiOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ImportRestApiOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    ImportRestApiOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    ImportRestApiOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    ImportRestApiOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    ImportRestApiOutput.add_member(:binary_media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "binaryMediaTypes"))
    ImportRestApiOutput.add_member(:minimum_compression_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "minimumCompressionSize"))
    ImportRestApiOutput.add_member(:api_key_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeySourceType, name: "apiKeySource"))
    ImportRestApiOutput.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    ImportRestApiOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    ImportRestApiOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    ImportRestApiOutput.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "disableExecuteApiEndpoint", traits: {"smithy.api#default" => false}))
    ImportRestApiOutput.add_member(:root_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootResourceId"))
    ImportRestApiOutput.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    ImportRestApiOutput.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    ImportRestApiOutput.add_member(:api_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiStatus, name: "apiStatus"))
    ImportRestApiOutput.add_member(:api_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiStatusMessage"))
    ImportRestApiOutput.type = Types::ImportRestApiOutput
    ImportRestApiRequest.add_member(:fail_on_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "failOnWarnings", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "failonwarnings"}))
    ImportRestApiRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "parameters", traits: {"smithy.api#httpQueryParams" => {}}))
    ImportRestApiRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ImportRestApiRequest[:http_payload] = :body
    ImportRestApiRequest[:http_payload_member] = ImportRestApiRequest.member(:body)
    ImportRestApiRequest.type = Types::ImportRestApiRequest
    Integration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "type"))
    Integration.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod"))
    Integration.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uri"))
    Integration.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "connectionType"))
    Integration.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectionId"))
    Integration.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentials"))
    Integration.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestParameters"))
    Integration.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestTemplates"))
    Integration.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "passthroughBehavior"))
    Integration.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    Integration.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "timeoutInMillis", traits: {"smithy.api#default" => 0}))
    Integration.add_member(:cache_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheNamespace"))
    Integration.add_member(:cache_key_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "cacheKeyParameters"))
    Integration.add_member(:integration_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfIntegrationResponse, name: "integrationResponses"))
    Integration.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, name: "tlsConfig"))
    Integration.add_member(:response_transfer_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTransferMode, name: "responseTransferMode"))
    Integration.add_member(:integration_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "integrationTarget"))
    Integration.type = Types::Integration
    IntegrationResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    IntegrationResponse.add_member(:selection_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "selectionPattern"))
    IntegrationResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    IntegrationResponse.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    IntegrationResponse.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    IntegrationResponse.type = Types::IntegrationResponse
    IntegrationType.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    IntegrationType.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    IntegrationType.add_member(:mock, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOCK", traits: {"smithy.api#enumValue" => "MOCK"}))
    IntegrationType.add_member(:http_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_PROXY", traits: {"smithy.api#enumValue" => "HTTP_PROXY"}))
    IntegrationType.add_member(:aws_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_PROXY", traits: {"smithy.api#enumValue" => "AWS_PROXY"}))
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ipv4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dualstack", traits: {"smithy.api#enumValue" => "dualstack"}))
    LimitExceededException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListOfARNs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderARN, name: "member"))
    ListOfApiKey.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "member"))
    ListOfApiStage.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiStage, name: "member"))
    ListOfAuthorizer.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorizer, name: "member"))
    ListOfBasePathMapping.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BasePathMapping, name: "member"))
    ListOfClientCertificate.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientCertificate, name: "member"))
    ListOfDeployment.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Deployment, name: "member"))
    ListOfDocumentationPart.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPart, name: "member"))
    ListOfDocumentationVersion.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationVersion, name: "member"))
    ListOfDomainName.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "member"))
    ListOfDomainNameAccessAssociation.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameAccessAssociation, name: "member"))
    ListOfEndpointType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "member"))
    ListOfGatewayResponse.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponse, name: "member"))
    ListOfLong.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "member"))
    ListOfModel.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Model, name: "member"))
    ListOfPatchOperation.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOperation, name: "member"))
    ListOfRequestValidator.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestValidator, name: "member"))
    ListOfResource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ListOfRestApi.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RestApi, name: "member"))
    ListOfSdkConfigurationProperty.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SdkConfigurationProperty, name: "member"))
    ListOfSdkType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SdkType, name: "member"))
    ListOfStage.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, name: "member"))
    ListOfStageKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StageKey, name: "member"))
    ListOfString.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ListOfUsage.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLong, name: "member"))
    ListOfUsagePlan.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsagePlan, name: "member"))
    ListOfUsagePlanKey.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsagePlanKey, name: "member"))
    ListOfVpcLink.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLink, name: "member"))
    LocationStatusType.add_member(:documented, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENTED", traits: {"smithy.api#enumValue" => "DOCUMENTED"}))
    LocationStatusType.add_member(:undocumented, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDOCUMENTED", traits: {"smithy.api#enumValue" => "UNDOCUMENTED"}))
    MapOfApiStageThrottleSettings.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfApiStageThrottleSettings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleSettings, name: "value"))
    MapOfIntegrationResponse.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfIntegrationResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationResponse, name: "value"))
    MapOfKeyUsages.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfKeyUsages.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfUsage, name: "value"))
    MapOfMethod.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfMethod.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Method, name: "value"))
    MapOfMethodResponse.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfMethodResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodResponse, name: "value"))
    MapOfMethodSettings.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfMethodSettings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodSetting, name: "value"))
    MapOfMethodSnapshot.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfMethodSnapshot.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodSnapshot, name: "value"))
    MapOfStringToBoolean.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfStringToBoolean.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "value"))
    MapOfStringToList.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfStringToList.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "value"))
    MapOfStringToString.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapOfStringToString.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Method.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod"))
    Method.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizationType"))
    Method.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId"))
    Method.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "apiKeyRequired"))
    Method.add_member(:request_validator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "requestValidatorId"))
    Method.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operationName"))
    Method.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "requestParameters"))
    Method.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestModels"))
    Method.add_member(:method_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodResponse, name: "methodResponses"))
    Method.add_member(:method_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "methodIntegration"))
    Method.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "authorizationScopes"))
    Method.type = Types::Method
    MethodResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    MethodResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "responseParameters"))
    MethodResponse.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseModels"))
    MethodResponse.type = Types::MethodResponse
    MethodSetting.add_member(:metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "metricsEnabled", traits: {"smithy.api#default" => false}))
    MethodSetting.add_member(:logging_level, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "loggingLevel"))
    MethodSetting.add_member(:data_trace_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dataTraceEnabled", traits: {"smithy.api#default" => false}))
    MethodSetting.add_member(:throttling_burst_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "throttlingBurstLimit", traits: {"smithy.api#default" => 0}))
    MethodSetting.add_member(:throttling_rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "throttlingRateLimit", traits: {"smithy.api#default" => 0}))
    MethodSetting.add_member(:caching_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "cachingEnabled", traits: {"smithy.api#default" => false}))
    MethodSetting.add_member(:cache_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cacheTtlInSeconds", traits: {"smithy.api#default" => 0}))
    MethodSetting.add_member(:cache_data_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "cacheDataEncrypted", traits: {"smithy.api#default" => false}))
    MethodSetting.add_member(:require_authorization_for_cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "requireAuthorizationForCacheControl", traits: {"smithy.api#default" => false}))
    MethodSetting.add_member(:unauthorized_cache_control_header_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: UnauthorizedCacheControlHeaderStrategy, name: "unauthorizedCacheControlHeaderStrategy"))
    MethodSetting.type = Types::MethodSetting
    MethodSnapshot.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizationType"))
    MethodSnapshot.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "apiKeyRequired", traits: {"smithy.api#default" => false}))
    MethodSnapshot.type = Types::MethodSnapshot
    Model.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Model.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Model.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    Model.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schema"))
    Model.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentType"))
    Model.type = Types::Model
    MutualTlsAuthentication.add_member(:truststore_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "truststoreUri"))
    MutualTlsAuthentication.add_member(:truststore_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "truststoreVersion"))
    MutualTlsAuthentication.add_member(:truststore_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "truststoreWarnings"))
    MutualTlsAuthentication.type = Types::MutualTlsAuthentication
    MutualTlsAuthenticationInput.add_member(:truststore_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "truststoreUri"))
    MutualTlsAuthenticationInput.add_member(:truststore_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "truststoreVersion"))
    MutualTlsAuthenticationInput.type = Types::MutualTlsAuthenticationInput
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NotFoundException.type = Types::NotFoundException
    Op.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "add", traits: {"smithy.api#enumValue" => "add"}))
    Op.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "remove", traits: {"smithy.api#enumValue" => "remove"}))
    Op.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "replace", traits: {"smithy.api#enumValue" => "replace"}))
    Op.add_member(:move, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "move", traits: {"smithy.api#enumValue" => "move"}))
    Op.add_member(:copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "copy", traits: {"smithy.api#enumValue" => "copy"}))
    Op.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "test", traits: {"smithy.api#enumValue" => "test"}))
    PatchOperation.add_member(:op, ::Smithy::Schema::Shapes::MemberShape.new(target: Op, name: "op"))
    PatchOperation.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    PatchOperation.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    PatchOperation.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "from"))
    PatchOperation.type = Types::PatchOperation
    PathToMapOfMethodSnapshot.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    PathToMapOfMethodSnapshot.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodSnapshot, name: "value"))
    PutGatewayResponseOutput.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponseType, name: "responseType"))
    PutGatewayResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    PutGatewayResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    PutGatewayResponseOutput.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    PutGatewayResponseOutput.add_member(:default_response, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "defaultResponse", traits: {"smithy.api#default" => false}))
    PutGatewayResponseOutput.type = Types::PutGatewayResponseOutput
    PutGatewayResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGatewayResponseRequest.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponseType, name: "responseType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGatewayResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    PutGatewayResponseRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    PutGatewayResponseRequest.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    PutGatewayResponseRequest.type = Types::PutGatewayResponseRequest
    PutIntegrationOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "type"))
    PutIntegrationOutput.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod"))
    PutIntegrationOutput.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uri"))
    PutIntegrationOutput.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "connectionType"))
    PutIntegrationOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectionId"))
    PutIntegrationOutput.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentials"))
    PutIntegrationOutput.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestParameters"))
    PutIntegrationOutput.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestTemplates"))
    PutIntegrationOutput.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "passthroughBehavior"))
    PutIntegrationOutput.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    PutIntegrationOutput.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "timeoutInMillis", traits: {"smithy.api#default" => 0}))
    PutIntegrationOutput.add_member(:cache_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheNamespace"))
    PutIntegrationOutput.add_member(:cache_key_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "cacheKeyParameters"))
    PutIntegrationOutput.add_member(:integration_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfIntegrationResponse, name: "integrationResponses"))
    PutIntegrationOutput.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, name: "tlsConfig"))
    PutIntegrationOutput.add_member(:response_transfer_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTransferMode, name: "responseTransferMode"))
    PutIntegrationOutput.add_member(:integration_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "integrationTarget"))
    PutIntegrationOutput.type = Types::PutIntegrationOutput
    PutIntegrationRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#jsonName" => "requestHttpMethod", "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "type", traits: {"smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:integration_http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "integrationHttpMethod", traits: {"smithy.api#jsonName" => "httpMethod"}))
    PutIntegrationRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uri"))
    PutIntegrationRequest.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "connectionType"))
    PutIntegrationRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectionId"))
    PutIntegrationRequest.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentials"))
    PutIntegrationRequest.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestParameters"))
    PutIntegrationRequest.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestTemplates"))
    PutIntegrationRequest.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "passthroughBehavior"))
    PutIntegrationRequest.add_member(:cache_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheNamespace"))
    PutIntegrationRequest.add_member(:cache_key_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "cacheKeyParameters"))
    PutIntegrationRequest.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    PutIntegrationRequest.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "timeoutInMillis"))
    PutIntegrationRequest.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, name: "tlsConfig"))
    PutIntegrationRequest.add_member(:response_transfer_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTransferMode, name: "responseTransferMode"))
    PutIntegrationRequest.add_member(:integration_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "integrationTarget"))
    PutIntegrationRequest.type = Types::PutIntegrationRequest
    PutIntegrationResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    PutIntegrationResponseOutput.add_member(:selection_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "selectionPattern"))
    PutIntegrationResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    PutIntegrationResponseOutput.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    PutIntegrationResponseOutput.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    PutIntegrationResponseOutput.type = Types::PutIntegrationResponseOutput
    PutIntegrationResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationResponseRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationResponseRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationResponseRequest.add_member(:selection_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "selectionPattern"))
    PutIntegrationResponseRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    PutIntegrationResponseRequest.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    PutIntegrationResponseRequest.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    PutIntegrationResponseRequest.type = Types::PutIntegrationResponseRequest
    PutMethodOutput.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod"))
    PutMethodOutput.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizationType"))
    PutMethodOutput.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId"))
    PutMethodOutput.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "apiKeyRequired"))
    PutMethodOutput.add_member(:request_validator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "requestValidatorId"))
    PutMethodOutput.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operationName"))
    PutMethodOutput.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "requestParameters"))
    PutMethodOutput.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestModels"))
    PutMethodOutput.add_member(:method_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodResponse, name: "methodResponses"))
    PutMethodOutput.add_member(:method_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "methodIntegration"))
    PutMethodOutput.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "authorizationScopes"))
    PutMethodOutput.type = Types::PutMethodOutput
    PutMethodRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodRequest.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizationType", traits: {"smithy.api#required" => {}}))
    PutMethodRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId"))
    PutMethodRequest.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "apiKeyRequired", traits: {"smithy.api#default" => false}))
    PutMethodRequest.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operationName"))
    PutMethodRequest.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "requestParameters"))
    PutMethodRequest.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestModels"))
    PutMethodRequest.add_member(:request_validator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "requestValidatorId"))
    PutMethodRequest.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "authorizationScopes"))
    PutMethodRequest.type = Types::PutMethodRequest
    PutMethodResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    PutMethodResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "responseParameters"))
    PutMethodResponseOutput.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseModels"))
    PutMethodResponseOutput.type = Types::PutMethodResponseOutput
    PutMethodResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodResponseRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodResponseRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMethodResponseRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "responseParameters"))
    PutMethodResponseRequest.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseModels"))
    PutMethodResponseRequest.type = Types::PutMethodResponseRequest
    PutMode.add_member(:merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Merge", traits: {"smithy.api#enumValue" => "merge"}))
    PutMode.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Overwrite", traits: {"smithy.api#enumValue" => "overwrite"}))
    PutRestApiOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    PutRestApiOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    PutRestApiOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    PutRestApiOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    PutRestApiOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    PutRestApiOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    PutRestApiOutput.add_member(:binary_media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "binaryMediaTypes"))
    PutRestApiOutput.add_member(:minimum_compression_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "minimumCompressionSize"))
    PutRestApiOutput.add_member(:api_key_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeySourceType, name: "apiKeySource"))
    PutRestApiOutput.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    PutRestApiOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    PutRestApiOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    PutRestApiOutput.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "disableExecuteApiEndpoint", traits: {"smithy.api#default" => false}))
    PutRestApiOutput.add_member(:root_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootResourceId"))
    PutRestApiOutput.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    PutRestApiOutput.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    PutRestApiOutput.add_member(:api_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiStatus, name: "apiStatus"))
    PutRestApiOutput.add_member(:api_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiStatusMessage"))
    PutRestApiOutput.type = Types::PutRestApiOutput
    PutRestApiRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRestApiRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PutMode, name: "mode", traits: {"smithy.api#httpQuery" => "mode"}))
    PutRestApiRequest.add_member(:fail_on_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "failOnWarnings", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "failonwarnings"}))
    PutRestApiRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "parameters", traits: {"smithy.api#httpQueryParams" => {}}))
    PutRestApiRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutRestApiRequest[:http_payload] = :body
    PutRestApiRequest[:http_payload_member] = PutRestApiRequest.member(:body)
    PutRestApiRequest.type = Types::PutRestApiRequest
    QuotaPeriodType.add_member(:day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAY", traits: {"smithy.api#enumValue" => "DAY"}))
    QuotaPeriodType.add_member(:week, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEK", traits: {"smithy.api#enumValue" => "WEEK"}))
    QuotaPeriodType.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTH", traits: {"smithy.api#enumValue" => "MONTH"}))
    QuotaSettings.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "limit", traits: {"smithy.api#default" => 0}))
    QuotaSettings.add_member(:offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "offset", traits: {"smithy.api#default" => 0}))
    QuotaSettings.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaPeriodType, name: "period"))
    QuotaSettings.type = Types::QuotaSettings
    RejectDomainNameAccessAssociationRequest.add_member(:domain_name_access_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameAccessAssociationArn", traits: {"smithy.api#httpQuery" => "domainNameAccessAssociationArn", "smithy.api#required" => {}}))
    RejectDomainNameAccessAssociationRequest.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn", traits: {"smithy.api#httpQuery" => "domainNameArn", "smithy.api#required" => {}}))
    RejectDomainNameAccessAssociationRequest.type = Types::RejectDomainNameAccessAssociationRequest
    RequestValidator.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    RequestValidator.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    RequestValidator.add_member(:validate_request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestBody", traits: {"smithy.api#default" => false}))
    RequestValidator.add_member(:validate_request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestParameters", traits: {"smithy.api#default" => false}))
    RequestValidator.type = Types::RequestValidator
    Resource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Resource.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "parentId"))
    Resource.add_member(:path_part, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pathPart"))
    Resource.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    Resource.add_member(:resource_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethod, name: "resourceMethods"))
    Resource.type = Types::Resource
    ResourceOwner.add_member(:self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF", traits: {"smithy.api#enumValue" => "SELF"}))
    ResourceOwner.add_member(:other_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER_ACCOUNTS", traits: {"smithy.api#enumValue" => "OTHER_ACCOUNTS"}))
    ResponseTransferMode.add_member(:buffered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUFFERED", traits: {"smithy.api#enumValue" => "BUFFERED"}))
    ResponseTransferMode.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STREAM", traits: {"smithy.api#enumValue" => "STREAM"}))
    RestApi.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    RestApi.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    RestApi.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    RestApi.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    RestApi.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    RestApi.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    RestApi.add_member(:binary_media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "binaryMediaTypes"))
    RestApi.add_member(:minimum_compression_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "minimumCompressionSize"))
    RestApi.add_member(:api_key_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeySourceType, name: "apiKeySource"))
    RestApi.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    RestApi.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    RestApi.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    RestApi.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "disableExecuteApiEndpoint", traits: {"smithy.api#default" => false}))
    RestApi.add_member(:root_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootResourceId"))
    RestApi.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    RestApi.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    RestApi.add_member(:api_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiStatus, name: "apiStatus"))
    RestApi.add_member(:api_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiStatusMessage"))
    RestApi.type = Types::RestApi
    RoutingMode.add_member(:base_path_mapping_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE_PATH_MAPPING_ONLY", traits: {"smithy.api#enumValue" => "BASE_PATH_MAPPING_ONLY"}))
    RoutingMode.add_member(:routing_rule_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTING_RULE_ONLY", traits: {"smithy.api#enumValue" => "ROUTING_RULE_ONLY"}))
    RoutingMode.add_member(:routing_rule_then_base_path_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTING_RULE_THEN_BASE_PATH_MAPPING", traits: {"smithy.api#enumValue" => "ROUTING_RULE_THEN_BASE_PATH_MAPPING"}))
    SdkConfigurationProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    SdkConfigurationProperty.add_member(:friendly_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "friendlyName"))
    SdkConfigurationProperty.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    SdkConfigurationProperty.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "required", traits: {"smithy.api#default" => false}))
    SdkConfigurationProperty.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "defaultValue"))
    SdkConfigurationProperty.type = Types::SdkConfigurationProperty
    SdkResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    SdkResponse.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentDisposition", traits: {"smithy.api#httpHeader" => "Content-Disposition"}))
    SdkResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "body", traits: {"smithy.api#httpPayload" => {}}))
    SdkResponse[:http_payload] = :body
    SdkResponse[:http_payload_member] = SdkResponse.member(:body)
    SdkResponse.type = Types::SdkResponse
    SdkType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    SdkType.add_member(:friendly_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "friendlyName"))
    SdkType.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    SdkType.add_member(:configuration_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfSdkConfigurationProperty, name: "configurationProperties"))
    SdkType.type = Types::SdkType
    SecurityPolicy.add_member(:tls_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_1_0", traits: {"smithy.api#enumValue" => "TLS_1_0"}))
    SecurityPolicy.add_member(:tls_1_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_1_2", traits: {"smithy.api#enumValue" => "TLS_1_2"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_3_2025_09, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_3_2025_09", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_3_2025_09"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_3_fips_2025_09, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_3_FIPS_2025_09", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_3_FIPS_2025_09"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_2_pfs_pq_2025_09, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_2_fips_pq_2025_09, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_2_fips_pfs_pq_2025_09, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_2_ext2_pq_2025_09, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_2_ext2_fips_pq_2025_09, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_2_pq_2025_09, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_2_PQ_2025_09", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_2_PQ_2025_09"}))
    SecurityPolicy.add_member(:security_policy_tls13_1_2_2021_06, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_1_2_2021_06", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_1_2_2021_06"}))
    SecurityPolicy.add_member(:security_policy_tls13_2025_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS13_2025_EDGE", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS13_2025_EDGE"}))
    SecurityPolicy.add_member(:security_policy_tls12_pfs_2025_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS12_PFS_2025_EDGE", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS12_PFS_2025_EDGE"}))
    SecurityPolicy.add_member(:security_policy_tls12_2018_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityPolicy_TLS12_2018_EDGE", traits: {"smithy.api#enumValue" => "SecurityPolicy_TLS12_2018_EDGE"}))
    ServiceUnavailableException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    Stage.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId"))
    Stage.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    Stage.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName"))
    Stage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    Stage.add_member(:cache_cluster_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "cacheClusterEnabled", traits: {"smithy.api#default" => false}))
    Stage.add_member(:cache_cluster_size, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterSize, name: "cacheClusterSize"))
    Stage.add_member(:cache_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterStatus, name: "cacheClusterStatus"))
    Stage.add_member(:method_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodSettings, name: "methodSettings"))
    Stage.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "variables"))
    Stage.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion"))
    Stage.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, name: "accessLogSettings"))
    Stage.add_member(:canary_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CanarySettings, name: "canarySettings"))
    Stage.add_member(:tracing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "tracingEnabled", traits: {"smithy.api#default" => false}))
    Stage.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "webAclArn"))
    Stage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    Stage.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    Stage.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDate"))
    Stage.type = Types::Stage
    StageKey.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId"))
    StageKey.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName"))
    StageKey.type = Types::StageKey
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TestInvokeAuthorizerRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeAuthorizerRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeAuthorizerRequest.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "headers"))
    TestInvokeAuthorizerRequest.add_member(:multi_value_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToList, name: "multiValueHeaders"))
    TestInvokeAuthorizerRequest.add_member(:path_with_query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pathWithQueryString"))
    TestInvokeAuthorizerRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "body"))
    TestInvokeAuthorizerRequest.add_member(:stage_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "stageVariables"))
    TestInvokeAuthorizerRequest.add_member(:additional_context, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "additionalContext"))
    TestInvokeAuthorizerRequest.type = Types::TestInvokeAuthorizerRequest
    TestInvokeAuthorizerResponse.add_member(:client_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "clientStatus", traits: {"smithy.api#default" => 0}))
    TestInvokeAuthorizerResponse.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "log"))
    TestInvokeAuthorizerResponse.add_member(:latency, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "latency", traits: {"smithy.api#default" => 0}))
    TestInvokeAuthorizerResponse.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalId"))
    TestInvokeAuthorizerResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    TestInvokeAuthorizerResponse.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToList, name: "authorization"))
    TestInvokeAuthorizerResponse.add_member(:claims, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "claims"))
    TestInvokeAuthorizerResponse.type = Types::TestInvokeAuthorizerResponse
    TestInvokeMethodRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeMethodRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeMethodRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestInvokeMethodRequest.add_member(:path_with_query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pathWithQueryString"))
    TestInvokeMethodRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "body"))
    TestInvokeMethodRequest.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "headers"))
    TestInvokeMethodRequest.add_member(:multi_value_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToList, name: "multiValueHeaders"))
    TestInvokeMethodRequest.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    TestInvokeMethodRequest.add_member(:stage_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "stageVariables"))
    TestInvokeMethodRequest.type = Types::TestInvokeMethodRequest
    TestInvokeMethodResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "status", traits: {"smithy.api#default" => 0}))
    TestInvokeMethodResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "body"))
    TestInvokeMethodResponse.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "headers"))
    TestInvokeMethodResponse.add_member(:multi_value_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToList, name: "multiValueHeaders"))
    TestInvokeMethodResponse.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "log"))
    TestInvokeMethodResponse.add_member(:latency, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "latency", traits: {"smithy.api#default" => 0}))
    TestInvokeMethodResponse.type = Types::TestInvokeMethodResponse
    ThrottleSettings.add_member(:burst_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "burstLimit", traits: {"smithy.api#default" => 0}))
    ThrottleSettings.add_member(:rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "rateLimit", traits: {"smithy.api#default" => 0}))
    ThrottleSettings.type = Types::ThrottleSettings
    TlsConfig.add_member(:insecure_skip_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "insecureSkipVerification", traits: {"smithy.api#default" => false}))
    TlsConfig.type = Types::TlsConfig
    TooManyRequestsException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnauthorizedCacheControlHeaderStrategy.add_member(:fail_with_403, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL_WITH_403", traits: {"smithy.api#enumValue" => "FAIL_WITH_403"}))
    UnauthorizedCacheControlHeaderStrategy.add_member(:succeed_with_response_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEED_WITH_RESPONSE_HEADER", traits: {"smithy.api#enumValue" => "SUCCEED_WITH_RESPONSE_HEADER"}))
    UnauthorizedCacheControlHeaderStrategy.add_member(:succeed_without_response_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEED_WITHOUT_RESPONSE_HEADER", traits: {"smithy.api#enumValue" => "SUCCEED_WITHOUT_RESPONSE_HEADER"}))
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAccountOutput.add_member(:cloudwatch_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cloudwatchRoleArn"))
    UpdateAccountOutput.add_member(:throttle_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleSettings, name: "throttleSettings"))
    UpdateAccountOutput.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "features"))
    UpdateAccountOutput.add_member(:api_key_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiKeyVersion"))
    UpdateAccountOutput.type = Types::UpdateAccountOutput
    UpdateAccountRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateAccountRequest.type = Types::UpdateAccountRequest
    UpdateApiKeyOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateApiKeyOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    UpdateApiKeyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UpdateApiKeyOutput.add_member(:customer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customerId"))
    UpdateApiKeyOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateApiKeyOutput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    UpdateApiKeyOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    UpdateApiKeyOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDate"))
    UpdateApiKeyOutput.add_member(:stage_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "stageKeys"))
    UpdateApiKeyOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    UpdateApiKeyOutput.type = Types::UpdateApiKeyOutput
    UpdateApiKeyRequest.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiKey", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateApiKeyRequest.type = Types::UpdateApiKeyRequest
    UpdateAuthorizerOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateAuthorizerOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UpdateAuthorizerOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, name: "type"))
    UpdateAuthorizerOutput.add_member(:provider_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfARNs, name: "providerARNs"))
    UpdateAuthorizerOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authType"))
    UpdateAuthorizerOutput.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerUri"))
    UpdateAuthorizerOutput.add_member(:authorizer_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerCredentials"))
    UpdateAuthorizerOutput.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identitySource"))
    UpdateAuthorizerOutput.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityValidationExpression"))
    UpdateAuthorizerOutput.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "authorizerResultTtlInSeconds"))
    UpdateAuthorizerOutput.type = Types::UpdateAuthorizerOutput
    UpdateAuthorizerRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAuthorizerRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAuthorizerRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateAuthorizerRequest.type = Types::UpdateAuthorizerRequest
    UpdateBasePathMappingOutput.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "basePath"))
    UpdateBasePathMappingOutput.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId"))
    UpdateBasePathMappingOutput.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stage"))
    UpdateBasePathMappingOutput.type = Types::UpdateBasePathMappingOutput
    UpdateBasePathMappingRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBasePathMappingRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    UpdateBasePathMappingRequest.add_member(:base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "basePath", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBasePathMappingRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateBasePathMappingRequest.type = Types::UpdateBasePathMappingRequest
    UpdateClientCertificateOutput.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    UpdateClientCertificateOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateClientCertificateOutput.add_member(:pem_encoded_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pemEncodedCertificate"))
    UpdateClientCertificateOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    UpdateClientCertificateOutput.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expirationDate"))
    UpdateClientCertificateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    UpdateClientCertificateOutput.type = Types::UpdateClientCertificateOutput
    UpdateClientCertificateRequest.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClientCertificateRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateClientCertificateRequest.type = Types::UpdateClientCertificateRequest
    UpdateDeploymentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateDeploymentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateDeploymentOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    UpdateDeploymentOutput.add_member(:api_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: PathToMapOfMethodSnapshot, name: "apiSummary"))
    UpdateDeploymentOutput.type = Types::UpdateDeploymentOutput
    UpdateDeploymentRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateDeploymentRequest.type = Types::UpdateDeploymentRequest
    UpdateDocumentationPartOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateDocumentationPartOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentationPartLocation, name: "location"))
    UpdateDocumentationPartOutput.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "properties"))
    UpdateDocumentationPartOutput.type = Types::UpdateDocumentationPartOutput
    UpdateDocumentationPartRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentationPartRequest.add_member(:documentation_part_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationPartId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentationPartRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateDocumentationPartRequest.type = Types::UpdateDocumentationPartRequest
    UpdateDocumentationVersionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    UpdateDocumentationVersionOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    UpdateDocumentationVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateDocumentationVersionOutput.type = Types::UpdateDocumentationVersionOutput
    UpdateDocumentationVersionRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentationVersionRequest.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentationVersionRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateDocumentationVersionRequest.type = Types::UpdateDocumentationVersionRequest
    UpdateDomainNameOutput.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName"))
    UpdateDomainNameOutput.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId"))
    UpdateDomainNameOutput.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameArn"))
    UpdateDomainNameOutput.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateName"))
    UpdateDomainNameOutput.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateArn"))
    UpdateDomainNameOutput.add_member(:certificate_upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "certificateUploadDate"))
    UpdateDomainNameOutput.add_member(:regional_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalDomainName"))
    UpdateDomainNameOutput.add_member(:regional_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalHostedZoneId"))
    UpdateDomainNameOutput.add_member(:regional_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateName"))
    UpdateDomainNameOutput.add_member(:regional_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "regionalCertificateArn"))
    UpdateDomainNameOutput.add_member(:distribution_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "distributionDomainName"))
    UpdateDomainNameOutput.add_member(:distribution_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "distributionHostedZoneId"))
    UpdateDomainNameOutput.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    UpdateDomainNameOutput.add_member(:domain_name_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameStatus, name: "domainNameStatus"))
    UpdateDomainNameOutput.add_member(:domain_name_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameStatusMessage"))
    UpdateDomainNameOutput.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    UpdateDomainNameOutput.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    UpdateDomainNameOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    UpdateDomainNameOutput.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthentication, name: "mutualTlsAuthentication"))
    UpdateDomainNameOutput.add_member(:ownership_verification_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownershipVerificationCertificateArn"))
    UpdateDomainNameOutput.add_member(:management_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "managementPolicy"))
    UpdateDomainNameOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    UpdateDomainNameOutput.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, name: "routingMode"))
    UpdateDomainNameOutput.type = Types::UpdateDomainNameOutput
    UpdateDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainNameRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    UpdateDomainNameRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateDomainNameRequest.type = Types::UpdateDomainNameRequest
    UpdateGatewayResponseOutput.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponseType, name: "responseType"))
    UpdateGatewayResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    UpdateGatewayResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    UpdateGatewayResponseOutput.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    UpdateGatewayResponseOutput.add_member(:default_response, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "defaultResponse", traits: {"smithy.api#default" => false}))
    UpdateGatewayResponseOutput.type = Types::UpdateGatewayResponseOutput
    UpdateGatewayResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayResponseRequest.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayResponseType, name: "responseType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayResponseRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateGatewayResponseRequest.type = Types::UpdateGatewayResponseRequest
    UpdateIntegrationOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "type"))
    UpdateIntegrationOutput.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod"))
    UpdateIntegrationOutput.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uri"))
    UpdateIntegrationOutput.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "connectionType"))
    UpdateIntegrationOutput.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectionId"))
    UpdateIntegrationOutput.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentials"))
    UpdateIntegrationOutput.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestParameters"))
    UpdateIntegrationOutput.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestTemplates"))
    UpdateIntegrationOutput.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "passthroughBehavior"))
    UpdateIntegrationOutput.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    UpdateIntegrationOutput.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "timeoutInMillis", traits: {"smithy.api#default" => 0}))
    UpdateIntegrationOutput.add_member(:cache_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheNamespace"))
    UpdateIntegrationOutput.add_member(:cache_key_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "cacheKeyParameters"))
    UpdateIntegrationOutput.add_member(:integration_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfIntegrationResponse, name: "integrationResponses"))
    UpdateIntegrationOutput.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, name: "tlsConfig"))
    UpdateIntegrationOutput.add_member(:response_transfer_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTransferMode, name: "responseTransferMode"))
    UpdateIntegrationOutput.add_member(:integration_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "integrationTarget"))
    UpdateIntegrationOutput.type = Types::UpdateIntegrationOutput
    UpdateIntegrationRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateIntegrationRequest.type = Types::UpdateIntegrationRequest
    UpdateIntegrationResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    UpdateIntegrationResponseOutput.add_member(:selection_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "selectionPattern"))
    UpdateIntegrationResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseParameters"))
    UpdateIntegrationResponseOutput.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseTemplates"))
    UpdateIntegrationResponseOutput.add_member(:content_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, name: "contentHandling"))
    UpdateIntegrationResponseOutput.type = Types::UpdateIntegrationResponseOutput
    UpdateIntegrationResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateIntegrationResponseRequest.type = Types::UpdateIntegrationResponseRequest
    UpdateMethodOutput.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod"))
    UpdateMethodOutput.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizationType"))
    UpdateMethodOutput.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizerId"))
    UpdateMethodOutput.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "apiKeyRequired"))
    UpdateMethodOutput.add_member(:request_validator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "requestValidatorId"))
    UpdateMethodOutput.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operationName"))
    UpdateMethodOutput.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "requestParameters"))
    UpdateMethodOutput.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "requestModels"))
    UpdateMethodOutput.add_member(:method_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodResponse, name: "methodResponses"))
    UpdateMethodOutput.add_member(:method_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "methodIntegration"))
    UpdateMethodOutput.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "authorizationScopes"))
    UpdateMethodOutput.type = Types::UpdateMethodOutput
    UpdateMethodRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateMethodRequest.type = Types::UpdateMethodRequest
    UpdateMethodResponseOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode"))
    UpdateMethodResponseOutput.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToBoolean, name: "responseParameters"))
    UpdateMethodResponseOutput.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "responseModels"))
    UpdateMethodResponseOutput.type = Types::UpdateMethodResponseOutput
    UpdateMethodResponseRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodResponseRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodResponseRequest.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "httpMethod", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMethodResponseRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateMethodResponseRequest.type = Types::UpdateMethodResponseRequest
    UpdateModelOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateModelOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UpdateModelOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateModelOutput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "schema"))
    UpdateModelOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentType"))
    UpdateModelOutput.type = Types::UpdateModelOutput
    UpdateModelRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "modelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateModelRequest.type = Types::UpdateModelRequest
    UpdateRequestValidatorOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateRequestValidatorOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UpdateRequestValidatorOutput.add_member(:validate_request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestBody", traits: {"smithy.api#default" => false}))
    UpdateRequestValidatorOutput.add_member(:validate_request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "validateRequestParameters", traits: {"smithy.api#default" => false}))
    UpdateRequestValidatorOutput.type = Types::UpdateRequestValidatorOutput
    UpdateRequestValidatorRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRequestValidatorRequest.add_member(:request_validator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "requestValidatorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRequestValidatorRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateRequestValidatorRequest.type = Types::UpdateRequestValidatorRequest
    UpdateResourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateResourceOutput.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "parentId"))
    UpdateResourceOutput.add_member(:path_part, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pathPart"))
    UpdateResourceOutput.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    UpdateResourceOutput.add_member(:resource_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethod, name: "resourceMethods"))
    UpdateResourceOutput.type = Types::UpdateResourceOutput
    UpdateResourceRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateResourceRequest.type = Types::UpdateResourceRequest
    UpdateRestApiOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateRestApiOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UpdateRestApiOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateRestApiOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    UpdateRestApiOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    UpdateRestApiOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "warnings"))
    UpdateRestApiOutput.add_member(:binary_media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "binaryMediaTypes"))
    UpdateRestApiOutput.add_member(:minimum_compression_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, name: "minimumCompressionSize"))
    UpdateRestApiOutput.add_member(:api_key_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeySourceType, name: "apiKeySource"))
    UpdateRestApiOutput.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfiguration, name: "endpointConfiguration"))
    UpdateRestApiOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policy"))
    UpdateRestApiOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    UpdateRestApiOutput.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "disableExecuteApiEndpoint", traits: {"smithy.api#default" => false}))
    UpdateRestApiOutput.add_member(:root_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootResourceId"))
    UpdateRestApiOutput.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, name: "securityPolicy"))
    UpdateRestApiOutput.add_member(:endpoint_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessMode, name: "endpointAccessMode"))
    UpdateRestApiOutput.add_member(:api_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiStatus, name: "apiStatus"))
    UpdateRestApiOutput.add_member(:api_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "apiStatusMessage"))
    UpdateRestApiOutput.type = Types::UpdateRestApiOutput
    UpdateRestApiRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRestApiRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateRestApiRequest.type = Types::UpdateRestApiRequest
    UpdateStageOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentId"))
    UpdateStageOutput.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientCertificateId"))
    UpdateStageOutput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName"))
    UpdateStageOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateStageOutput.add_member(:cache_cluster_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "cacheClusterEnabled", traits: {"smithy.api#default" => false}))
    UpdateStageOutput.add_member(:cache_cluster_size, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterSize, name: "cacheClusterSize"))
    UpdateStageOutput.add_member(:cache_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterStatus, name: "cacheClusterStatus"))
    UpdateStageOutput.add_member(:method_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfMethodSettings, name: "methodSettings"))
    UpdateStageOutput.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "variables"))
    UpdateStageOutput.add_member(:documentation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "documentationVersion"))
    UpdateStageOutput.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, name: "accessLogSettings"))
    UpdateStageOutput.add_member(:canary_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CanarySettings, name: "canarySettings"))
    UpdateStageOutput.add_member(:tracing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "tracingEnabled", traits: {"smithy.api#default" => false}))
    UpdateStageOutput.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "webAclArn"))
    UpdateStageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    UpdateStageOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdDate"))
    UpdateStageOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedDate"))
    UpdateStageOutput.type = Types::UpdateStageOutput
    UpdateStageRequest.add_member(:rest_api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "restApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStageRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStageRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateStageRequest.type = Types::UpdateStageRequest
    UpdateUsageOutput.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId"))
    UpdateUsageOutput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startDate"))
    UpdateUsageOutput.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endDate"))
    UpdateUsageOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfKeyUsages, name: "items", traits: {"smithy.api#jsonName" => "values"}))
    UpdateUsageOutput.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "position", traits: {"smithy.api#httpQuery" => "position"}))
    UpdateUsageOutput.type = Types::UpdateUsageOutput
    UpdateUsagePlanOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateUsagePlanOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UpdateUsagePlanOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateUsagePlanOutput.add_member(:api_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfApiStage, name: "apiStages"))
    UpdateUsagePlanOutput.add_member(:throttle, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleSettings, name: "throttle"))
    UpdateUsagePlanOutput.add_member(:quota, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSettings, name: "quota"))
    UpdateUsagePlanOutput.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productCode"))
    UpdateUsagePlanOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    UpdateUsagePlanOutput.type = Types::UpdateUsagePlanOutput
    UpdateUsagePlanRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUsagePlanRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateUsagePlanRequest.type = Types::UpdateUsagePlanRequest
    UpdateUsageRequest.add_member(:usage_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usagePlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUsageRequest.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUsageRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateUsageRequest.type = Types::UpdateUsageRequest
    UpdateVpcLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UpdateVpcLinkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UpdateVpcLinkOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UpdateVpcLinkOutput.add_member(:target_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "targetArns"))
    UpdateVpcLinkOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkStatus, name: "status"))
    UpdateVpcLinkOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusMessage"))
    UpdateVpcLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    UpdateVpcLinkOutput.type = Types::UpdateVpcLinkOutput
    UpdateVpcLinkRequest.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vpcLinkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVpcLinkRequest.add_member(:patch_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPatchOperation, name: "patchOperations"))
    UpdateVpcLinkRequest.type = Types::UpdateVpcLinkRequest
    UsagePlan.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UsagePlan.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UsagePlan.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    UsagePlan.add_member(:api_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfApiStage, name: "apiStages"))
    UsagePlan.add_member(:throttle, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleSettings, name: "throttle"))
    UsagePlan.add_member(:quota, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaSettings, name: "quota"))
    UsagePlan.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productCode"))
    UsagePlan.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    UsagePlan.type = Types::UsagePlan
    UsagePlanKey.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    UsagePlanKey.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    UsagePlanKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    UsagePlanKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    UsagePlanKey.type = Types::UsagePlanKey
    VpcLink.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    VpcLink.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    VpcLink.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    VpcLink.add_member(:target_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "targetArns"))
    VpcLink.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkStatus, name: "status"))
    VpcLink.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusMessage"))
    VpcLink.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfStringToString, name: "tags"))
    VpcLink.type = Types::VpcLink
    VpcLinkStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VpcLinkStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    VpcLinkStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    VpcLinkStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))

    BackplaneControlService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.apigateway#BackplaneControlService"
      service.name = "BackplaneControlService"
      service.version = "2015-07-09"
      service.traits = {"aws.api#service" => {"sdkId" => "API Gateway", "arnNamespace" => "apigateway", "cloudFormationName" => "ApiGateway", "cloudTrailEventSource" => "apigateway.amazonaws.com", "docId" => "apigateway-2015-07-09", "endpointPrefix" => "apigateway"}, "aws.auth#sigv4" => {"name" => "apigateway"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon API Gateway", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://apigateway-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://apigateway-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://apigateway.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://apigateway.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateApiKey"
        operation.name = "CreateApiKey"
        operation.input = CreateApiKeyRequest
        operation.output = CreateApiKeyOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apikeys", "code" => 201}}
      end)
      service.add_operation(:create_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateAuthorizer"
        operation.name = "CreateAuthorizer"
        operation.input = CreateAuthorizerRequest
        operation.output = CreateAuthorizerOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/authorizers", "code" => 201}}
      end)
      service.add_operation(:create_base_path_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateBasePathMapping"
        operation.name = "CreateBasePathMapping"
        operation.input = CreateBasePathMappingRequest
        operation.output = CreateBasePathMappingOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domainnames/{domainName}/basepathmappings", "code" => 201}}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = CreateDeploymentRequest
        operation.output = CreateDeploymentOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/deployments", "code" => 201}}
      end)
      service.add_operation(:create_documentation_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDocumentationPart"
        operation.name = "CreateDocumentationPart"
        operation.input = CreateDocumentationPartRequest
        operation.output = CreateDocumentationPartOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/documentation/parts", "code" => 201}}
      end)
      service.add_operation(:create_documentation_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDocumentationVersion"
        operation.name = "CreateDocumentationVersion"
        operation.input = CreateDocumentationVersionRequest
        operation.output = CreateDocumentationVersionOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/documentation/versions", "code" => 201}}
      end)
      service.add_operation(:create_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDomainName"
        operation.name = "CreateDomainName"
        operation.input = CreateDomainNameRequest
        operation.output = CreateDomainNameOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domainnames", "code" => 201}}
      end)
      service.add_operation(:create_domain_name_access_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateDomainNameAccessAssociation"
        operation.name = "CreateDomainNameAccessAssociation"
        operation.input = CreateDomainNameAccessAssociationRequest
        operation.output = CreateDomainNameAccessAssociationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domainnameaccessassociations", "code" => 201}}
      end)
      service.add_operation(:create_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateModel"
        operation.name = "CreateModel"
        operation.input = CreateModelRequest
        operation.output = CreateModelOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/models", "code" => 201}}
      end)
      service.add_operation(:create_request_validator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateRequestValidator"
        operation.name = "CreateRequestValidator"
        operation.input = CreateRequestValidatorRequest
        operation.output = CreateRequestValidatorOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/requestvalidators", "code" => 201}}
      end)
      service.add_operation(:create_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateResource"
        operation.name = "CreateResource"
        operation.input = CreateResourceRequest
        operation.output = CreateResourceOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/resources/{parentId}", "code" => 201}}
      end)
      service.add_operation(:create_rest_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateRestApi"
        operation.name = "CreateRestApi"
        operation.input = CreateRestApiRequest
        operation.output = CreateRestApiOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis", "code" => 201}}
      end)
      service.add_operation(:create_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateStage"
        operation.name = "CreateStage"
        operation.input = CreateStageRequest
        operation.output = CreateStageOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/stages", "code" => 201}}
      end)
      service.add_operation(:create_usage_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateUsagePlan"
        operation.name = "CreateUsagePlan"
        operation.input = CreateUsagePlanRequest
        operation.output = CreateUsagePlanOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/usageplans", "code" => 201}}
      end)
      service.add_operation(:create_usage_plan_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateUsagePlanKey"
        operation.name = "CreateUsagePlanKey"
        operation.input = CreateUsagePlanKeyRequest
        operation.output = CreateUsagePlanKeyOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/usageplans/{usagePlanId}/keys", "code" => 201}}
      end)
      service.add_operation(:create_vpc_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#CreateVpcLink"
        operation.name = "CreateVpcLink"
        operation.input = CreateVpcLinkRequest
        operation.output = CreateVpcLinkOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/vpclinks", "code" => 202}}
      end)
      service.add_operation(:delete_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteApiKey"
        operation.name = "DeleteApiKey"
        operation.input = DeleteApiKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apikeys/{apiKey}", "code" => 202}}
      end)
      service.add_operation(:delete_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteAuthorizer"
        operation.name = "DeleteAuthorizer"
        operation.input = DeleteAuthorizerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/authorizers/{authorizerId}", "code" => 202}}
      end)
      service.add_operation(:delete_base_path_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteBasePathMapping"
        operation.name = "DeleteBasePathMapping"
        operation.input = DeleteBasePathMappingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domainnames/{domainName}/basepathmappings/{basePath}", "code" => 202}}
      end)
      service.add_operation(:delete_client_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteClientCertificate"
        operation.name = "DeleteClientCertificate"
        operation.input = DeleteClientCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clientcertificates/{clientCertificateId}", "code" => 202}}
      end)
      service.add_operation(:delete_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = DeleteDeploymentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/deployments/{deploymentId}", "code" => 202}}
      end)
      service.add_operation(:delete_documentation_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDocumentationPart"
        operation.name = "DeleteDocumentationPart"
        operation.input = DeleteDocumentationPartRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/documentation/parts/{documentationPartId}", "code" => 202}}
      end)
      service.add_operation(:delete_documentation_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDocumentationVersion"
        operation.name = "DeleteDocumentationVersion"
        operation.input = DeleteDocumentationVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/documentation/versions/{documentationVersion}", "code" => 202}}
      end)
      service.add_operation(:delete_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDomainName"
        operation.name = "DeleteDomainName"
        operation.input = DeleteDomainNameRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domainnames/{domainName}", "code" => 202}}
      end)
      service.add_operation(:delete_domain_name_access_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteDomainNameAccessAssociation"
        operation.name = "DeleteDomainNameAccessAssociation"
        operation.input = DeleteDomainNameAccessAssociationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domainnameaccessassociations/{domainNameAccessAssociationArn}", "code" => 202}}
      end)
      service.add_operation(:delete_gateway_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteGatewayResponse"
        operation.name = "DeleteGatewayResponse"
        operation.input = DeleteGatewayResponseRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/gatewayresponses/{responseType}", "code" => 202}}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = DeleteIntegrationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration", "code" => 204}}
      end)
      service.add_operation(:delete_integration_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteIntegrationResponse"
        operation.name = "DeleteIntegrationResponse"
        operation.input = DeleteIntegrationResponseRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}", "code" => 204}}
      end)
      service.add_operation(:delete_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteMethod"
        operation.name = "DeleteMethod"
        operation.input = DeleteMethodRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 204}}
      end)
      service.add_operation(:delete_method_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteMethodResponse"
        operation.name = "DeleteMethodResponse"
        operation.input = DeleteMethodResponseRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}", "code" => 204}}
      end)
      service.add_operation(:delete_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteModel"
        operation.name = "DeleteModel"
        operation.input = DeleteModelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/models/{modelName}", "code" => 202}}
      end)
      service.add_operation(:delete_request_validator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteRequestValidator"
        operation.name = "DeleteRequestValidator"
        operation.input = DeleteRequestValidatorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/requestvalidators/{requestValidatorId}", "code" => 202}}
      end)
      service.add_operation(:delete_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteResource"
        operation.name = "DeleteResource"
        operation.input = DeleteResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/resources/{resourceId}", "code" => 202}}
      end)
      service.add_operation(:delete_rest_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteRestApi"
        operation.name = "DeleteRestApi"
        operation.input = DeleteRestApiRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}", "code" => 202}}
      end)
      service.add_operation(:delete_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteStage"
        operation.name = "DeleteStage"
        operation.input = DeleteStageRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/stages/{stageName}", "code" => 202}}
      end)
      service.add_operation(:delete_usage_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteUsagePlan"
        operation.name = "DeleteUsagePlan"
        operation.input = DeleteUsagePlanRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/usageplans/{usagePlanId}", "code" => 202}}
      end)
      service.add_operation(:delete_usage_plan_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteUsagePlanKey"
        operation.name = "DeleteUsagePlanKey"
        operation.input = DeleteUsagePlanKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/usageplans/{usagePlanId}/keys/{keyId}", "code" => 202}}
      end)
      service.add_operation(:delete_vpc_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#DeleteVpcLink"
        operation.name = "DeleteVpcLink"
        operation.input = DeleteVpcLinkRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/vpclinks/{vpcLinkId}", "code" => 202}}
      end)
      service.add_operation(:flush_stage_authorizers_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#FlushStageAuthorizersCache"
        operation.name = "FlushStageAuthorizersCache"
        operation.input = FlushStageAuthorizersCacheRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/stages/{stageName}/cache/authorizers", "code" => 202}}
      end)
      service.add_operation(:flush_stage_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#FlushStageCache"
        operation.name = "FlushStageCache"
        operation.input = FlushStageCacheRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/restapis/{restApiId}/stages/{stageName}/cache/data", "code" => 202}}
      end)
      service.add_operation(:generate_client_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GenerateClientCertificate"
        operation.name = "GenerateClientCertificate"
        operation.input = GenerateClientCertificateRequest
        operation.output = GenerateClientCertificateOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clientcertificates", "code" => 201}}
      end)
      service.add_operation(:get_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetAccount"
        operation.name = "GetAccount"
        operation.input = GetAccountRequest
        operation.output = GetAccountOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account", "code" => 200}}
      end)
      service.add_operation(:get_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetApiKey"
        operation.name = "GetApiKey"
        operation.input = GetApiKeyRequest
        operation.output = GetApiKeyOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apikeys/{apiKey}", "code" => 200}}
      end)
      service.add_operation(:get_api_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetApiKeys"
        operation.name = "GetApiKeys"
        operation.input = GetApiKeysRequest
        operation.output = GetApiKeysOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apikeys", "code" => 200}}
        operation[:paginator] = Paginators::GetApiKeys.new
      end)
      service.add_operation(:get_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetAuthorizer"
        operation.name = "GetAuthorizer"
        operation.input = GetAuthorizerRequest
        operation.output = GetAuthorizerOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/authorizers/{authorizerId}", "code" => 200}}
      end)
      service.add_operation(:get_authorizers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetAuthorizers"
        operation.name = "GetAuthorizers"
        operation.input = GetAuthorizersRequest
        operation.output = GetAuthorizersOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/authorizers", "code" => 200}}
      end)
      service.add_operation(:get_base_path_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetBasePathMapping"
        operation.name = "GetBasePathMapping"
        operation.input = GetBasePathMappingRequest
        operation.output = GetBasePathMappingOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnames/{domainName}/basepathmappings/{basePath}", "code" => 200}}
      end)
      service.add_operation(:get_base_path_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetBasePathMappings"
        operation.name = "GetBasePathMappings"
        operation.input = GetBasePathMappingsRequest
        operation.output = GetBasePathMappingsOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnames/{domainName}/basepathmappings", "code" => 200}}
        operation[:paginator] = Paginators::GetBasePathMappings.new
      end)
      service.add_operation(:get_client_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetClientCertificate"
        operation.name = "GetClientCertificate"
        operation.input = GetClientCertificateRequest
        operation.output = GetClientCertificateOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clientcertificates/{clientCertificateId}", "code" => 200}}
      end)
      service.add_operation(:get_client_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetClientCertificates"
        operation.name = "GetClientCertificates"
        operation.input = GetClientCertificatesRequest
        operation.output = GetClientCertificatesOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clientcertificates", "code" => 200}}
        operation[:paginator] = Paginators::GetClientCertificates.new
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = GetDeploymentRequest
        operation.output = GetDeploymentOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/deployments/{deploymentId}", "code" => 200}}
      end)
      service.add_operation(:get_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDeployments"
        operation.name = "GetDeployments"
        operation.input = GetDeploymentsRequest
        operation.output = GetDeploymentsOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/deployments", "code" => 200}}
        operation[:paginator] = Paginators::GetDeployments.new
      end)
      service.add_operation(:get_documentation_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDocumentationPart"
        operation.name = "GetDocumentationPart"
        operation.input = GetDocumentationPartRequest
        operation.output = GetDocumentationPartOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/documentation/parts/{documentationPartId}", "code" => 200}}
      end)
      service.add_operation(:get_documentation_parts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDocumentationParts"
        operation.name = "GetDocumentationParts"
        operation.input = GetDocumentationPartsRequest
        operation.output = GetDocumentationPartsOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/documentation/parts", "code" => 200}}
      end)
      service.add_operation(:get_documentation_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDocumentationVersion"
        operation.name = "GetDocumentationVersion"
        operation.input = GetDocumentationVersionRequest
        operation.output = GetDocumentationVersionOutput
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/documentation/versions/{documentationVersion}", "code" => 200}}
      end)
      service.add_operation(:get_documentation_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDocumentationVersions"
        operation.name = "GetDocumentationVersions"
        operation.input = GetDocumentationVersionsRequest
        operation.output = GetDocumentationVersionsOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/documentation/versions", "code" => 200}}
      end)
      service.add_operation(:get_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDomainName"
        operation.name = "GetDomainName"
        operation.input = GetDomainNameRequest
        operation.output = GetDomainNameOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_name_access_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDomainNameAccessAssociations"
        operation.name = "GetDomainNameAccessAssociations"
        operation.input = GetDomainNameAccessAssociationsRequest
        operation.output = GetDomainNameAccessAssociationsOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnameaccessassociations", "code" => 200}}
      end)
      service.add_operation(:get_domain_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetDomainNames"
        operation.name = "GetDomainNames"
        operation.input = GetDomainNamesRequest
        operation.output = GetDomainNamesOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domainnames", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetDomainNamesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::GetDomainNames.new
      end)
      service.add_operation(:get_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetExport"
        operation.name = "GetExport"
        operation.input = GetExportRequest
        operation.output = ExportResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/stages/{stageName}/exports/{exportType}", "code" => 200}}
      end)
      service.add_operation(:get_gateway_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetGatewayResponse"
        operation.name = "GetGatewayResponse"
        operation.input = GetGatewayResponseRequest
        operation.output = GetGatewayResponseOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/gatewayresponses/{responseType}", "code" => 200}}
      end)
      service.add_operation(:get_gateway_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetGatewayResponses"
        operation.name = "GetGatewayResponses"
        operation.input = GetGatewayResponsesRequest
        operation.output = GetGatewayResponsesOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/gatewayresponses", "code" => 200}}
      end)
      service.add_operation(:get_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetIntegration"
        operation.name = "GetIntegration"
        operation.input = GetIntegrationRequest
        operation.output = GetIntegrationOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration", "code" => 200}}
      end)
      service.add_operation(:get_integration_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetIntegrationResponse"
        operation.name = "GetIntegrationResponse"
        operation.input = GetIntegrationResponseRequest
        operation.output = GetIntegrationResponseOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}", "code" => 200}}
      end)
      service.add_operation(:get_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetMethod"
        operation.name = "GetMethod"
        operation.input = GetMethodRequest
        operation.output = GetMethodOutput
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 200}}
      end)
      service.add_operation(:get_method_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetMethodResponse"
        operation.name = "GetMethodResponse"
        operation.input = GetMethodResponseRequest
        operation.output = GetMethodResponseOutput
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}", "code" => 200}}
      end)
      service.add_operation(:get_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetModel"
        operation.name = "GetModel"
        operation.input = GetModelRequest
        operation.output = GetModelOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/models/{modelName}", "code" => 200}}
      end)
      service.add_operation(:get_model_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetModelTemplate"
        operation.name = "GetModelTemplate"
        operation.input = GetModelTemplateRequest
        operation.output = GetModelTemplateOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/models/{modelName}/default_template", "code" => 200}}
      end)
      service.add_operation(:get_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetModels"
        operation.name = "GetModels"
        operation.input = GetModelsRequest
        operation.output = GetModelsOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/models", "code" => 200}}
        operation[:paginator] = Paginators::GetModels.new
      end)
      service.add_operation(:get_request_validator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetRequestValidator"
        operation.name = "GetRequestValidator"
        operation.input = GetRequestValidatorRequest
        operation.output = GetRequestValidatorOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/requestvalidators/{requestValidatorId}", "code" => 200}}
      end)
      service.add_operation(:get_request_validators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetRequestValidators"
        operation.name = "GetRequestValidators"
        operation.input = GetRequestValidatorsRequest
        operation.output = GetRequestValidatorsOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/requestvalidators", "code" => 200}}
      end)
      service.add_operation(:get_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetResource"
        operation.name = "GetResource"
        operation.input = GetResourceRequest
        operation.output = GetResourceOutput
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources/{resourceId}", "code" => 200}}
      end)
      service.add_operation(:get_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetResources"
        operation.name = "GetResources"
        operation.input = GetResourcesRequest
        operation.output = GetResourcesOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/resources", "code" => 200}}
        operation[:paginator] = Paginators::GetResources.new
      end)
      service.add_operation(:get_rest_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetRestApi"
        operation.name = "GetRestApi"
        operation.input = GetRestApiRequest
        operation.output = GetRestApiOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}", "code" => 200}}
      end)
      service.add_operation(:get_rest_apis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetRestApis"
        operation.name = "GetRestApis"
        operation.input = GetRestApisRequest
        operation.output = GetRestApisOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis", "code" => 200}}
        operation[:paginator] = Paginators::GetRestApis.new
      end)
      service.add_operation(:get_sdk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetSdk"
        operation.name = "GetSdk"
        operation.input = GetSdkRequest
        operation.output = SdkResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/stages/{stageName}/sdks/{sdkType}", "code" => 200}}
      end)
      service.add_operation(:get_sdk_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetSdkType"
        operation.name = "GetSdkType"
        operation.input = GetSdkTypeRequest
        operation.output = GetSdkTypeOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdktypes/{id}", "code" => 200}}
      end)
      service.add_operation(:get_sdk_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetSdkTypes"
        operation.name = "GetSdkTypes"
        operation.input = GetSdkTypesRequest
        operation.output = GetSdkTypesOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdktypes", "code" => 200}}
      end)
      service.add_operation(:get_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetStage"
        operation.name = "GetStage"
        operation.input = GetStageRequest
        operation.output = GetStageOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/stages/{stageName}", "code" => 200}}
      end)
      service.add_operation(:get_stages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetStages"
        operation.name = "GetStages"
        operation.input = GetStagesRequest
        operation.output = GetStagesOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/restapis/{restApiId}/stages", "code" => 200}}
      end)
      service.add_operation(:get_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetTags"
        operation.name = "GetTags"
        operation.input = GetTagsRequest
        operation.output = GetTagsOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:get_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsage"
        operation.name = "GetUsage"
        operation.input = GetUsageRequest
        operation.output = GetUsageOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans/{usagePlanId}/usage", "code" => 200}}
        operation[:paginator] = Paginators::GetUsage.new
      end)
      service.add_operation(:get_usage_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsagePlan"
        operation.name = "GetUsagePlan"
        operation.input = GetUsagePlanRequest
        operation.output = GetUsagePlanOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans/{usagePlanId}", "code" => 200}}
      end)
      service.add_operation(:get_usage_plan_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsagePlanKey"
        operation.name = "GetUsagePlanKey"
        operation.input = GetUsagePlanKeyRequest
        operation.output = GetUsagePlanKeyOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans/{usagePlanId}/keys/{keyId}", "code" => 200}}
      end)
      service.add_operation(:get_usage_plan_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsagePlanKeys"
        operation.name = "GetUsagePlanKeys"
        operation.input = GetUsagePlanKeysRequest
        operation.output = GetUsagePlanKeysOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans/{usagePlanId}/keys", "code" => 200}}
        operation[:paginator] = Paginators::GetUsagePlanKeys.new
      end)
      service.add_operation(:get_usage_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetUsagePlans"
        operation.name = "GetUsagePlans"
        operation.input = GetUsagePlansRequest
        operation.output = GetUsagePlansOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usageplans", "code" => 200}}
        operation[:paginator] = Paginators::GetUsagePlans.new
      end)
      service.add_operation(:get_vpc_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetVpcLink"
        operation.name = "GetVpcLink"
        operation.input = GetVpcLinkRequest
        operation.output = GetVpcLinkOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vpclinks/{vpcLinkId}", "code" => 200}}
      end)
      service.add_operation(:get_vpc_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#GetVpcLinks"
        operation.name = "GetVpcLinks"
        operation.input = GetVpcLinksRequest
        operation.output = GetVpcLinksOutput
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vpclinks", "code" => 200}}
        operation[:paginator] = Paginators::GetVpcLinks.new
      end)
      service.add_operation(:import_api_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#ImportApiKeys"
        operation.name = "ImportApiKeys"
        operation.input = ImportApiKeysRequest
        operation.output = ImportApiKeysOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apikeys?mode=import", "code" => 201}}
      end)
      service.add_operation(:import_documentation_parts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#ImportDocumentationParts"
        operation.name = "ImportDocumentationParts"
        operation.input = ImportDocumentationPartsRequest
        operation.output = ImportDocumentationPartsOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/documentation/parts", "code" => 200}}
      end)
      service.add_operation(:import_rest_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#ImportRestApi"
        operation.name = "ImportRestApi"
        operation.input = ImportRestApiRequest
        operation.output = ImportRestApiOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis?mode=import", "code" => 201}}
      end)
      service.add_operation(:put_gateway_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutGatewayResponse"
        operation.name = "PutGatewayResponse"
        operation.input = PutGatewayResponseRequest
        operation.output = PutGatewayResponseOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/gatewayresponses/{responseType}", "code" => 201}}
      end)
      service.add_operation(:put_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutIntegration"
        operation.name = "PutIntegration"
        operation.input = PutIntegrationRequest
        operation.output = PutIntegrationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration", "code" => 201}}
      end)
      service.add_operation(:put_integration_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutIntegrationResponse"
        operation.name = "PutIntegrationResponse"
        operation.input = PutIntegrationResponseRequest
        operation.output = PutIntegrationResponseOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}", "code" => 201}}
      end)
      service.add_operation(:put_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutMethod"
        operation.name = "PutMethod"
        operation.input = PutMethodRequest
        operation.output = PutMethodOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 201}}
      end)
      service.add_operation(:put_method_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutMethodResponse"
        operation.name = "PutMethodResponse"
        operation.input = PutMethodResponseRequest
        operation.output = PutMethodResponseOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}", "code" => 201}}
      end)
      service.add_operation(:put_rest_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#PutRestApi"
        operation.name = "PutRestApi"
        operation.input = PutRestApiRequest
        operation.output = PutRestApiOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/restapis/{restApiId}", "code" => 200}}
      end)
      service.add_operation(:reject_domain_name_access_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#RejectDomainNameAccessAssociation"
        operation.name = "RejectDomainNameAccessAssociation"
        operation.input = RejectDomainNameAccessAssociationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rejectdomainnameaccessassociations", "code" => 202}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:test_invoke_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#TestInvokeAuthorizer"
        operation.name = "TestInvokeAuthorizer"
        operation.input = TestInvokeAuthorizerRequest
        operation.output = TestInvokeAuthorizerResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/authorizers/{authorizerId}", "code" => 200}}
      end)
      service.add_operation(:test_invoke_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#TestInvokeMethod"
        operation.name = "TestInvokeMethod"
        operation.input = TestInvokeMethodRequest
        operation.output = TestInvokeMethodResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateAccount"
        operation.name = "UpdateAccount"
        operation.input = UpdateAccountRequest
        operation.output = UpdateAccountOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/account", "code" => 200}}
      end)
      service.add_operation(:update_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateApiKey"
        operation.name = "UpdateApiKey"
        operation.input = UpdateApiKeyRequest
        operation.output = UpdateApiKeyOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/apikeys/{apiKey}", "code" => 200}}
      end)
      service.add_operation(:update_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateAuthorizer"
        operation.name = "UpdateAuthorizer"
        operation.input = UpdateAuthorizerRequest
        operation.output = UpdateAuthorizerOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/authorizers/{authorizerId}", "code" => 200}}
      end)
      service.add_operation(:update_base_path_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateBasePathMapping"
        operation.name = "UpdateBasePathMapping"
        operation.input = UpdateBasePathMappingRequest
        operation.output = UpdateBasePathMappingOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/domainnames/{domainName}/basepathmappings/{basePath}", "code" => 200}}
      end)
      service.add_operation(:update_client_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateClientCertificate"
        operation.name = "UpdateClientCertificate"
        operation.input = UpdateClientCertificateRequest
        operation.output = UpdateClientCertificateOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/clientcertificates/{clientCertificateId}", "code" => 200}}
      end)
      service.add_operation(:update_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateDeployment"
        operation.name = "UpdateDeployment"
        operation.input = UpdateDeploymentRequest
        operation.output = UpdateDeploymentOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/deployments/{deploymentId}", "code" => 200}}
      end)
      service.add_operation(:update_documentation_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateDocumentationPart"
        operation.name = "UpdateDocumentationPart"
        operation.input = UpdateDocumentationPartRequest
        operation.output = UpdateDocumentationPartOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/documentation/parts/{documentationPartId}", "code" => 200}}
      end)
      service.add_operation(:update_documentation_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateDocumentationVersion"
        operation.name = "UpdateDocumentationVersion"
        operation.input = UpdateDocumentationVersionRequest
        operation.output = UpdateDocumentationVersionOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/documentation/versions/{documentationVersion}", "code" => 200}}
      end)
      service.add_operation(:update_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateDomainName"
        operation.name = "UpdateDomainName"
        operation.input = UpdateDomainNameRequest
        operation.output = UpdateDomainNameOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/domainnames/{domainName}", "code" => 200}}
      end)
      service.add_operation(:update_gateway_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateGatewayResponse"
        operation.name = "UpdateGatewayResponse"
        operation.input = UpdateGatewayResponseRequest
        operation.output = UpdateGatewayResponseOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/gatewayresponses/{responseType}", "code" => 200}}
      end)
      service.add_operation(:update_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateIntegration"
        operation.name = "UpdateIntegration"
        operation.input = UpdateIntegrationRequest
        operation.output = UpdateIntegrationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration", "code" => 200}}
      end)
      service.add_operation(:update_integration_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateIntegrationResponse"
        operation.name = "UpdateIntegrationResponse"
        operation.input = UpdateIntegrationResponseRequest
        operation.output = UpdateIntegrationResponseOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}", "code" => 200}}
      end)
      service.add_operation(:update_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateMethod"
        operation.name = "UpdateMethod"
        operation.input = UpdateMethodRequest
        operation.output = UpdateMethodOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}", "code" => 200}}
      end)
      service.add_operation(:update_method_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateMethodResponse"
        operation.name = "UpdateMethodResponse"
        operation.input = UpdateMethodResponseRequest
        operation.output = UpdateMethodResponseOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}", "code" => 201}}
      end)
      service.add_operation(:update_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateModel"
        operation.name = "UpdateModel"
        operation.input = UpdateModelRequest
        operation.output = UpdateModelOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/models/{modelName}", "code" => 200}}
      end)
      service.add_operation(:update_request_validator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateRequestValidator"
        operation.name = "UpdateRequestValidator"
        operation.input = UpdateRequestValidatorRequest
        operation.output = UpdateRequestValidatorOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/requestvalidators/{requestValidatorId}", "code" => 200}}
      end)
      service.add_operation(:update_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateResource"
        operation.name = "UpdateResource"
        operation.input = UpdateResourceRequest
        operation.output = UpdateResourceOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/resources/{resourceId}", "code" => 200}}
      end)
      service.add_operation(:update_rest_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateRestApi"
        operation.name = "UpdateRestApi"
        operation.input = UpdateRestApiRequest
        operation.output = UpdateRestApiOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}", "code" => 200}}
      end)
      service.add_operation(:update_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateStage"
        operation.name = "UpdateStage"
        operation.input = UpdateStageRequest
        operation.output = UpdateStageOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/restapis/{restApiId}/stages/{stageName}", "code" => 200}}
      end)
      service.add_operation(:update_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateUsage"
        operation.name = "UpdateUsage"
        operation.input = UpdateUsageRequest
        operation.output = UpdateUsageOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/usageplans/{usagePlanId}/keys/{keyId}/usage", "code" => 200}}
      end)
      service.add_operation(:update_usage_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateUsagePlan"
        operation.name = "UpdateUsagePlan"
        operation.input = UpdateUsagePlanRequest
        operation.output = UpdateUsagePlanOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/usageplans/{usagePlanId}", "code" => 200}}
      end)
      service.add_operation(:update_vpc_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigateway#UpdateVpcLink"
        operation.name = "UpdateVpcLink"
        operation.input = UpdateVpcLinkRequest
        operation.output = UpdateVpcLinkOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/vpclinks/{vpcLinkId}", "code" => 200}}
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
