# frozen_string_literal: true

# This is generated code!

module Aws::ApiGatewayV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessLogSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#AccessLogSettings", name: "AccessLogSettings")
    Api = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#Api", name: "Api")
    ApiMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ApiMapping", name: "ApiMapping")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#Arn", name: "Arn")
    AuthorizationScopes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#AuthorizationScopes", name: "AuthorizationScopes")
    AuthorizationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#AuthorizationType", name: "AuthorizationType")
    Authorizer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#Authorizer", name: "Authorizer")
    AuthorizerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#AuthorizerType", name: "AuthorizerType")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#ConnectionType", name: "ConnectionType")
    ContentHandlingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#ContentHandlingStrategy", name: "ContentHandlingStrategy")
    Cors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#Cors", name: "Cors")
    CorsHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#CorsHeaderList", name: "CorsHeaderList")
    CorsMethodList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#CorsMethodList", name: "CorsMethodList")
    CorsOriginList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#CorsOriginList", name: "CorsOriginList")
    CreateApiMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateApiMappingRequest", name: "CreateApiMappingRequest")
    CreateApiMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateApiMappingResponse", name: "CreateApiMappingResponse")
    CreateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateApiRequest", name: "CreateApiRequest")
    CreateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateApiResponse", name: "CreateApiResponse")
    CreateAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateAuthorizerRequest", name: "CreateAuthorizerRequest")
    CreateAuthorizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateAuthorizerResponse", name: "CreateAuthorizerResponse")
    CreateDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateDeploymentRequest", name: "CreateDeploymentRequest")
    CreateDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateDeploymentResponse", name: "CreateDeploymentResponse")
    CreateDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateDomainNameRequest", name: "CreateDomainNameRequest")
    CreateDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateDomainNameResponse", name: "CreateDomainNameResponse")
    CreateIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateIntegrationRequest", name: "CreateIntegrationRequest")
    CreateIntegrationResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateIntegrationResponseRequest", name: "CreateIntegrationResponseRequest")
    CreateIntegrationResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateIntegrationResponseResponse", name: "CreateIntegrationResponseResponse")
    CreateIntegrationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateIntegrationResult", name: "CreateIntegrationResult")
    CreateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateModelRequest", name: "CreateModelRequest")
    CreateModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateModelResponse", name: "CreateModelResponse")
    CreateRouteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateRouteRequest", name: "CreateRouteRequest")
    CreateRouteResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateRouteResponseRequest", name: "CreateRouteResponseRequest")
    CreateRouteResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateRouteResponseResponse", name: "CreateRouteResponseResponse")
    CreateRouteResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateRouteResult", name: "CreateRouteResult")
    CreateRoutingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateRoutingRuleRequest", name: "CreateRoutingRuleRequest")
    CreateRoutingRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateRoutingRuleResponse", name: "CreateRoutingRuleResponse")
    CreateStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateStageRequest", name: "CreateStageRequest")
    CreateStageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateStageResponse", name: "CreateStageResponse")
    CreateVpcLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateVpcLinkRequest", name: "CreateVpcLinkRequest")
    CreateVpcLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#CreateVpcLinkResponse", name: "CreateVpcLinkResponse")
    DeleteAccessLogSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteAccessLogSettingsRequest", name: "DeleteAccessLogSettingsRequest")
    DeleteApiMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteApiMappingRequest", name: "DeleteApiMappingRequest")
    DeleteApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteApiRequest", name: "DeleteApiRequest")
    DeleteAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteAuthorizerRequest", name: "DeleteAuthorizerRequest")
    DeleteCorsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteCorsConfigurationRequest", name: "DeleteCorsConfigurationRequest")
    DeleteDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteDeploymentRequest", name: "DeleteDeploymentRequest")
    DeleteDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteDomainNameRequest", name: "DeleteDomainNameRequest")
    DeleteIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteIntegrationRequest", name: "DeleteIntegrationRequest")
    DeleteIntegrationResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteIntegrationResponseRequest", name: "DeleteIntegrationResponseRequest")
    DeleteModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteModelRequest", name: "DeleteModelRequest")
    DeleteRouteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteRouteRequest", name: "DeleteRouteRequest")
    DeleteRouteRequestParameterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteRouteRequestParameterRequest", name: "DeleteRouteRequestParameterRequest")
    DeleteRouteResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteRouteResponseRequest", name: "DeleteRouteResponseRequest")
    DeleteRouteSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteRouteSettingsRequest", name: "DeleteRouteSettingsRequest")
    DeleteRoutingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteRoutingRuleRequest", name: "DeleteRoutingRuleRequest")
    DeleteStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteStageRequest", name: "DeleteStageRequest")
    DeleteVpcLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteVpcLinkRequest", name: "DeleteVpcLinkRequest")
    DeleteVpcLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DeleteVpcLinkResponse", name: "DeleteVpcLinkResponse")
    Deployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#Deployment", name: "Deployment")
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#DeploymentStatus", name: "DeploymentStatus")
    DomainName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DomainName", name: "DomainName")
    DomainNameConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#DomainNameConfiguration", name: "DomainNameConfiguration")
    DomainNameConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#DomainNameConfigurations", name: "DomainNameConfigurations")
    DomainNameStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#DomainNameStatus", name: "DomainNameStatus")
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#EndpointType", name: "EndpointType")
    ExportApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ExportApiRequest", name: "ExportApiRequest")
    ExportApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ExportApiResponse", name: "ExportApiResponse")
    ExportedApi = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.apigatewayv2#ExportedApi", name: "ExportedApi")
    GetApiMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetApiMappingRequest", name: "GetApiMappingRequest")
    GetApiMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetApiMappingResponse", name: "GetApiMappingResponse")
    GetApiMappingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetApiMappingsRequest", name: "GetApiMappingsRequest")
    GetApiMappingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetApiMappingsResponse", name: "GetApiMappingsResponse")
    GetApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetApiRequest", name: "GetApiRequest")
    GetApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetApiResponse", name: "GetApiResponse")
    GetApisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetApisRequest", name: "GetApisRequest")
    GetApisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetApisResponse", name: "GetApisResponse")
    GetAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetAuthorizerRequest", name: "GetAuthorizerRequest")
    GetAuthorizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetAuthorizerResponse", name: "GetAuthorizerResponse")
    GetAuthorizersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetAuthorizersRequest", name: "GetAuthorizersRequest")
    GetAuthorizersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetAuthorizersResponse", name: "GetAuthorizersResponse")
    GetDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetDeploymentRequest", name: "GetDeploymentRequest")
    GetDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetDeploymentResponse", name: "GetDeploymentResponse")
    GetDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetDeploymentsRequest", name: "GetDeploymentsRequest")
    GetDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetDeploymentsResponse", name: "GetDeploymentsResponse")
    GetDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetDomainNameRequest", name: "GetDomainNameRequest")
    GetDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetDomainNameResponse", name: "GetDomainNameResponse")
    GetDomainNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetDomainNamesRequest", name: "GetDomainNamesRequest")
    GetDomainNamesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetDomainNamesResponse", name: "GetDomainNamesResponse")
    GetIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetIntegrationRequest", name: "GetIntegrationRequest")
    GetIntegrationResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetIntegrationResponseRequest", name: "GetIntegrationResponseRequest")
    GetIntegrationResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetIntegrationResponseResponse", name: "GetIntegrationResponseResponse")
    GetIntegrationResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetIntegrationResponsesRequest", name: "GetIntegrationResponsesRequest")
    GetIntegrationResponsesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetIntegrationResponsesResponse", name: "GetIntegrationResponsesResponse")
    GetIntegrationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetIntegrationResult", name: "GetIntegrationResult")
    GetIntegrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetIntegrationsRequest", name: "GetIntegrationsRequest")
    GetIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetIntegrationsResponse", name: "GetIntegrationsResponse")
    GetModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetModelRequest", name: "GetModelRequest")
    GetModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetModelResponse", name: "GetModelResponse")
    GetModelTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetModelTemplateRequest", name: "GetModelTemplateRequest")
    GetModelTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetModelTemplateResponse", name: "GetModelTemplateResponse")
    GetModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetModelsRequest", name: "GetModelsRequest")
    GetModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetModelsResponse", name: "GetModelsResponse")
    GetRouteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRouteRequest", name: "GetRouteRequest")
    GetRouteResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRouteResponseRequest", name: "GetRouteResponseRequest")
    GetRouteResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRouteResponseResponse", name: "GetRouteResponseResponse")
    GetRouteResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRouteResponsesRequest", name: "GetRouteResponsesRequest")
    GetRouteResponsesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRouteResponsesResponse", name: "GetRouteResponsesResponse")
    GetRouteResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRouteResult", name: "GetRouteResult")
    GetRoutesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRoutesRequest", name: "GetRoutesRequest")
    GetRoutesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRoutesResponse", name: "GetRoutesResponse")
    GetRoutingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRoutingRuleRequest", name: "GetRoutingRuleRequest")
    GetRoutingRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetRoutingRuleResponse", name: "GetRoutingRuleResponse")
    GetStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetStageRequest", name: "GetStageRequest")
    GetStageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetStageResponse", name: "GetStageResponse")
    GetStagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetStagesRequest", name: "GetStagesRequest")
    GetStagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetStagesResponse", name: "GetStagesResponse")
    GetTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetTagsRequest", name: "GetTagsRequest")
    GetTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetTagsResponse", name: "GetTagsResponse")
    GetVpcLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetVpcLinkRequest", name: "GetVpcLinkRequest")
    GetVpcLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetVpcLinkResponse", name: "GetVpcLinkResponse")
    GetVpcLinksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetVpcLinksRequest", name: "GetVpcLinksRequest")
    GetVpcLinksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#GetVpcLinksResponse", name: "GetVpcLinksResponse")
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#Id", name: "Id")
    IdentitySourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#IdentitySourceList", name: "IdentitySourceList")
    ImportApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ImportApiRequest", name: "ImportApiRequest")
    ImportApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ImportApiResponse", name: "ImportApiResponse")
    IntegerWithLengthBetween0And3600 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigatewayv2#IntegerWithLengthBetween0And3600", name: "IntegerWithLengthBetween0And3600", traits: {"smithy.api#range" => {"min" => 0, "max" => 3600}})
    IntegerWithLengthBetween50And30000 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigatewayv2#IntegerWithLengthBetween50And30000", name: "IntegerWithLengthBetween50And30000", traits: {"smithy.api#range" => {"min" => 50, "max" => 30000}})
    IntegerWithLengthBetweenMinus1And86400 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigatewayv2#IntegerWithLengthBetweenMinus1And86400", name: "IntegerWithLengthBetweenMinus1And86400", traits: {"smithy.api#range" => {"min" => -1, "max" => 86400}})
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#Integration", name: "Integration")
    IntegrationParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigatewayv2#IntegrationParameters", name: "IntegrationParameters")
    IntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#IntegrationResponse", name: "IntegrationResponse")
    IntegrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#IntegrationType", name: "IntegrationType")
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#IpAddressType", name: "IpAddressType")
    JWTConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#JWTConfiguration", name: "JWTConfiguration")
    ListRoutingRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ListRoutingRulesRequest", name: "ListRoutingRulesRequest")
    ListRoutingRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ListRoutingRulesResponse", name: "ListRoutingRulesResponse")
    LoggingLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#LoggingLevel", name: "LoggingLevel")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigatewayv2#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Model = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#Model", name: "Model")
    MutualTlsAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#MutualTlsAuthentication", name: "MutualTlsAuthentication")
    MutualTlsAuthenticationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#MutualTlsAuthenticationInput", name: "MutualTlsAuthenticationInput")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#NextToken", name: "NextToken")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParameterConstraints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ParameterConstraints", name: "ParameterConstraints")
    PassthroughBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#PassthroughBehavior", name: "PassthroughBehavior")
    ProtocolType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#ProtocolType", name: "ProtocolType")
    PutRoutingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#PutRoutingRuleRequest", name: "PutRoutingRuleRequest")
    PutRoutingRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#PutRoutingRuleResponse", name: "PutRoutingRuleResponse")
    ReimportApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ReimportApiRequest", name: "ReimportApiRequest")
    ReimportApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ReimportApiResponse", name: "ReimportApiResponse")
    ResetAuthorizersCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#ResetAuthorizersCacheRequest", name: "ResetAuthorizersCacheRequest")
    ResponseParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigatewayv2#ResponseParameters", name: "ResponseParameters")
    Route = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#Route", name: "Route")
    RouteModels = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigatewayv2#RouteModels", name: "RouteModels")
    RouteParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigatewayv2#RouteParameters", name: "RouteParameters")
    RouteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RouteResponse", name: "RouteResponse")
    RouteSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RouteSettings", name: "RouteSettings")
    RouteSettingsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigatewayv2#RouteSettingsMap", name: "RouteSettingsMap")
    RoutingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#RoutingMode", name: "RoutingMode")
    RoutingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RoutingRule", name: "RoutingRule")
    RoutingRuleAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RoutingRuleAction", name: "RoutingRuleAction")
    RoutingRuleActionInvokeApi = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RoutingRuleActionInvokeApi", name: "RoutingRuleActionInvokeApi")
    RoutingRuleCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RoutingRuleCondition", name: "RoutingRuleCondition")
    RoutingRuleMatchBasePaths = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RoutingRuleMatchBasePaths", name: "RoutingRuleMatchBasePaths")
    RoutingRuleMatchHeaderValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RoutingRuleMatchHeaderValue", name: "RoutingRuleMatchHeaderValue")
    RoutingRuleMatchHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#RoutingRuleMatchHeaders", name: "RoutingRuleMatchHeaders")
    RoutingRulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigatewayv2#RoutingRulePriority", name: "RoutingRulePriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000000}})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#SecurityGroupIdList", name: "SecurityGroupIdList")
    SecurityPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#SecurityPolicy", name: "SecurityPolicy")
    SelectionExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#SelectionExpression", name: "SelectionExpression")
    SelectionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#SelectionKey", name: "SelectionKey")
    Stage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#Stage", name: "Stage")
    StageVariablesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigatewayv2#StageVariablesMap", name: "StageVariablesMap")
    StringWithLengthBetween0And1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween0And1024", name: "StringWithLengthBetween0And1024")
    StringWithLengthBetween0And2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween0And2048", name: "StringWithLengthBetween0And2048")
    StringWithLengthBetween0And32K = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween0And32K", name: "StringWithLengthBetween0And32K")
    StringWithLengthBetween1And1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween1And1024", name: "StringWithLengthBetween1And1024")
    StringWithLengthBetween1And128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween1And128", name: "StringWithLengthBetween1And128")
    StringWithLengthBetween1And1600 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween1And1600", name: "StringWithLengthBetween1And1600")
    StringWithLengthBetween1And256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween1And256", name: "StringWithLengthBetween1And256")
    StringWithLengthBetween1And512 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween1And512", name: "StringWithLengthBetween1And512")
    StringWithLengthBetween1And64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#StringWithLengthBetween1And64", name: "StringWithLengthBetween1And64")
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#SubnetIdList", name: "SubnetIdList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#TagResourceResponse", name: "TagResourceResponse")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigatewayv2#Tags", name: "Tags")
    TemplateMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apigatewayv2#TemplateMap", name: "TemplateMap")
    TlsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#TlsConfig", name: "TlsConfig")
    TlsConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#TlsConfigInput", name: "TlsConfigInput")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateApiMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateApiMappingRequest", name: "UpdateApiMappingRequest")
    UpdateApiMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateApiMappingResponse", name: "UpdateApiMappingResponse")
    UpdateApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateApiRequest", name: "UpdateApiRequest")
    UpdateApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateApiResponse", name: "UpdateApiResponse")
    UpdateAuthorizerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateAuthorizerRequest", name: "UpdateAuthorizerRequest")
    UpdateAuthorizerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateAuthorizerResponse", name: "UpdateAuthorizerResponse")
    UpdateDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateDeploymentRequest", name: "UpdateDeploymentRequest")
    UpdateDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateDeploymentResponse", name: "UpdateDeploymentResponse")
    UpdateDomainNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateDomainNameRequest", name: "UpdateDomainNameRequest")
    UpdateDomainNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateDomainNameResponse", name: "UpdateDomainNameResponse")
    UpdateIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateIntegrationRequest", name: "UpdateIntegrationRequest")
    UpdateIntegrationResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateIntegrationResponseRequest", name: "UpdateIntegrationResponseRequest")
    UpdateIntegrationResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateIntegrationResponseResponse", name: "UpdateIntegrationResponseResponse")
    UpdateIntegrationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateIntegrationResult", name: "UpdateIntegrationResult")
    UpdateModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateModelRequest", name: "UpdateModelRequest")
    UpdateModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateModelResponse", name: "UpdateModelResponse")
    UpdateRouteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateRouteRequest", name: "UpdateRouteRequest")
    UpdateRouteResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateRouteResponseRequest", name: "UpdateRouteResponseRequest")
    UpdateRouteResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateRouteResponseResponse", name: "UpdateRouteResponseResponse")
    UpdateRouteResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateRouteResult", name: "UpdateRouteResult")
    UpdateStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateStageRequest", name: "UpdateStageRequest")
    UpdateStageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateStageResponse", name: "UpdateStageResponse")
    UpdateVpcLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateVpcLinkRequest", name: "UpdateVpcLinkRequest")
    UpdateVpcLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#UpdateVpcLinkResponse", name: "UpdateVpcLinkResponse")
    UriWithLengthBetween1And2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#UriWithLengthBetween1And2048", name: "UriWithLengthBetween1And2048")
    VpcLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apigatewayv2#VpcLink", name: "VpcLink")
    VpcLinkStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#VpcLinkStatus", name: "VpcLinkStatus")
    VpcLinkVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apigatewayv2#VpcLinkVersion", name: "VpcLinkVersion")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.apigatewayv2#__boolean", name: "Boolean")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.apigatewayv2#__double", name: "Double")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apigatewayv2#__integer", name: "Integer")
    Listofapi = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfApi", name: "Listofapi")
    Listofapimapping = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfApiMapping", name: "Listofapimapping")
    Listofauthorizer = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfAuthorizer", name: "Listofauthorizer")
    Listofdeployment = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfDeployment", name: "Listofdeployment")
    Listofdomainname = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfDomainName", name: "Listofdomainname")
    Listofintegration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfIntegration", name: "Listofintegration")
    Listofintegrationresponse = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfIntegrationResponse", name: "Listofintegrationresponse")
    Listofmodel = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfModel", name: "Listofmodel")
    Listofroute = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfRoute", name: "Listofroute")
    Listofrouteresponse = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfRouteResponse", name: "Listofrouteresponse")
    Listofroutingrule = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfRoutingRule", name: "Listofroutingrule")
    Listofroutingruleaction = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfRoutingRuleAction", name: "Listofroutingruleaction")
    Listofroutingrulecondition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfRoutingRuleCondition", name: "Listofroutingrulecondition")
    Listofroutingrulematchheadervalue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfRoutingRuleMatchHeaderValue", name: "Listofroutingrulematchheadervalue")
    Listofselectionkey = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfSelectionKey", name: "Listofselectionkey")
    Listofstage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfStage", name: "Listofstage")
    Listofvpclink = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOfVpcLink", name: "Listofvpclink")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apigatewayv2#__listOf__string", name: "ListofString")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apigatewayv2#__string", name: "String")
    Timestampiso8601 = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.apigatewayv2#__timestampIso8601", name: "Timestampiso8601", traits: {"smithy.api#timestampFormat" => "date-time"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessLogSettings.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "DestinationArn", traits: {"smithy.api#jsonName" => "destinationArn"}))
    AccessLogSettings.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And1024, location_name: "Format", traits: {"smithy.api#jsonName" => "format"}))
    AccessLogSettings.type = Types::AccessLogSettings
    Api.add_member(:api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiEndpoint", traits: {"smithy.api#jsonName" => "apiEndpoint"}))
    Api.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    Api.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    Api.add_member(:api_key_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiKeySelectionExpression", traits: {"smithy.api#jsonName" => "apiKeySelectionExpression"}))
    Api.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, location_name: "CorsConfiguration", traits: {"smithy.api#jsonName" => "corsConfiguration"}))
    Api.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    Api.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Api.add_member(:disable_schema_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableSchemaValidation", traits: {"smithy.api#jsonName" => "disableSchemaValidation"}))
    Api.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableExecuteApiEndpoint", traits: {"smithy.api#jsonName" => "disableExecuteApiEndpoint"}))
    Api.add_member(:import_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "ImportInfo", traits: {"smithy.api#jsonName" => "importInfo"}))
    Api.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    Api.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Api.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, location_name: "ProtocolType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocolType", "smithy.api#required" => {}}))
    Api.add_member(:route_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteSelectionExpression", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "routeSelectionExpression", "smithy.api#required" => {}}))
    Api.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    Api.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    Api.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Warnings", traits: {"smithy.api#jsonName" => "warnings"}))
    Api.type = Types::Api
    ApiMapping.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "apiId", "smithy.api#required" => {}}))
    ApiMapping.add_member(:api_mapping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiMappingId", traits: {"smithy.api#jsonName" => "apiMappingId"}))
    ApiMapping.add_member(:api_mapping_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "ApiMappingKey", traits: {"smithy.api#jsonName" => "apiMappingKey"}))
    ApiMapping.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Stage", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "stage", "smithy.api#required" => {}}))
    ApiMapping.type = Types::ApiMapping
    AuthorizationScopes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64)
    AuthorizationType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AuthorizationType.add_member(:aws_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_IAM", traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    AuthorizationType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AuthorizationType.add_member(:jwt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JWT", traits: {"smithy.api#enumValue" => "JWT"}))
    Authorizer.add_member(:authorizer_credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "AuthorizerCredentialsArn", traits: {"smithy.api#jsonName" => "authorizerCredentialsArn"}))
    Authorizer.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    Authorizer.add_member(:authorizer_payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "AuthorizerPayloadFormatVersion", traits: {"smithy.api#jsonName" => "authorizerPayloadFormatVersion"}))
    Authorizer.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween0And3600, location_name: "AuthorizerResultTtlInSeconds", traits: {"smithy.api#jsonName" => "authorizerResultTtlInSeconds"}))
    Authorizer.add_member(:authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, location_name: "AuthorizerType", traits: {"smithy.api#jsonName" => "authorizerType"}))
    Authorizer.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "AuthorizerUri", traits: {"smithy.api#jsonName" => "authorizerUri"}))
    Authorizer.add_member(:enable_simple_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnableSimpleResponses", traits: {"smithy.api#jsonName" => "enableSimpleResponses"}))
    Authorizer.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceList, location_name: "IdentitySource", traits: {"smithy.api#jsonName" => "identitySource"}))
    Authorizer.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "IdentityValidationExpression", traits: {"smithy.api#jsonName" => "identityValidationExpression"}))
    Authorizer.add_member(:jwt_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JWTConfiguration, location_name: "JwtConfiguration", traits: {"smithy.api#jsonName" => "jwtConfiguration"}))
    Authorizer.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Authorizer.type = Types::Authorizer
    AuthorizerType.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUEST", traits: {"smithy.api#enumValue" => "REQUEST"}))
    AuthorizerType.add_member(:jwt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JWT", traits: {"smithy.api#enumValue" => "JWT"}))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    BadRequestException.type = Types::BadRequestException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ConflictException.type = Types::ConflictException
    ConnectionType.add_member(:internet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNET", traits: {"smithy.api#enumValue" => "INTERNET"}))
    ConnectionType.add_member(:vpc_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VPC_LINK", traits: {"smithy.api#enumValue" => "VPC_LINK"}))
    ContentHandlingStrategy.add_member(:convert_to_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONVERT_TO_BINARY", traits: {"smithy.api#enumValue" => "CONVERT_TO_BINARY"}))
    ContentHandlingStrategy.add_member(:convert_to_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONVERT_TO_TEXT", traits: {"smithy.api#enumValue" => "CONVERT_TO_TEXT"}))
    Cors.add_member(:allow_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AllowCredentials", traits: {"smithy.api#jsonName" => "allowCredentials"}))
    Cors.add_member(:allow_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CorsHeaderList, location_name: "AllowHeaders", traits: {"smithy.api#jsonName" => "allowHeaders"}))
    Cors.add_member(:allow_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: CorsMethodList, location_name: "AllowMethods", traits: {"smithy.api#jsonName" => "allowMethods"}))
    Cors.add_member(:allow_origins, ::Smithy::Schema::Shapes::MemberShape.new(target: CorsOriginList, location_name: "AllowOrigins", traits: {"smithy.api#jsonName" => "allowOrigins"}))
    Cors.add_member(:expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CorsHeaderList, location_name: "ExposeHeaders", traits: {"smithy.api#jsonName" => "exposeHeaders"}))
    Cors.add_member(:max_age, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetweenMinus1And86400, location_name: "MaxAge", traits: {"smithy.api#jsonName" => "maxAge"}))
    Cors.type = Types::Cors
    CorsHeaderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    CorsMethodList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64)
    CorsOriginList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    CreateApiMappingRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "apiId", "smithy.api#required" => {}}))
    CreateApiMappingRequest.add_member(:api_mapping_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "ApiMappingKey", traits: {"smithy.api#jsonName" => "apiMappingKey"}))
    CreateApiMappingRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApiMappingRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Stage", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "stage", "smithy.api#required" => {}}))
    CreateApiMappingRequest.type = Types::CreateApiMappingRequest
    CreateApiMappingResponse.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    CreateApiMappingResponse.add_member(:api_mapping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiMappingId", traits: {"smithy.api#jsonName" => "apiMappingId"}))
    CreateApiMappingResponse.add_member(:api_mapping_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "ApiMappingKey", traits: {"smithy.api#jsonName" => "apiMappingKey"}))
    CreateApiMappingResponse.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Stage", traits: {"smithy.api#jsonName" => "stage"}))
    CreateApiMappingResponse.type = Types::CreateApiMappingResponse
    CreateApiRequest.add_member(:api_key_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiKeySelectionExpression", traits: {"smithy.api#jsonName" => "apiKeySelectionExpression"}))
    CreateApiRequest.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, location_name: "CorsConfiguration", traits: {"smithy.api#jsonName" => "corsConfiguration"}))
    CreateApiRequest.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CredentialsArn", traits: {"smithy.api#jsonName" => "credentialsArn"}))
    CreateApiRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateApiRequest.add_member(:disable_schema_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableSchemaValidation", traits: {"smithy.api#jsonName" => "disableSchemaValidation"}))
    CreateApiRequest.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableExecuteApiEndpoint", traits: {"smithy.api#jsonName" => "disableExecuteApiEndpoint"}))
    CreateApiRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    CreateApiRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateApiRequest.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, location_name: "ProtocolType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocolType", "smithy.api#required" => {}}))
    CreateApiRequest.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteKey", traits: {"smithy.api#jsonName" => "routeKey"}))
    CreateApiRequest.add_member(:route_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteSelectionExpression", traits: {"smithy.api#jsonName" => "routeSelectionExpression"}))
    CreateApiRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateApiRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "Target", traits: {"smithy.api#jsonName" => "target"}))
    CreateApiRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    CreateApiRequest.type = Types::CreateApiRequest
    CreateApiResponse.add_member(:api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiEndpoint", traits: {"smithy.api#jsonName" => "apiEndpoint"}))
    CreateApiResponse.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    CreateApiResponse.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    CreateApiResponse.add_member(:api_key_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiKeySelectionExpression", traits: {"smithy.api#jsonName" => "apiKeySelectionExpression"}))
    CreateApiResponse.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, location_name: "CorsConfiguration", traits: {"smithy.api#jsonName" => "corsConfiguration"}))
    CreateApiResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    CreateApiResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateApiResponse.add_member(:disable_schema_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableSchemaValidation", traits: {"smithy.api#jsonName" => "disableSchemaValidation"}))
    CreateApiResponse.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableExecuteApiEndpoint", traits: {"smithy.api#jsonName" => "disableExecuteApiEndpoint"}))
    CreateApiResponse.add_member(:import_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "ImportInfo", traits: {"smithy.api#jsonName" => "importInfo"}))
    CreateApiResponse.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    CreateApiResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    CreateApiResponse.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, location_name: "ProtocolType", traits: {"smithy.api#jsonName" => "protocolType"}))
    CreateApiResponse.add_member(:route_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteSelectionExpression", traits: {"smithy.api#jsonName" => "routeSelectionExpression"}))
    CreateApiResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateApiResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    CreateApiResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Warnings", traits: {"smithy.api#jsonName" => "warnings"}))
    CreateApiResponse.type = Types::CreateApiResponse
    CreateAuthorizerRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:authorizer_credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "AuthorizerCredentialsArn", traits: {"smithy.api#jsonName" => "authorizerCredentialsArn"}))
    CreateAuthorizerRequest.add_member(:authorizer_payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "AuthorizerPayloadFormatVersion", traits: {"smithy.api#jsonName" => "authorizerPayloadFormatVersion"}))
    CreateAuthorizerRequest.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween0And3600, location_name: "AuthorizerResultTtlInSeconds", traits: {"smithy.api#jsonName" => "authorizerResultTtlInSeconds"}))
    CreateAuthorizerRequest.add_member(:authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, location_name: "AuthorizerType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "authorizerType", "smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "AuthorizerUri", traits: {"smithy.api#jsonName" => "authorizerUri"}))
    CreateAuthorizerRequest.add_member(:enable_simple_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnableSimpleResponses", traits: {"smithy.api#jsonName" => "enableSimpleResponses"}))
    CreateAuthorizerRequest.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceList, location_name: "IdentitySource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "identitySource", "smithy.api#required" => {}}))
    CreateAuthorizerRequest.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "IdentityValidationExpression", traits: {"smithy.api#jsonName" => "identityValidationExpression"}))
    CreateAuthorizerRequest.add_member(:jwt_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JWTConfiguration, location_name: "JwtConfiguration", traits: {"smithy.api#jsonName" => "jwtConfiguration"}))
    CreateAuthorizerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateAuthorizerRequest.type = Types::CreateAuthorizerRequest
    CreateAuthorizerResponse.add_member(:authorizer_credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "AuthorizerCredentialsArn", traits: {"smithy.api#jsonName" => "authorizerCredentialsArn"}))
    CreateAuthorizerResponse.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    CreateAuthorizerResponse.add_member(:authorizer_payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "AuthorizerPayloadFormatVersion", traits: {"smithy.api#jsonName" => "authorizerPayloadFormatVersion"}))
    CreateAuthorizerResponse.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween0And3600, location_name: "AuthorizerResultTtlInSeconds", traits: {"smithy.api#jsonName" => "authorizerResultTtlInSeconds"}))
    CreateAuthorizerResponse.add_member(:authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, location_name: "AuthorizerType", traits: {"smithy.api#jsonName" => "authorizerType"}))
    CreateAuthorizerResponse.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "AuthorizerUri", traits: {"smithy.api#jsonName" => "authorizerUri"}))
    CreateAuthorizerResponse.add_member(:enable_simple_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnableSimpleResponses", traits: {"smithy.api#jsonName" => "enableSimpleResponses"}))
    CreateAuthorizerResponse.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceList, location_name: "IdentitySource", traits: {"smithy.api#jsonName" => "identitySource"}))
    CreateAuthorizerResponse.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "IdentityValidationExpression", traits: {"smithy.api#jsonName" => "identityValidationExpression"}))
    CreateAuthorizerResponse.add_member(:jwt_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JWTConfiguration, location_name: "JwtConfiguration", traits: {"smithy.api#jsonName" => "jwtConfiguration"}))
    CreateAuthorizerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    CreateAuthorizerResponse.type = Types::CreateAuthorizerResponse
    CreateDeploymentRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateDeploymentRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "StageName", traits: {"smithy.api#jsonName" => "stageName"}))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResponse.add_member(:auto_deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeployed", traits: {"smithy.api#jsonName" => "autoDeployed"}))
    CreateDeploymentResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    CreateDeploymentResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    CreateDeploymentResponse.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, location_name: "DeploymentStatus", traits: {"smithy.api#jsonName" => "deploymentStatus"}))
    CreateDeploymentResponse.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DeploymentStatusMessage", traits: {"smithy.api#jsonName" => "deploymentStatusMessage"}))
    CreateDeploymentResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateDeploymentResponse.type = Types::CreateDeploymentResponse
    CreateDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And512, location_name: "DomainName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "domainName", "smithy.api#required" => {}}))
    CreateDomainNameRequest.add_member(:domain_name_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfigurations, location_name: "DomainNameConfigurations", traits: {"smithy.api#jsonName" => "domainNameConfigurations"}))
    CreateDomainNameRequest.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthenticationInput, location_name: "MutualTlsAuthentication", traits: {"smithy.api#jsonName" => "mutualTlsAuthentication"}))
    CreateDomainNameRequest.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, location_name: "RoutingMode", traits: {"smithy.api#jsonName" => "routingMode"}))
    CreateDomainNameRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateDomainNameRequest.type = Types::CreateDomainNameRequest
    CreateDomainNameResponse.add_member(:api_mapping_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiMappingSelectionExpression", traits: {"smithy.api#jsonName" => "apiMappingSelectionExpression"}))
    CreateDomainNameResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And512, location_name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    CreateDomainNameResponse.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "DomainNameArn", traits: {"smithy.api#jsonName" => "domainNameArn"}))
    CreateDomainNameResponse.add_member(:domain_name_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfigurations, location_name: "DomainNameConfigurations", traits: {"smithy.api#jsonName" => "domainNameConfigurations"}))
    CreateDomainNameResponse.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthentication, location_name: "MutualTlsAuthentication", traits: {"smithy.api#jsonName" => "mutualTlsAuthentication"}))
    CreateDomainNameResponse.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, location_name: "RoutingMode", traits: {"smithy.api#jsonName" => "routingMode"}))
    CreateDomainNameResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateDomainNameResponse.type = Types::CreateDomainNameResponse
    CreateIntegrationRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntegrationRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And1024, location_name: "ConnectionId", traits: {"smithy.api#jsonName" => "connectionId"}))
    CreateIntegrationRequest.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, location_name: "ConnectionType", traits: {"smithy.api#jsonName" => "connectionType"}))
    CreateIntegrationRequest.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    CreateIntegrationRequest.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CredentialsArn", traits: {"smithy.api#jsonName" => "credentialsArn"}))
    CreateIntegrationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateIntegrationRequest.add_member(:integration_method, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "IntegrationMethod", traits: {"smithy.api#jsonName" => "integrationMethod"}))
    CreateIntegrationRequest.add_member(:integration_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "IntegrationSubtype", traits: {"smithy.api#jsonName" => "integrationSubtype"}))
    CreateIntegrationRequest.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "IntegrationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "integrationType", "smithy.api#required" => {}}))
    CreateIntegrationRequest.add_member(:integration_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "IntegrationUri", traits: {"smithy.api#jsonName" => "integrationUri"}))
    CreateIntegrationRequest.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PassthroughBehavior, location_name: "PassthroughBehavior", traits: {"smithy.api#jsonName" => "passthroughBehavior"}))
    CreateIntegrationRequest.add_member(:payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "PayloadFormatVersion", traits: {"smithy.api#jsonName" => "payloadFormatVersion"}))
    CreateIntegrationRequest.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    CreateIntegrationRequest.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "RequestTemplates", traits: {"smithy.api#jsonName" => "requestTemplates"}))
    CreateIntegrationRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    CreateIntegrationRequest.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    CreateIntegrationRequest.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween50And30000, location_name: "TimeoutInMillis", traits: {"smithy.api#jsonName" => "timeoutInMillis"}))
    CreateIntegrationRequest.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfigInput, location_name: "TlsConfig", traits: {"smithy.api#jsonName" => "tlsConfig"}))
    CreateIntegrationRequest.type = Types::CreateIntegrationRequest
    CreateIntegrationResponseRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntegrationResponseRequest.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    CreateIntegrationResponseRequest.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntegrationResponseRequest.add_member(:integration_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "IntegrationResponseKey", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "integrationResponseKey", "smithy.api#required" => {}}))
    CreateIntegrationResponseRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    CreateIntegrationResponseRequest.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "ResponseTemplates", traits: {"smithy.api#jsonName" => "responseTemplates"}))
    CreateIntegrationResponseRequest.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    CreateIntegrationResponseRequest.type = Types::CreateIntegrationResponseRequest
    CreateIntegrationResponseResponse.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    CreateIntegrationResponseResponse.add_member(:integration_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "IntegrationResponseId", traits: {"smithy.api#jsonName" => "integrationResponseId"}))
    CreateIntegrationResponseResponse.add_member(:integration_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "IntegrationResponseKey", traits: {"smithy.api#jsonName" => "integrationResponseKey"}))
    CreateIntegrationResponseResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    CreateIntegrationResponseResponse.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "ResponseTemplates", traits: {"smithy.api#jsonName" => "responseTemplates"}))
    CreateIntegrationResponseResponse.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    CreateIntegrationResponseResponse.type = Types::CreateIntegrationResponseResponse
    CreateIntegrationResult.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    CreateIntegrationResult.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And1024, location_name: "ConnectionId", traits: {"smithy.api#jsonName" => "connectionId"}))
    CreateIntegrationResult.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, location_name: "ConnectionType", traits: {"smithy.api#jsonName" => "connectionType"}))
    CreateIntegrationResult.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    CreateIntegrationResult.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CredentialsArn", traits: {"smithy.api#jsonName" => "credentialsArn"}))
    CreateIntegrationResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateIntegrationResult.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "IntegrationId", traits: {"smithy.api#jsonName" => "integrationId"}))
    CreateIntegrationResult.add_member(:integration_method, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "IntegrationMethod", traits: {"smithy.api#jsonName" => "integrationMethod"}))
    CreateIntegrationResult.add_member(:integration_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "IntegrationResponseSelectionExpression", traits: {"smithy.api#jsonName" => "integrationResponseSelectionExpression"}))
    CreateIntegrationResult.add_member(:integration_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "IntegrationSubtype", traits: {"smithy.api#jsonName" => "integrationSubtype"}))
    CreateIntegrationResult.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "IntegrationType", traits: {"smithy.api#jsonName" => "integrationType"}))
    CreateIntegrationResult.add_member(:integration_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "IntegrationUri", traits: {"smithy.api#jsonName" => "integrationUri"}))
    CreateIntegrationResult.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PassthroughBehavior, location_name: "PassthroughBehavior", traits: {"smithy.api#jsonName" => "passthroughBehavior"}))
    CreateIntegrationResult.add_member(:payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "PayloadFormatVersion", traits: {"smithy.api#jsonName" => "payloadFormatVersion"}))
    CreateIntegrationResult.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    CreateIntegrationResult.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "RequestTemplates", traits: {"smithy.api#jsonName" => "requestTemplates"}))
    CreateIntegrationResult.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    CreateIntegrationResult.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    CreateIntegrationResult.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween50And30000, location_name: "TimeoutInMillis", traits: {"smithy.api#jsonName" => "timeoutInMillis"}))
    CreateIntegrationResult.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, location_name: "TlsConfig", traits: {"smithy.api#jsonName" => "tlsConfig"}))
    CreateIntegrationResult.type = Types::CreateIntegrationResult
    CreateModelRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And256, location_name: "ContentType", traits: {"smithy.api#jsonName" => "contentType"}))
    CreateModelRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateModelRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateModelRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And32K, location_name: "Schema", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "schema", "smithy.api#required" => {}}))
    CreateModelRequest.type = Types::CreateModelRequest
    CreateModelResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And256, location_name: "ContentType", traits: {"smithy.api#jsonName" => "contentType"}))
    CreateModelResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateModelResponse.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ModelId", traits: {"smithy.api#jsonName" => "modelId"}))
    CreateModelResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    CreateModelResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And32K, location_name: "Schema", traits: {"smithy.api#jsonName" => "schema"}))
    CreateModelResponse.type = Types::CreateModelResponse
    CreateRouteRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteRequest.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiKeyRequired", traits: {"smithy.api#jsonName" => "apiKeyRequired"}))
    CreateRouteRequest.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationScopes, location_name: "AuthorizationScopes", traits: {"smithy.api#jsonName" => "authorizationScopes"}))
    CreateRouteRequest.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationType, location_name: "AuthorizationType", traits: {"smithy.api#jsonName" => "authorizationType"}))
    CreateRouteRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    CreateRouteRequest.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    CreateRouteRequest.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "OperationName", traits: {"smithy.api#jsonName" => "operationName"}))
    CreateRouteRequest.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "RequestModels", traits: {"smithy.api#jsonName" => "requestModels"}))
    CreateRouteRequest.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    CreateRouteRequest.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteKey", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "routeKey", "smithy.api#required" => {}}))
    CreateRouteRequest.add_member(:route_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteResponseSelectionExpression", traits: {"smithy.api#jsonName" => "routeResponseSelectionExpression"}))
    CreateRouteRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Target", traits: {"smithy.api#jsonName" => "target"}))
    CreateRouteRequest.type = Types::CreateRouteRequest
    CreateRouteResponseRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteResponseRequest.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    CreateRouteResponseRequest.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "ResponseModels", traits: {"smithy.api#jsonName" => "responseModels"}))
    CreateRouteResponseRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    CreateRouteResponseRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteResponseRequest.add_member(:route_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteResponseKey", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "routeResponseKey", "smithy.api#required" => {}}))
    CreateRouteResponseRequest.type = Types::CreateRouteResponseRequest
    CreateRouteResponseResponse.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    CreateRouteResponseResponse.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "ResponseModels", traits: {"smithy.api#jsonName" => "responseModels"}))
    CreateRouteResponseResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    CreateRouteResponseResponse.add_member(:route_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RouteResponseId", traits: {"smithy.api#jsonName" => "routeResponseId"}))
    CreateRouteResponseResponse.add_member(:route_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteResponseKey", traits: {"smithy.api#jsonName" => "routeResponseKey"}))
    CreateRouteResponseResponse.type = Types::CreateRouteResponseResponse
    CreateRouteResult.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    CreateRouteResult.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiKeyRequired", traits: {"smithy.api#jsonName" => "apiKeyRequired"}))
    CreateRouteResult.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationScopes, location_name: "AuthorizationScopes", traits: {"smithy.api#jsonName" => "authorizationScopes"}))
    CreateRouteResult.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationType, location_name: "AuthorizationType", traits: {"smithy.api#jsonName" => "authorizationType"}))
    CreateRouteResult.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    CreateRouteResult.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    CreateRouteResult.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "OperationName", traits: {"smithy.api#jsonName" => "operationName"}))
    CreateRouteResult.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "RequestModels", traits: {"smithy.api#jsonName" => "requestModels"}))
    CreateRouteResult.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    CreateRouteResult.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RouteId", traits: {"smithy.api#jsonName" => "routeId"}))
    CreateRouteResult.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteKey", traits: {"smithy.api#jsonName" => "routeKey"}))
    CreateRouteResult.add_member(:route_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteResponseSelectionExpression", traits: {"smithy.api#jsonName" => "routeResponseSelectionExpression"}))
    CreateRouteResult.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Target", traits: {"smithy.api#jsonName" => "target"}))
    CreateRouteResult.type = Types::CreateRouteResult
    CreateRoutingRuleRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingruleaction, location_name: "Actions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "actions", "smithy.api#required" => {}}))
    CreateRoutingRuleRequest.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingrulecondition, location_name: "Conditions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "conditions", "smithy.api#required" => {}}))
    CreateRoutingRuleRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRoutingRuleRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    CreateRoutingRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRulePriority, location_name: "Priority", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "priority", "smithy.api#required" => {}}))
    CreateRoutingRuleRequest.type = Types::CreateRoutingRuleRequest
    CreateRoutingRuleResponse.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingruleaction, location_name: "Actions", traits: {"smithy.api#jsonName" => "actions"}))
    CreateRoutingRuleResponse.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingrulecondition, location_name: "Conditions", traits: {"smithy.api#jsonName" => "conditions"}))
    CreateRoutingRuleResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRulePriority, location_name: "Priority", traits: {"smithy.api#jsonName" => "priority"}))
    CreateRoutingRuleResponse.add_member(:routing_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoutingRuleArn", traits: {"smithy.api#jsonName" => "routingRuleArn"}))
    CreateRoutingRuleResponse.add_member(:routing_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RoutingRuleId", traits: {"smithy.api#jsonName" => "routingRuleId"}))
    CreateRoutingRuleResponse.type = Types::CreateRoutingRuleResponse
    CreateStageRequest.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, location_name: "AccessLogSettings", traits: {"smithy.api#jsonName" => "accessLogSettings"}))
    CreateStageRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStageRequest.add_member(:auto_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeploy", traits: {"smithy.api#jsonName" => "autoDeploy"}))
    CreateStageRequest.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ClientCertificateId", traits: {"smithy.api#jsonName" => "clientCertificateId"}))
    CreateStageRequest.add_member(:default_route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettings, location_name: "DefaultRouteSettings", traits: {"smithy.api#jsonName" => "defaultRouteSettings"}))
    CreateStageRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    CreateStageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateStageRequest.add_member(:route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettingsMap, location_name: "RouteSettings", traits: {"smithy.api#jsonName" => "routeSettings"}))
    CreateStageRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "StageName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "stageName", "smithy.api#required" => {}}))
    CreateStageRequest.add_member(:stage_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: StageVariablesMap, location_name: "StageVariables", traits: {"smithy.api#jsonName" => "stageVariables"}))
    CreateStageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateStageRequest.type = Types::CreateStageRequest
    CreateStageResponse.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, location_name: "AccessLogSettings", traits: {"smithy.api#jsonName" => "accessLogSettings"}))
    CreateStageResponse.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    CreateStageResponse.add_member(:auto_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeploy", traits: {"smithy.api#jsonName" => "autoDeploy"}))
    CreateStageResponse.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ClientCertificateId", traits: {"smithy.api#jsonName" => "clientCertificateId"}))
    CreateStageResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    CreateStageResponse.add_member(:default_route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettings, location_name: "DefaultRouteSettings", traits: {"smithy.api#jsonName" => "defaultRouteSettings"}))
    CreateStageResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    CreateStageResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateStageResponse.add_member(:last_deployment_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LastDeploymentStatusMessage", traits: {"smithy.api#jsonName" => "lastDeploymentStatusMessage"}))
    CreateStageResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "LastUpdatedDate", traits: {"smithy.api#jsonName" => "lastUpdatedDate"}))
    CreateStageResponse.add_member(:route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettingsMap, location_name: "RouteSettings", traits: {"smithy.api#jsonName" => "routeSettings"}))
    CreateStageResponse.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "StageName", traits: {"smithy.api#jsonName" => "stageName"}))
    CreateStageResponse.add_member(:stage_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: StageVariablesMap, location_name: "StageVariables", traits: {"smithy.api#jsonName" => "stageVariables"}))
    CreateStageResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateStageResponse.type = Types::CreateStageResponse
    CreateVpcLinkRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateVpcLinkRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, location_name: "SecurityGroupIds", traits: {"smithy.api#jsonName" => "securityGroupIds"}))
    CreateVpcLinkRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, location_name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subnetIds", "smithy.api#required" => {}}))
    CreateVpcLinkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateVpcLinkRequest.type = Types::CreateVpcLinkRequest
    CreateVpcLinkResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    CreateVpcLinkResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    CreateVpcLinkResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, location_name: "SecurityGroupIds", traits: {"smithy.api#jsonName" => "securityGroupIds"}))
    CreateVpcLinkResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, location_name: "SubnetIds", traits: {"smithy.api#jsonName" => "subnetIds"}))
    CreateVpcLinkResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateVpcLinkResponse.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "VpcLinkId", traits: {"smithy.api#jsonName" => "vpcLinkId"}))
    CreateVpcLinkResponse.add_member(:vpc_link_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkStatus, location_name: "VpcLinkStatus", traits: {"smithy.api#jsonName" => "vpcLinkStatus"}))
    CreateVpcLinkResponse.add_member(:vpc_link_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "VpcLinkStatusMessage", traits: {"smithy.api#jsonName" => "vpcLinkStatusMessage"}))
    CreateVpcLinkResponse.add_member(:vpc_link_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkVersion, location_name: "VpcLinkVersion", traits: {"smithy.api#jsonName" => "vpcLinkVersion"}))
    CreateVpcLinkResponse.type = Types::CreateVpcLinkResponse
    DeleteAccessLogSettingsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessLogSettingsRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessLogSettingsRequest.type = Types::DeleteAccessLogSettingsRequest
    DeleteApiMappingRequest.add_member(:api_mapping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiMappingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiMappingRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiMappingRequest.type = Types::DeleteApiMappingRequest
    DeleteApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApiRequest.type = Types::DeleteApiRequest
    DeleteAuthorizerRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAuthorizerRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AuthorizerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAuthorizerRequest.type = Types::DeleteAuthorizerRequest
    DeleteCorsConfigurationRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCorsConfigurationRequest.type = Types::DeleteCorsConfigurationRequest
    DeleteDeploymentRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DeploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentRequest.type = Types::DeleteDeploymentRequest
    DeleteDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainNameRequest.type = Types::DeleteDomainNameRequest
    DeleteIntegrationRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.type = Types::DeleteIntegrationRequest
    DeleteIntegrationResponseRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.add_member(:integration_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationResponseRequest.type = Types::DeleteIntegrationResponseRequest
    DeleteModelRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelRequest.type = Types::DeleteModelRequest
    DeleteRouteRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteRequest.type = Types::DeleteRouteRequest
    DeleteRouteRequestParameterRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteRequestParameterRequest.add_member(:request_parameter_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RequestParameterKey", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteRequestParameterRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteRequestParameterRequest.type = Types::DeleteRouteRequestParameterRequest
    DeleteRouteResponseRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteResponseRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteResponseRequest.add_member(:route_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteResponseRequest.type = Types::DeleteRouteResponseRequest
    DeleteRouteSettingsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteSettingsRequest.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteKey", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteSettingsRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteSettingsRequest.type = Types::DeleteRouteSettingsRequest
    DeleteRoutingRuleRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoutingRuleRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    DeleteRoutingRuleRequest.add_member(:routing_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RoutingRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoutingRuleRequest.type = Types::DeleteRoutingRuleRequest
    DeleteStageRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStageRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStageRequest.type = Types::DeleteStageRequest
    DeleteVpcLinkRequest.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcLinkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcLinkRequest.type = Types::DeleteVpcLinkRequest
    DeleteVpcLinkResponse.type = Types::DeleteVpcLinkResponse
    Deployment.add_member(:auto_deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeployed", traits: {"smithy.api#jsonName" => "autoDeployed"}))
    Deployment.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    Deployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    Deployment.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, location_name: "DeploymentStatus", traits: {"smithy.api#jsonName" => "deploymentStatus"}))
    Deployment.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DeploymentStatusMessage", traits: {"smithy.api#jsonName" => "deploymentStatusMessage"}))
    Deployment.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Deployment.type = Types::Deployment
    DeploymentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeploymentStatus.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYED", traits: {"smithy.api#enumValue" => "DEPLOYED"}))
    DomainName.add_member(:api_mapping_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiMappingSelectionExpression", traits: {"smithy.api#jsonName" => "apiMappingSelectionExpression"}))
    DomainName.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And512, location_name: "DomainName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "domainName", "smithy.api#required" => {}}))
    DomainName.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "DomainNameArn", traits: {"smithy.api#jsonName" => "domainNameArn"}))
    DomainName.add_member(:domain_name_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfigurations, location_name: "DomainNameConfigurations", traits: {"smithy.api#jsonName" => "domainNameConfigurations"}))
    DomainName.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthentication, location_name: "MutualTlsAuthentication", traits: {"smithy.api#jsonName" => "mutualTlsAuthentication"}))
    DomainName.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, location_name: "RoutingMode", traits: {"smithy.api#jsonName" => "routingMode"}))
    DomainName.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DomainName.type = Types::DomainName
    DomainNameConfiguration.add_member(:api_gateway_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiGatewayDomainName", traits: {"smithy.api#jsonName" => "apiGatewayDomainName"}))
    DomainNameConfiguration.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CertificateArn", traits: {"smithy.api#jsonName" => "certificateArn"}))
    DomainNameConfiguration.add_member(:certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "CertificateName", traits: {"smithy.api#jsonName" => "certificateName"}))
    DomainNameConfiguration.add_member(:certificate_upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CertificateUploadDate", traits: {"smithy.api#jsonName" => "certificateUploadDate"}))
    DomainNameConfiguration.add_member(:domain_name_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameStatus, location_name: "DomainNameStatus", traits: {"smithy.api#jsonName" => "domainNameStatus"}))
    DomainNameConfiguration.add_member(:domain_name_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainNameStatusMessage", traits: {"smithy.api#jsonName" => "domainNameStatusMessage"}))
    DomainNameConfiguration.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, location_name: "EndpointType", traits: {"smithy.api#jsonName" => "endpointType"}))
    DomainNameConfiguration.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HostedZoneId", traits: {"smithy.api#jsonName" => "hostedZoneId"}))
    DomainNameConfiguration.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    DomainNameConfiguration.add_member(:security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicy, location_name: "SecurityPolicy", traits: {"smithy.api#jsonName" => "securityPolicy"}))
    DomainNameConfiguration.add_member(:ownership_verification_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "OwnershipVerificationCertificateArn", traits: {"smithy.api#jsonName" => "ownershipVerificationCertificateArn"}))
    DomainNameConfiguration.type = Types::DomainNameConfiguration
    DomainNameConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfiguration)
    DomainNameStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DomainNameStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DomainNameStatus.add_member(:pending_certificate_reimport, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_CERTIFICATE_REIMPORT", traits: {"smithy.api#enumValue" => "PENDING_CERTIFICATE_REIMPORT"}))
    DomainNameStatus.add_member(:pending_ownership_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_OWNERSHIP_VERIFICATION", traits: {"smithy.api#enumValue" => "PENDING_OWNERSHIP_VERIFICATION"}))
    EndpointType.add_member(:regional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGIONAL", traits: {"smithy.api#enumValue" => "REGIONAL"}))
    EndpointType.add_member(:edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EDGE", traits: {"smithy.api#enumValue" => "EDGE"}))
    ExportApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportApiRequest.add_member(:export_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ExportVersion", traits: {"smithy.api#httpQuery" => "exportVersion"}))
    ExportApiRequest.add_member(:include_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IncludeExtensions", traits: {"smithy.api#httpQuery" => "includeExtensions"}))
    ExportApiRequest.add_member(:output_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "OutputType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "outputType", "smithy.api#required" => {}}))
    ExportApiRequest.add_member(:specification, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Specification", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportApiRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StageName", traits: {"smithy.api#httpQuery" => "stageName"}))
    ExportApiRequest.type = Types::ExportApiRequest
    ExportApiResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportedApi, location_name: "body", traits: {"smithy.api#httpPayload" => {}}))
    ExportApiResponse[:http_payload] = :body
    ExportApiResponse[:http_payload_member] = ExportApiResponse.member(:body)
    ExportApiResponse.type = Types::ExportApiResponse
    GetApiMappingRequest.add_member(:api_mapping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiMappingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiMappingRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiMappingRequest.type = Types::GetApiMappingRequest
    GetApiMappingResponse.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    GetApiMappingResponse.add_member(:api_mapping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiMappingId", traits: {"smithy.api#jsonName" => "apiMappingId"}))
    GetApiMappingResponse.add_member(:api_mapping_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "ApiMappingKey", traits: {"smithy.api#jsonName" => "apiMappingKey"}))
    GetApiMappingResponse.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Stage", traits: {"smithy.api#jsonName" => "stage"}))
    GetApiMappingResponse.type = Types::GetApiMappingResponse
    GetApiMappingsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiMappingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetApiMappingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetApiMappingsRequest.type = Types::GetApiMappingsRequest
    GetApiMappingsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofapimapping, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetApiMappingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetApiMappingsResponse.type = Types::GetApiMappingsResponse
    GetApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApiRequest.type = Types::GetApiRequest
    GetApiResponse.add_member(:api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiEndpoint", traits: {"smithy.api#jsonName" => "apiEndpoint"}))
    GetApiResponse.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    GetApiResponse.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    GetApiResponse.add_member(:api_key_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiKeySelectionExpression", traits: {"smithy.api#jsonName" => "apiKeySelectionExpression"}))
    GetApiResponse.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, location_name: "CorsConfiguration", traits: {"smithy.api#jsonName" => "corsConfiguration"}))
    GetApiResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    GetApiResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GetApiResponse.add_member(:disable_schema_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableSchemaValidation", traits: {"smithy.api#jsonName" => "disableSchemaValidation"}))
    GetApiResponse.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableExecuteApiEndpoint", traits: {"smithy.api#jsonName" => "disableExecuteApiEndpoint"}))
    GetApiResponse.add_member(:import_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "ImportInfo", traits: {"smithy.api#jsonName" => "importInfo"}))
    GetApiResponse.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    GetApiResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    GetApiResponse.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, location_name: "ProtocolType", traits: {"smithy.api#jsonName" => "protocolType"}))
    GetApiResponse.add_member(:route_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteSelectionExpression", traits: {"smithy.api#jsonName" => "routeSelectionExpression"}))
    GetApiResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetApiResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    GetApiResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Warnings", traits: {"smithy.api#jsonName" => "warnings"}))
    GetApiResponse.type = Types::GetApiResponse
    GetApisRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetApisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetApisRequest.type = Types::GetApisRequest
    GetApisResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofapi, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetApisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetApisResponse.type = Types::GetApisResponse
    GetAuthorizerRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizerRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AuthorizerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizerRequest.type = Types::GetAuthorizerRequest
    GetAuthorizerResponse.add_member(:authorizer_credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "AuthorizerCredentialsArn", traits: {"smithy.api#jsonName" => "authorizerCredentialsArn"}))
    GetAuthorizerResponse.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    GetAuthorizerResponse.add_member(:authorizer_payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "AuthorizerPayloadFormatVersion", traits: {"smithy.api#jsonName" => "authorizerPayloadFormatVersion"}))
    GetAuthorizerResponse.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween0And3600, location_name: "AuthorizerResultTtlInSeconds", traits: {"smithy.api#jsonName" => "authorizerResultTtlInSeconds"}))
    GetAuthorizerResponse.add_member(:authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, location_name: "AuthorizerType", traits: {"smithy.api#jsonName" => "authorizerType"}))
    GetAuthorizerResponse.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "AuthorizerUri", traits: {"smithy.api#jsonName" => "authorizerUri"}))
    GetAuthorizerResponse.add_member(:enable_simple_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnableSimpleResponses", traits: {"smithy.api#jsonName" => "enableSimpleResponses"}))
    GetAuthorizerResponse.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceList, location_name: "IdentitySource", traits: {"smithy.api#jsonName" => "identitySource"}))
    GetAuthorizerResponse.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "IdentityValidationExpression", traits: {"smithy.api#jsonName" => "identityValidationExpression"}))
    GetAuthorizerResponse.add_member(:jwt_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JWTConfiguration, location_name: "JwtConfiguration", traits: {"smithy.api#jsonName" => "jwtConfiguration"}))
    GetAuthorizerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    GetAuthorizerResponse.type = Types::GetAuthorizerResponse
    GetAuthorizersRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthorizersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetAuthorizersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetAuthorizersRequest.type = Types::GetAuthorizersRequest
    GetAuthorizersResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofauthorizer, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetAuthorizersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetAuthorizersResponse.type = Types::GetAuthorizersResponse
    GetDeploymentRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DeploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.type = Types::GetDeploymentRequest
    GetDeploymentResponse.add_member(:auto_deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeployed", traits: {"smithy.api#jsonName" => "autoDeployed"}))
    GetDeploymentResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    GetDeploymentResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    GetDeploymentResponse.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, location_name: "DeploymentStatus", traits: {"smithy.api#jsonName" => "deploymentStatus"}))
    GetDeploymentResponse.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DeploymentStatusMessage", traits: {"smithy.api#jsonName" => "deploymentStatusMessage"}))
    GetDeploymentResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GetDeploymentResponse.type = Types::GetDeploymentResponse
    GetDeploymentsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetDeploymentsRequest.type = Types::GetDeploymentsRequest
    GetDeploymentsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdeployment, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetDeploymentsResponse.type = Types::GetDeploymentsResponse
    GetDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainNameRequest.type = Types::GetDomainNameRequest
    GetDomainNameResponse.add_member(:api_mapping_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiMappingSelectionExpression", traits: {"smithy.api#jsonName" => "apiMappingSelectionExpression"}))
    GetDomainNameResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And512, location_name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    GetDomainNameResponse.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "DomainNameArn", traits: {"smithy.api#jsonName" => "domainNameArn"}))
    GetDomainNameResponse.add_member(:domain_name_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfigurations, location_name: "DomainNameConfigurations", traits: {"smithy.api#jsonName" => "domainNameConfigurations"}))
    GetDomainNameResponse.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthentication, location_name: "MutualTlsAuthentication", traits: {"smithy.api#jsonName" => "mutualTlsAuthentication"}))
    GetDomainNameResponse.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, location_name: "RoutingMode", traits: {"smithy.api#jsonName" => "routingMode"}))
    GetDomainNameResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetDomainNameResponse.type = Types::GetDomainNameResponse
    GetDomainNamesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetDomainNamesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetDomainNamesRequest.type = Types::GetDomainNamesRequest
    GetDomainNamesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdomainname, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetDomainNamesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetDomainNamesResponse.type = Types::GetDomainNamesResponse
    GetIntegrationRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.type = Types::GetIntegrationRequest
    GetIntegrationResponseRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.add_member(:integration_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponseRequest.type = Types::GetIntegrationResponseRequest
    GetIntegrationResponseResponse.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    GetIntegrationResponseResponse.add_member(:integration_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "IntegrationResponseId", traits: {"smithy.api#jsonName" => "integrationResponseId"}))
    GetIntegrationResponseResponse.add_member(:integration_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "IntegrationResponseKey", traits: {"smithy.api#jsonName" => "integrationResponseKey"}))
    GetIntegrationResponseResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    GetIntegrationResponseResponse.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "ResponseTemplates", traits: {"smithy.api#jsonName" => "responseTemplates"}))
    GetIntegrationResponseResponse.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    GetIntegrationResponseResponse.type = Types::GetIntegrationResponseResponse
    GetIntegrationResponsesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponsesRequest.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationResponsesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetIntegrationResponsesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetIntegrationResponsesRequest.type = Types::GetIntegrationResponsesRequest
    GetIntegrationResponsesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofintegrationresponse, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetIntegrationResponsesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetIntegrationResponsesResponse.type = Types::GetIntegrationResponsesResponse
    GetIntegrationResult.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    GetIntegrationResult.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And1024, location_name: "ConnectionId", traits: {"smithy.api#jsonName" => "connectionId"}))
    GetIntegrationResult.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, location_name: "ConnectionType", traits: {"smithy.api#jsonName" => "connectionType"}))
    GetIntegrationResult.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    GetIntegrationResult.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CredentialsArn", traits: {"smithy.api#jsonName" => "credentialsArn"}))
    GetIntegrationResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GetIntegrationResult.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "IntegrationId", traits: {"smithy.api#jsonName" => "integrationId"}))
    GetIntegrationResult.add_member(:integration_method, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "IntegrationMethod", traits: {"smithy.api#jsonName" => "integrationMethod"}))
    GetIntegrationResult.add_member(:integration_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "IntegrationResponseSelectionExpression", traits: {"smithy.api#jsonName" => "integrationResponseSelectionExpression"}))
    GetIntegrationResult.add_member(:integration_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "IntegrationSubtype", traits: {"smithy.api#jsonName" => "integrationSubtype"}))
    GetIntegrationResult.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "IntegrationType", traits: {"smithy.api#jsonName" => "integrationType"}))
    GetIntegrationResult.add_member(:integration_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "IntegrationUri", traits: {"smithy.api#jsonName" => "integrationUri"}))
    GetIntegrationResult.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PassthroughBehavior, location_name: "PassthroughBehavior", traits: {"smithy.api#jsonName" => "passthroughBehavior"}))
    GetIntegrationResult.add_member(:payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "PayloadFormatVersion", traits: {"smithy.api#jsonName" => "payloadFormatVersion"}))
    GetIntegrationResult.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    GetIntegrationResult.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "RequestTemplates", traits: {"smithy.api#jsonName" => "requestTemplates"}))
    GetIntegrationResult.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    GetIntegrationResult.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    GetIntegrationResult.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween50And30000, location_name: "TimeoutInMillis", traits: {"smithy.api#jsonName" => "timeoutInMillis"}))
    GetIntegrationResult.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, location_name: "TlsConfig", traits: {"smithy.api#jsonName" => "tlsConfig"}))
    GetIntegrationResult.type = Types::GetIntegrationResult
    GetIntegrationsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetIntegrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetIntegrationsRequest.type = Types::GetIntegrationsRequest
    GetIntegrationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofintegration, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetIntegrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetIntegrationsResponse.type = Types::GetIntegrationsResponse
    GetModelRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelRequest.type = Types::GetModelRequest
    GetModelResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And256, location_name: "ContentType", traits: {"smithy.api#jsonName" => "contentType"}))
    GetModelResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GetModelResponse.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ModelId", traits: {"smithy.api#jsonName" => "modelId"}))
    GetModelResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    GetModelResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And32K, location_name: "Schema", traits: {"smithy.api#jsonName" => "schema"}))
    GetModelResponse.type = Types::GetModelResponse
    GetModelTemplateRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelTemplateRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelTemplateRequest.type = Types::GetModelTemplateRequest
    GetModelTemplateResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value", traits: {"smithy.api#jsonName" => "value"}))
    GetModelTemplateResponse.type = Types::GetModelTemplateResponse
    GetModelsRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetModelsRequest.type = Types::GetModelsRequest
    GetModelsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmodel, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetModelsResponse.type = Types::GetModelsResponse
    GetRouteRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteRequest.type = Types::GetRouteRequest
    GetRouteResponseRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteResponseRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteResponseRequest.add_member(:route_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteResponseRequest.type = Types::GetRouteResponseRequest
    GetRouteResponseResponse.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    GetRouteResponseResponse.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "ResponseModels", traits: {"smithy.api#jsonName" => "responseModels"}))
    GetRouteResponseResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    GetRouteResponseResponse.add_member(:route_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RouteResponseId", traits: {"smithy.api#jsonName" => "routeResponseId"}))
    GetRouteResponseResponse.add_member(:route_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteResponseKey", traits: {"smithy.api#jsonName" => "routeResponseKey"}))
    GetRouteResponseResponse.type = Types::GetRouteResponseResponse
    GetRouteResponsesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteResponsesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetRouteResponsesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetRouteResponsesRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteResponsesRequest.type = Types::GetRouteResponsesRequest
    GetRouteResponsesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofrouteresponse, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetRouteResponsesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetRouteResponsesResponse.type = Types::GetRouteResponsesResponse
    GetRouteResult.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    GetRouteResult.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiKeyRequired", traits: {"smithy.api#jsonName" => "apiKeyRequired"}))
    GetRouteResult.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationScopes, location_name: "AuthorizationScopes", traits: {"smithy.api#jsonName" => "authorizationScopes"}))
    GetRouteResult.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationType, location_name: "AuthorizationType", traits: {"smithy.api#jsonName" => "authorizationType"}))
    GetRouteResult.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    GetRouteResult.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    GetRouteResult.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "OperationName", traits: {"smithy.api#jsonName" => "operationName"}))
    GetRouteResult.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "RequestModels", traits: {"smithy.api#jsonName" => "requestModels"}))
    GetRouteResult.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    GetRouteResult.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RouteId", traits: {"smithy.api#jsonName" => "routeId"}))
    GetRouteResult.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteKey", traits: {"smithy.api#jsonName" => "routeKey"}))
    GetRouteResult.add_member(:route_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteResponseSelectionExpression", traits: {"smithy.api#jsonName" => "routeResponseSelectionExpression"}))
    GetRouteResult.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Target", traits: {"smithy.api#jsonName" => "target"}))
    GetRouteResult.type = Types::GetRouteResult
    GetRoutesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRoutesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetRoutesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetRoutesRequest.type = Types::GetRoutesRequest
    GetRoutesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroute, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetRoutesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetRoutesResponse.type = Types::GetRoutesResponse
    GetRoutingRuleRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRoutingRuleRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    GetRoutingRuleRequest.add_member(:routing_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RoutingRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRoutingRuleRequest.type = Types::GetRoutingRuleRequest
    GetRoutingRuleResponse.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingruleaction, location_name: "Actions", traits: {"smithy.api#jsonName" => "actions"}))
    GetRoutingRuleResponse.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingrulecondition, location_name: "Conditions", traits: {"smithy.api#jsonName" => "conditions"}))
    GetRoutingRuleResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRulePriority, location_name: "Priority", traits: {"smithy.api#jsonName" => "priority"}))
    GetRoutingRuleResponse.add_member(:routing_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoutingRuleArn", traits: {"smithy.api#jsonName" => "routingRuleArn"}))
    GetRoutingRuleResponse.add_member(:routing_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RoutingRuleId", traits: {"smithy.api#jsonName" => "routingRuleId"}))
    GetRoutingRuleResponse.type = Types::GetRoutingRuleResponse
    GetStageRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStageRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStageRequest.type = Types::GetStageRequest
    GetStageResponse.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, location_name: "AccessLogSettings", traits: {"smithy.api#jsonName" => "accessLogSettings"}))
    GetStageResponse.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    GetStageResponse.add_member(:auto_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeploy", traits: {"smithy.api#jsonName" => "autoDeploy"}))
    GetStageResponse.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ClientCertificateId", traits: {"smithy.api#jsonName" => "clientCertificateId"}))
    GetStageResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    GetStageResponse.add_member(:default_route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettings, location_name: "DefaultRouteSettings", traits: {"smithy.api#jsonName" => "defaultRouteSettings"}))
    GetStageResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    GetStageResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GetStageResponse.add_member(:last_deployment_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LastDeploymentStatusMessage", traits: {"smithy.api#jsonName" => "lastDeploymentStatusMessage"}))
    GetStageResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "LastUpdatedDate", traits: {"smithy.api#jsonName" => "lastUpdatedDate"}))
    GetStageResponse.add_member(:route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettingsMap, location_name: "RouteSettings", traits: {"smithy.api#jsonName" => "routeSettings"}))
    GetStageResponse.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "StageName", traits: {"smithy.api#jsonName" => "stageName"}))
    GetStageResponse.add_member(:stage_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: StageVariablesMap, location_name: "StageVariables", traits: {"smithy.api#jsonName" => "stageVariables"}))
    GetStageResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetStageResponse.type = Types::GetStageResponse
    GetStagesRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetStagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetStagesRequest.type = Types::GetStagesRequest
    GetStagesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstage, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetStagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetStagesResponse.type = Types::GetStagesResponse
    GetTagsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTagsRequest.type = Types::GetTagsRequest
    GetTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetTagsResponse.type = Types::GetTagsResponse
    GetVpcLinkRequest.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcLinkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcLinkRequest.type = Types::GetVpcLinkRequest
    GetVpcLinkResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    GetVpcLinkResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    GetVpcLinkResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, location_name: "SecurityGroupIds", traits: {"smithy.api#jsonName" => "securityGroupIds"}))
    GetVpcLinkResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, location_name: "SubnetIds", traits: {"smithy.api#jsonName" => "subnetIds"}))
    GetVpcLinkResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetVpcLinkResponse.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "VpcLinkId", traits: {"smithy.api#jsonName" => "vpcLinkId"}))
    GetVpcLinkResponse.add_member(:vpc_link_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkStatus, location_name: "VpcLinkStatus", traits: {"smithy.api#jsonName" => "vpcLinkStatus"}))
    GetVpcLinkResponse.add_member(:vpc_link_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "VpcLinkStatusMessage", traits: {"smithy.api#jsonName" => "vpcLinkStatusMessage"}))
    GetVpcLinkResponse.add_member(:vpc_link_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkVersion, location_name: "VpcLinkVersion", traits: {"smithy.api#jsonName" => "vpcLinkVersion"}))
    GetVpcLinkResponse.type = Types::GetVpcLinkResponse
    GetVpcLinksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetVpcLinksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetVpcLinksRequest.type = Types::GetVpcLinksRequest
    GetVpcLinksResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpclink, location_name: "Items", traits: {"smithy.api#jsonName" => "items"}))
    GetVpcLinksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetVpcLinksResponse.type = Types::GetVpcLinksResponse
    IdentitySourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ImportApiRequest.add_member(:basepath, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Basepath", traits: {"smithy.api#httpQuery" => "basepath"}))
    ImportApiRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Body", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "body", "smithy.api#required" => {}}))
    ImportApiRequest.add_member(:fail_on_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FailOnWarnings", traits: {"smithy.api#httpQuery" => "failOnWarnings"}))
    ImportApiRequest.type = Types::ImportApiRequest
    ImportApiResponse.add_member(:api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiEndpoint", traits: {"smithy.api#jsonName" => "apiEndpoint"}))
    ImportApiResponse.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    ImportApiResponse.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    ImportApiResponse.add_member(:api_key_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiKeySelectionExpression", traits: {"smithy.api#jsonName" => "apiKeySelectionExpression"}))
    ImportApiResponse.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, location_name: "CorsConfiguration", traits: {"smithy.api#jsonName" => "corsConfiguration"}))
    ImportApiResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    ImportApiResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    ImportApiResponse.add_member(:disable_schema_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableSchemaValidation", traits: {"smithy.api#jsonName" => "disableSchemaValidation"}))
    ImportApiResponse.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableExecuteApiEndpoint", traits: {"smithy.api#jsonName" => "disableExecuteApiEndpoint"}))
    ImportApiResponse.add_member(:import_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "ImportInfo", traits: {"smithy.api#jsonName" => "importInfo"}))
    ImportApiResponse.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    ImportApiResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    ImportApiResponse.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, location_name: "ProtocolType", traits: {"smithy.api#jsonName" => "protocolType"}))
    ImportApiResponse.add_member(:route_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteSelectionExpression", traits: {"smithy.api#jsonName" => "routeSelectionExpression"}))
    ImportApiResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ImportApiResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    ImportApiResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Warnings", traits: {"smithy.api#jsonName" => "warnings"}))
    ImportApiResponse.type = Types::ImportApiResponse
    Integration.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    Integration.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And1024, location_name: "ConnectionId", traits: {"smithy.api#jsonName" => "connectionId"}))
    Integration.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, location_name: "ConnectionType", traits: {"smithy.api#jsonName" => "connectionType"}))
    Integration.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    Integration.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CredentialsArn", traits: {"smithy.api#jsonName" => "credentialsArn"}))
    Integration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Integration.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "IntegrationId", traits: {"smithy.api#jsonName" => "integrationId"}))
    Integration.add_member(:integration_method, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "IntegrationMethod", traits: {"smithy.api#jsonName" => "integrationMethod"}))
    Integration.add_member(:integration_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "IntegrationResponseSelectionExpression", traits: {"smithy.api#jsonName" => "integrationResponseSelectionExpression"}))
    Integration.add_member(:integration_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "IntegrationSubtype", traits: {"smithy.api#jsonName" => "integrationSubtype"}))
    Integration.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "IntegrationType", traits: {"smithy.api#jsonName" => "integrationType"}))
    Integration.add_member(:integration_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "IntegrationUri", traits: {"smithy.api#jsonName" => "integrationUri"}))
    Integration.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PassthroughBehavior, location_name: "PassthroughBehavior", traits: {"smithy.api#jsonName" => "passthroughBehavior"}))
    Integration.add_member(:payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "PayloadFormatVersion", traits: {"smithy.api#jsonName" => "payloadFormatVersion"}))
    Integration.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    Integration.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "RequestTemplates", traits: {"smithy.api#jsonName" => "requestTemplates"}))
    Integration.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    Integration.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    Integration.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween50And30000, location_name: "TimeoutInMillis", traits: {"smithy.api#jsonName" => "timeoutInMillis"}))
    Integration.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, location_name: "TlsConfig", traits: {"smithy.api#jsonName" => "tlsConfig"}))
    Integration.type = Types::Integration
    IntegrationParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    IntegrationParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And512)
    IntegrationResponse.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    IntegrationResponse.add_member(:integration_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "IntegrationResponseId", traits: {"smithy.api#jsonName" => "integrationResponseId"}))
    IntegrationResponse.add_member(:integration_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "IntegrationResponseKey", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "integrationResponseKey", "smithy.api#required" => {}}))
    IntegrationResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    IntegrationResponse.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "ResponseTemplates", traits: {"smithy.api#jsonName" => "responseTemplates"}))
    IntegrationResponse.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    IntegrationResponse.type = Types::IntegrationResponse
    IntegrationType.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    IntegrationType.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    IntegrationType.add_member(:mock, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MOCK", traits: {"smithy.api#enumValue" => "MOCK"}))
    IntegrationType.add_member(:http_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP_PROXY", traits: {"smithy.api#enumValue" => "HTTP_PROXY"}))
    IntegrationType.add_member(:aws_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_PROXY", traits: {"smithy.api#enumValue" => "AWS_PROXY"}))
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ipv4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "dualstack", traits: {"smithy.api#enumValue" => "dualstack"}))
    JWTConfiguration.add_member(:audience, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Audience", traits: {"smithy.api#jsonName" => "audience"}))
    JWTConfiguration.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "Issuer", traits: {"smithy.api#jsonName" => "issuer"}))
    JWTConfiguration.type = Types::JWTConfiguration
    ListRoutingRulesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutingRulesRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    ListRoutingRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRoutingRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRoutingRulesRequest.type = Types::ListRoutingRulesRequest
    ListRoutingRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListRoutingRulesResponse.add_member(:routing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingrule, location_name: "RoutingRules", traits: {"smithy.api#jsonName" => "routingRules"}))
    ListRoutingRulesResponse.type = Types::ListRoutingRulesResponse
    LoggingLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggingLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    LoggingLevel.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    Model.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And256, location_name: "ContentType", traits: {"smithy.api#jsonName" => "contentType"}))
    Model.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Model.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ModelId", traits: {"smithy.api#jsonName" => "modelId"}))
    Model.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Model.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And32K, location_name: "Schema", traits: {"smithy.api#jsonName" => "schema"}))
    Model.type = Types::Model
    MutualTlsAuthentication.add_member(:truststore_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "TruststoreUri", traits: {"smithy.api#jsonName" => "truststoreUri"}))
    MutualTlsAuthentication.add_member(:truststore_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "TruststoreVersion", traits: {"smithy.api#jsonName" => "truststoreVersion"}))
    MutualTlsAuthentication.add_member(:truststore_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "TruststoreWarnings", traits: {"smithy.api#jsonName" => "truststoreWarnings"}))
    MutualTlsAuthentication.type = Types::MutualTlsAuthentication
    MutualTlsAuthenticationInput.add_member(:truststore_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "TruststoreUri", traits: {"smithy.api#jsonName" => "truststoreUri"}))
    MutualTlsAuthenticationInput.add_member(:truststore_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "TruststoreVersion", traits: {"smithy.api#jsonName" => "truststoreVersion"}))
    MutualTlsAuthenticationInput.type = Types::MutualTlsAuthenticationInput
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    NotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceType", traits: {"smithy.api#jsonName" => "resourceType"}))
    NotFoundException.type = Types::NotFoundException
    ParameterConstraints.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Required", traits: {"smithy.api#jsonName" => "required"}))
    ParameterConstraints.type = Types::ParameterConstraints
    PassthroughBehavior.add_member(:when_no_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WHEN_NO_MATCH", traits: {"smithy.api#enumValue" => "WHEN_NO_MATCH"}))
    PassthroughBehavior.add_member(:never, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEVER", traits: {"smithy.api#enumValue" => "NEVER"}))
    PassthroughBehavior.add_member(:when_no_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WHEN_NO_TEMPLATES", traits: {"smithy.api#enumValue" => "WHEN_NO_TEMPLATES"}))
    ProtocolType.add_member(:websocket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEBSOCKET", traits: {"smithy.api#enumValue" => "WEBSOCKET"}))
    ProtocolType.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    PutRoutingRuleRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingruleaction, location_name: "Actions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "actions", "smithy.api#required" => {}}))
    PutRoutingRuleRequest.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingrulecondition, location_name: "Conditions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "conditions", "smithy.api#required" => {}}))
    PutRoutingRuleRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRoutingRuleRequest.add_member(:domain_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainNameId", traits: {"smithy.api#httpQuery" => "domainNameId"}))
    PutRoutingRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRulePriority, location_name: "Priority", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "priority", "smithy.api#required" => {}}))
    PutRoutingRuleRequest.add_member(:routing_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RoutingRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRoutingRuleRequest.type = Types::PutRoutingRuleRequest
    PutRoutingRuleResponse.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingruleaction, location_name: "Actions", traits: {"smithy.api#jsonName" => "actions"}))
    PutRoutingRuleResponse.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingrulecondition, location_name: "Conditions", traits: {"smithy.api#jsonName" => "conditions"}))
    PutRoutingRuleResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRulePriority, location_name: "Priority", traits: {"smithy.api#jsonName" => "priority"}))
    PutRoutingRuleResponse.add_member(:routing_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoutingRuleArn", traits: {"smithy.api#jsonName" => "routingRuleArn"}))
    PutRoutingRuleResponse.add_member(:routing_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RoutingRuleId", traits: {"smithy.api#jsonName" => "routingRuleId"}))
    PutRoutingRuleResponse.type = Types::PutRoutingRuleResponse
    ReimportApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ReimportApiRequest.add_member(:basepath, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Basepath", traits: {"smithy.api#httpQuery" => "basepath"}))
    ReimportApiRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Body", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "body", "smithy.api#required" => {}}))
    ReimportApiRequest.add_member(:fail_on_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FailOnWarnings", traits: {"smithy.api#httpQuery" => "failOnWarnings"}))
    ReimportApiRequest.type = Types::ReimportApiRequest
    ReimportApiResponse.add_member(:api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiEndpoint", traits: {"smithy.api#jsonName" => "apiEndpoint"}))
    ReimportApiResponse.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    ReimportApiResponse.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    ReimportApiResponse.add_member(:api_key_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiKeySelectionExpression", traits: {"smithy.api#jsonName" => "apiKeySelectionExpression"}))
    ReimportApiResponse.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, location_name: "CorsConfiguration", traits: {"smithy.api#jsonName" => "corsConfiguration"}))
    ReimportApiResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    ReimportApiResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    ReimportApiResponse.add_member(:disable_schema_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableSchemaValidation", traits: {"smithy.api#jsonName" => "disableSchemaValidation"}))
    ReimportApiResponse.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableExecuteApiEndpoint", traits: {"smithy.api#jsonName" => "disableExecuteApiEndpoint"}))
    ReimportApiResponse.add_member(:import_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "ImportInfo", traits: {"smithy.api#jsonName" => "importInfo"}))
    ReimportApiResponse.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    ReimportApiResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    ReimportApiResponse.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, location_name: "ProtocolType", traits: {"smithy.api#jsonName" => "protocolType"}))
    ReimportApiResponse.add_member(:route_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteSelectionExpression", traits: {"smithy.api#jsonName" => "routeSelectionExpression"}))
    ReimportApiResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ReimportApiResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    ReimportApiResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Warnings", traits: {"smithy.api#jsonName" => "warnings"}))
    ReimportApiResponse.type = Types::ReimportApiResponse
    ResetAuthorizersCacheRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetAuthorizersCacheRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetAuthorizersCacheRequest.type = Types::ResetAuthorizersCacheRequest
    ResponseParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ResponseParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters)
    Route.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    Route.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiKeyRequired", traits: {"smithy.api#jsonName" => "apiKeyRequired"}))
    Route.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationScopes, location_name: "AuthorizationScopes", traits: {"smithy.api#jsonName" => "authorizationScopes"}))
    Route.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationType, location_name: "AuthorizationType", traits: {"smithy.api#jsonName" => "authorizationType"}))
    Route.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    Route.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    Route.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "OperationName", traits: {"smithy.api#jsonName" => "operationName"}))
    Route.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "RequestModels", traits: {"smithy.api#jsonName" => "requestModels"}))
    Route.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    Route.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RouteId", traits: {"smithy.api#jsonName" => "routeId"}))
    Route.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteKey", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "routeKey", "smithy.api#required" => {}}))
    Route.add_member(:route_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteResponseSelectionExpression", traits: {"smithy.api#jsonName" => "routeResponseSelectionExpression"}))
    Route.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Target", traits: {"smithy.api#jsonName" => "target"}))
    Route.type = Types::Route
    RouteModels.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    RouteModels.value = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128)
    RouteParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    RouteParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterConstraints)
    RouteResponse.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    RouteResponse.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "ResponseModels", traits: {"smithy.api#jsonName" => "responseModels"}))
    RouteResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    RouteResponse.add_member(:route_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RouteResponseId", traits: {"smithy.api#jsonName" => "routeResponseId"}))
    RouteResponse.add_member(:route_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteResponseKey", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "routeResponseKey", "smithy.api#required" => {}}))
    RouteResponse.type = Types::RouteResponse
    RouteSettings.add_member(:data_trace_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DataTraceEnabled", traits: {"smithy.api#jsonName" => "dataTraceEnabled"}))
    RouteSettings.add_member(:detailed_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DetailedMetricsEnabled", traits: {"smithy.api#jsonName" => "detailedMetricsEnabled"}))
    RouteSettings.add_member(:logging_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingLevel, location_name: "LoggingLevel", traits: {"smithy.api#jsonName" => "loggingLevel"}))
    RouteSettings.add_member(:throttling_burst_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ThrottlingBurstLimit", traits: {"smithy.api#jsonName" => "throttlingBurstLimit"}))
    RouteSettings.add_member(:throttling_rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "ThrottlingRateLimit", traits: {"smithy.api#jsonName" => "throttlingRateLimit"}))
    RouteSettings.type = Types::RouteSettings
    RouteSettingsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    RouteSettingsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettings)
    RoutingMode.add_member(:api_mapping_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "API_MAPPING_ONLY", traits: {"smithy.api#enumValue" => "API_MAPPING_ONLY"}))
    RoutingMode.add_member(:routing_rule_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROUTING_RULE_ONLY", traits: {"smithy.api#enumValue" => "ROUTING_RULE_ONLY"}))
    RoutingMode.add_member(:routing_rule_then_api_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROUTING_RULE_THEN_API_MAPPING", traits: {"smithy.api#enumValue" => "ROUTING_RULE_THEN_API_MAPPING"}))
    RoutingRule.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingruleaction, location_name: "Actions", traits: {"smithy.api#jsonName" => "actions"}))
    RoutingRule.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingrulecondition, location_name: "Conditions", traits: {"smithy.api#jsonName" => "conditions"}))
    RoutingRule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRulePriority, location_name: "Priority", traits: {"smithy.api#jsonName" => "priority"}))
    RoutingRule.add_member(:routing_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoutingRuleArn", traits: {"smithy.api#jsonName" => "routingRuleArn"}))
    RoutingRule.add_member(:routing_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RoutingRuleId", traits: {"smithy.api#jsonName" => "routingRuleId"}))
    RoutingRule.type = Types::RoutingRule
    RoutingRuleAction.add_member(:invoke_api, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRuleActionInvokeApi, location_name: "InvokeApi", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "invokeApi", "smithy.api#required" => {}}))
    RoutingRuleAction.type = Types::RoutingRuleAction
    RoutingRuleActionInvokeApi.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "apiId", "smithy.api#required" => {}}))
    RoutingRuleActionInvokeApi.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Stage", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "stage", "smithy.api#required" => {}}))
    RoutingRuleActionInvokeApi.add_member(:strip_base_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "StripBasePath", traits: {"smithy.api#jsonName" => "stripBasePath"}))
    RoutingRuleActionInvokeApi.type = Types::RoutingRuleActionInvokeApi
    RoutingRuleCondition.add_member(:match_base_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRuleMatchBasePaths, location_name: "MatchBasePaths", traits: {"smithy.api#jsonName" => "matchBasePaths"}))
    RoutingRuleCondition.add_member(:match_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRuleMatchHeaders, location_name: "MatchHeaders", traits: {"smithy.api#jsonName" => "matchHeaders"}))
    RoutingRuleCondition.type = Types::RoutingRuleCondition
    RoutingRuleMatchBasePaths.add_member(:any_of, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofselectionkey, location_name: "AnyOf", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "anyOf", "smithy.api#required" => {}}))
    RoutingRuleMatchBasePaths.type = Types::RoutingRuleMatchBasePaths
    RoutingRuleMatchHeaderValue.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "Header", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "header", "smithy.api#required" => {}}))
    RoutingRuleMatchHeaderValue.add_member(:value_glob, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ValueGlob", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "valueGlob", "smithy.api#required" => {}}))
    RoutingRuleMatchHeaderValue.type = Types::RoutingRuleMatchHeaderValue
    RoutingRuleMatchHeaders.add_member(:any_of, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingrulematchheadervalue, location_name: "AnyOf", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "anyOf", "smithy.api#required" => {}}))
    RoutingRuleMatchHeaders.type = Types::RoutingRuleMatchHeaders
    SecurityGroupIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    SecurityPolicy.add_member(:tls_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLS_1_0", traits: {"smithy.api#enumValue" => "TLS_1_0"}))
    SecurityPolicy.add_member(:tls_1_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLS_1_2", traits: {"smithy.api#enumValue" => "TLS_1_2"}))
    Stage.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, location_name: "AccessLogSettings", traits: {"smithy.api#jsonName" => "accessLogSettings"}))
    Stage.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    Stage.add_member(:auto_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeploy", traits: {"smithy.api#jsonName" => "autoDeploy"}))
    Stage.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ClientCertificateId", traits: {"smithy.api#jsonName" => "clientCertificateId"}))
    Stage.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    Stage.add_member(:default_route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettings, location_name: "DefaultRouteSettings", traits: {"smithy.api#jsonName" => "defaultRouteSettings"}))
    Stage.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    Stage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Stage.add_member(:last_deployment_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LastDeploymentStatusMessage", traits: {"smithy.api#jsonName" => "lastDeploymentStatusMessage"}))
    Stage.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "LastUpdatedDate", traits: {"smithy.api#jsonName" => "lastUpdatedDate"}))
    Stage.add_member(:route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettingsMap, location_name: "RouteSettings", traits: {"smithy.api#jsonName" => "routeSettings"}))
    Stage.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "StageName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "stageName", "smithy.api#required" => {}}))
    Stage.add_member(:stage_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: StageVariablesMap, location_name: "StageVariables", traits: {"smithy.api#jsonName" => "stageVariables"}))
    Stage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    Stage.type = Types::Stage
    StageVariablesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    StageVariablesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And2048)
    SubnetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And1600)
    TemplateMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    TemplateMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And32K)
    TlsConfig.add_member(:server_name_to_verify, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And512, location_name: "ServerNameToVerify", traits: {"smithy.api#jsonName" => "serverNameToVerify"}))
    TlsConfig.type = Types::TlsConfig
    TlsConfigInput.add_member(:server_name_to_verify, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And512, location_name: "ServerNameToVerify", traits: {"smithy.api#jsonName" => "serverNameToVerify"}))
    TlsConfigInput.type = Types::TlsConfigInput
    TooManyRequestsException.add_member(:limit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LimitType", traits: {"smithy.api#jsonName" => "limitType"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateApiMappingRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "apiId", "smithy.api#required" => {}}))
    UpdateApiMappingRequest.add_member(:api_mapping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiMappingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiMappingRequest.add_member(:api_mapping_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "ApiMappingKey", traits: {"smithy.api#jsonName" => "apiMappingKey"}))
    UpdateApiMappingRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiMappingRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Stage", traits: {"smithy.api#jsonName" => "stage"}))
    UpdateApiMappingRequest.type = Types::UpdateApiMappingRequest
    UpdateApiMappingResponse.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    UpdateApiMappingResponse.add_member(:api_mapping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiMappingId", traits: {"smithy.api#jsonName" => "apiMappingId"}))
    UpdateApiMappingResponse.add_member(:api_mapping_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "ApiMappingKey", traits: {"smithy.api#jsonName" => "apiMappingKey"}))
    UpdateApiMappingResponse.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Stage", traits: {"smithy.api#jsonName" => "stage"}))
    UpdateApiMappingResponse.type = Types::UpdateApiMappingResponse
    UpdateApiRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApiRequest.add_member(:api_key_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiKeySelectionExpression", traits: {"smithy.api#jsonName" => "apiKeySelectionExpression"}))
    UpdateApiRequest.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, location_name: "CorsConfiguration", traits: {"smithy.api#jsonName" => "corsConfiguration"}))
    UpdateApiRequest.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CredentialsArn", traits: {"smithy.api#jsonName" => "credentialsArn"}))
    UpdateApiRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateApiRequest.add_member(:disable_schema_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableSchemaValidation", traits: {"smithy.api#jsonName" => "disableSchemaValidation"}))
    UpdateApiRequest.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableExecuteApiEndpoint", traits: {"smithy.api#jsonName" => "disableExecuteApiEndpoint"}))
    UpdateApiRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    UpdateApiRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateApiRequest.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteKey", traits: {"smithy.api#jsonName" => "routeKey"}))
    UpdateApiRequest.add_member(:route_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteSelectionExpression", traits: {"smithy.api#jsonName" => "routeSelectionExpression"}))
    UpdateApiRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "Target", traits: {"smithy.api#jsonName" => "target"}))
    UpdateApiRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    UpdateApiRequest.type = Types::UpdateApiRequest
    UpdateApiResponse.add_member(:api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiEndpoint", traits: {"smithy.api#jsonName" => "apiEndpoint"}))
    UpdateApiResponse.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    UpdateApiResponse.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ApiId", traits: {"smithy.api#jsonName" => "apiId"}))
    UpdateApiResponse.add_member(:api_key_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiKeySelectionExpression", traits: {"smithy.api#jsonName" => "apiKeySelectionExpression"}))
    UpdateApiResponse.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, location_name: "CorsConfiguration", traits: {"smithy.api#jsonName" => "corsConfiguration"}))
    UpdateApiResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    UpdateApiResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateApiResponse.add_member(:disable_schema_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableSchemaValidation", traits: {"smithy.api#jsonName" => "disableSchemaValidation"}))
    UpdateApiResponse.add_member(:disable_execute_api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DisableExecuteApiEndpoint", traits: {"smithy.api#jsonName" => "disableExecuteApiEndpoint"}))
    UpdateApiResponse.add_member(:import_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "ImportInfo", traits: {"smithy.api#jsonName" => "importInfo"}))
    UpdateApiResponse.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#jsonName" => "ipAddressType"}))
    UpdateApiResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateApiResponse.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, location_name: "ProtocolType", traits: {"smithy.api#jsonName" => "protocolType"}))
    UpdateApiResponse.add_member(:route_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteSelectionExpression", traits: {"smithy.api#jsonName" => "routeSelectionExpression"}))
    UpdateApiResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateApiResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    UpdateApiResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, location_name: "Warnings", traits: {"smithy.api#jsonName" => "warnings"}))
    UpdateApiResponse.type = Types::UpdateApiResponse
    UpdateAuthorizerRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAuthorizerRequest.add_member(:authorizer_credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "AuthorizerCredentialsArn", traits: {"smithy.api#jsonName" => "authorizerCredentialsArn"}))
    UpdateAuthorizerRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AuthorizerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAuthorizerRequest.add_member(:authorizer_payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "AuthorizerPayloadFormatVersion", traits: {"smithy.api#jsonName" => "authorizerPayloadFormatVersion"}))
    UpdateAuthorizerRequest.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween0And3600, location_name: "AuthorizerResultTtlInSeconds", traits: {"smithy.api#jsonName" => "authorizerResultTtlInSeconds"}))
    UpdateAuthorizerRequest.add_member(:authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, location_name: "AuthorizerType", traits: {"smithy.api#jsonName" => "authorizerType"}))
    UpdateAuthorizerRequest.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "AuthorizerUri", traits: {"smithy.api#jsonName" => "authorizerUri"}))
    UpdateAuthorizerRequest.add_member(:enable_simple_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnableSimpleResponses", traits: {"smithy.api#jsonName" => "enableSimpleResponses"}))
    UpdateAuthorizerRequest.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceList, location_name: "IdentitySource", traits: {"smithy.api#jsonName" => "identitySource"}))
    UpdateAuthorizerRequest.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "IdentityValidationExpression", traits: {"smithy.api#jsonName" => "identityValidationExpression"}))
    UpdateAuthorizerRequest.add_member(:jwt_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JWTConfiguration, location_name: "JwtConfiguration", traits: {"smithy.api#jsonName" => "jwtConfiguration"}))
    UpdateAuthorizerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateAuthorizerRequest.type = Types::UpdateAuthorizerRequest
    UpdateAuthorizerResponse.add_member(:authorizer_credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "AuthorizerCredentialsArn", traits: {"smithy.api#jsonName" => "authorizerCredentialsArn"}))
    UpdateAuthorizerResponse.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    UpdateAuthorizerResponse.add_member(:authorizer_payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "AuthorizerPayloadFormatVersion", traits: {"smithy.api#jsonName" => "authorizerPayloadFormatVersion"}))
    UpdateAuthorizerResponse.add_member(:authorizer_result_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween0And3600, location_name: "AuthorizerResultTtlInSeconds", traits: {"smithy.api#jsonName" => "authorizerResultTtlInSeconds"}))
    UpdateAuthorizerResponse.add_member(:authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerType, location_name: "AuthorizerType", traits: {"smithy.api#jsonName" => "authorizerType"}))
    UpdateAuthorizerResponse.add_member(:authorizer_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "AuthorizerUri", traits: {"smithy.api#jsonName" => "authorizerUri"}))
    UpdateAuthorizerResponse.add_member(:enable_simple_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnableSimpleResponses", traits: {"smithy.api#jsonName" => "enableSimpleResponses"}))
    UpdateAuthorizerResponse.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceList, location_name: "IdentitySource", traits: {"smithy.api#jsonName" => "identitySource"}))
    UpdateAuthorizerResponse.add_member(:identity_validation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "IdentityValidationExpression", traits: {"smithy.api#jsonName" => "identityValidationExpression"}))
    UpdateAuthorizerResponse.add_member(:jwt_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JWTConfiguration, location_name: "JwtConfiguration", traits: {"smithy.api#jsonName" => "jwtConfiguration"}))
    UpdateAuthorizerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateAuthorizerResponse.type = Types::UpdateAuthorizerResponse
    UpdateDeploymentRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DeploymentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateDeploymentRequest.type = Types::UpdateDeploymentRequest
    UpdateDeploymentResponse.add_member(:auto_deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeployed", traits: {"smithy.api#jsonName" => "autoDeployed"}))
    UpdateDeploymentResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    UpdateDeploymentResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    UpdateDeploymentResponse.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, location_name: "DeploymentStatus", traits: {"smithy.api#jsonName" => "deploymentStatus"}))
    UpdateDeploymentResponse.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DeploymentStatusMessage", traits: {"smithy.api#jsonName" => "deploymentStatusMessage"}))
    UpdateDeploymentResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateDeploymentResponse.type = Types::UpdateDeploymentResponse
    UpdateDomainNameRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainNameRequest.add_member(:domain_name_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfigurations, location_name: "DomainNameConfigurations", traits: {"smithy.api#jsonName" => "domainNameConfigurations"}))
    UpdateDomainNameRequest.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthenticationInput, location_name: "MutualTlsAuthentication", traits: {"smithy.api#jsonName" => "mutualTlsAuthentication"}))
    UpdateDomainNameRequest.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, location_name: "RoutingMode", traits: {"smithy.api#jsonName" => "routingMode"}))
    UpdateDomainNameRequest.type = Types::UpdateDomainNameRequest
    UpdateDomainNameResponse.add_member(:api_mapping_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ApiMappingSelectionExpression", traits: {"smithy.api#jsonName" => "apiMappingSelectionExpression"}))
    UpdateDomainNameResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And512, location_name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    UpdateDomainNameResponse.add_member(:domain_name_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "DomainNameArn", traits: {"smithy.api#jsonName" => "domainNameArn"}))
    UpdateDomainNameResponse.add_member(:domain_name_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameConfigurations, location_name: "DomainNameConfigurations", traits: {"smithy.api#jsonName" => "domainNameConfigurations"}))
    UpdateDomainNameResponse.add_member(:mutual_tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualTlsAuthentication, location_name: "MutualTlsAuthentication", traits: {"smithy.api#jsonName" => "mutualTlsAuthentication"}))
    UpdateDomainNameResponse.add_member(:routing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingMode, location_name: "RoutingMode", traits: {"smithy.api#jsonName" => "routingMode"}))
    UpdateDomainNameResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateDomainNameResponse.type = Types::UpdateDomainNameResponse
    UpdateIntegrationRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationRequest.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And1024, location_name: "ConnectionId", traits: {"smithy.api#jsonName" => "connectionId"}))
    UpdateIntegrationRequest.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, location_name: "ConnectionType", traits: {"smithy.api#jsonName" => "connectionType"}))
    UpdateIntegrationRequest.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    UpdateIntegrationRequest.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CredentialsArn", traits: {"smithy.api#jsonName" => "credentialsArn"}))
    UpdateIntegrationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateIntegrationRequest.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationRequest.add_member(:integration_method, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "IntegrationMethod", traits: {"smithy.api#jsonName" => "integrationMethod"}))
    UpdateIntegrationRequest.add_member(:integration_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "IntegrationSubtype", traits: {"smithy.api#jsonName" => "integrationSubtype"}))
    UpdateIntegrationRequest.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "IntegrationType", traits: {"smithy.api#jsonName" => "integrationType"}))
    UpdateIntegrationRequest.add_member(:integration_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "IntegrationUri", traits: {"smithy.api#jsonName" => "integrationUri"}))
    UpdateIntegrationRequest.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PassthroughBehavior, location_name: "PassthroughBehavior", traits: {"smithy.api#jsonName" => "passthroughBehavior"}))
    UpdateIntegrationRequest.add_member(:payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "PayloadFormatVersion", traits: {"smithy.api#jsonName" => "payloadFormatVersion"}))
    UpdateIntegrationRequest.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    UpdateIntegrationRequest.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "RequestTemplates", traits: {"smithy.api#jsonName" => "requestTemplates"}))
    UpdateIntegrationRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    UpdateIntegrationRequest.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    UpdateIntegrationRequest.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween50And30000, location_name: "TimeoutInMillis", traits: {"smithy.api#jsonName" => "timeoutInMillis"}))
    UpdateIntegrationRequest.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfigInput, location_name: "TlsConfig", traits: {"smithy.api#jsonName" => "tlsConfig"}))
    UpdateIntegrationRequest.type = Types::UpdateIntegrationRequest
    UpdateIntegrationResponseRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    UpdateIntegrationResponseRequest.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:integration_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "IntegrationResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationResponseRequest.add_member(:integration_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "IntegrationResponseKey", traits: {"smithy.api#jsonName" => "integrationResponseKey"}))
    UpdateIntegrationResponseRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    UpdateIntegrationResponseRequest.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "ResponseTemplates", traits: {"smithy.api#jsonName" => "responseTemplates"}))
    UpdateIntegrationResponseRequest.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    UpdateIntegrationResponseRequest.type = Types::UpdateIntegrationResponseRequest
    UpdateIntegrationResponseResponse.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    UpdateIntegrationResponseResponse.add_member(:integration_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "IntegrationResponseId", traits: {"smithy.api#jsonName" => "integrationResponseId"}))
    UpdateIntegrationResponseResponse.add_member(:integration_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "IntegrationResponseKey", traits: {"smithy.api#jsonName" => "integrationResponseKey"}))
    UpdateIntegrationResponseResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    UpdateIntegrationResponseResponse.add_member(:response_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "ResponseTemplates", traits: {"smithy.api#jsonName" => "responseTemplates"}))
    UpdateIntegrationResponseResponse.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    UpdateIntegrationResponseResponse.type = Types::UpdateIntegrationResponseResponse
    UpdateIntegrationResult.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    UpdateIntegrationResult.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And1024, location_name: "ConnectionId", traits: {"smithy.api#jsonName" => "connectionId"}))
    UpdateIntegrationResult.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, location_name: "ConnectionType", traits: {"smithy.api#jsonName" => "connectionType"}))
    UpdateIntegrationResult.add_member(:content_handling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentHandlingStrategy, location_name: "ContentHandlingStrategy", traits: {"smithy.api#jsonName" => "contentHandlingStrategy"}))
    UpdateIntegrationResult.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CredentialsArn", traits: {"smithy.api#jsonName" => "credentialsArn"}))
    UpdateIntegrationResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateIntegrationResult.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "IntegrationId", traits: {"smithy.api#jsonName" => "integrationId"}))
    UpdateIntegrationResult.add_member(:integration_method, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "IntegrationMethod", traits: {"smithy.api#jsonName" => "integrationMethod"}))
    UpdateIntegrationResult.add_member(:integration_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "IntegrationResponseSelectionExpression", traits: {"smithy.api#jsonName" => "integrationResponseSelectionExpression"}))
    UpdateIntegrationResult.add_member(:integration_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "IntegrationSubtype", traits: {"smithy.api#jsonName" => "integrationSubtype"}))
    UpdateIntegrationResult.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "IntegrationType", traits: {"smithy.api#jsonName" => "integrationType"}))
    UpdateIntegrationResult.add_member(:integration_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriWithLengthBetween1And2048, location_name: "IntegrationUri", traits: {"smithy.api#jsonName" => "integrationUri"}))
    UpdateIntegrationResult.add_member(:passthrough_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PassthroughBehavior, location_name: "PassthroughBehavior", traits: {"smithy.api#jsonName" => "passthroughBehavior"}))
    UpdateIntegrationResult.add_member(:payload_format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "PayloadFormatVersion", traits: {"smithy.api#jsonName" => "payloadFormatVersion"}))
    UpdateIntegrationResult.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    UpdateIntegrationResult.add_member(:request_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateMap, location_name: "RequestTemplates", traits: {"smithy.api#jsonName" => "requestTemplates"}))
    UpdateIntegrationResult.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    UpdateIntegrationResult.add_member(:template_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "TemplateSelectionExpression", traits: {"smithy.api#jsonName" => "templateSelectionExpression"}))
    UpdateIntegrationResult.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerWithLengthBetween50And30000, location_name: "TimeoutInMillis", traits: {"smithy.api#jsonName" => "timeoutInMillis"}))
    UpdateIntegrationResult.add_member(:tls_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsConfig, location_name: "TlsConfig", traits: {"smithy.api#jsonName" => "tlsConfig"}))
    UpdateIntegrationResult.type = Types::UpdateIntegrationResult
    UpdateModelRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And256, location_name: "ContentType", traits: {"smithy.api#jsonName" => "contentType"}))
    UpdateModelRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateModelRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateModelRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateModelRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And32K, location_name: "Schema", traits: {"smithy.api#jsonName" => "schema"}))
    UpdateModelRequest.type = Types::UpdateModelRequest
    UpdateModelResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And256, location_name: "ContentType", traits: {"smithy.api#jsonName" => "contentType"}))
    UpdateModelResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateModelResponse.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ModelId", traits: {"smithy.api#jsonName" => "modelId"}))
    UpdateModelResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateModelResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And32K, location_name: "Schema", traits: {"smithy.api#jsonName" => "schema"}))
    UpdateModelResponse.type = Types::UpdateModelResponse
    UpdateRouteRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteRequest.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiKeyRequired", traits: {"smithy.api#jsonName" => "apiKeyRequired"}))
    UpdateRouteRequest.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationScopes, location_name: "AuthorizationScopes", traits: {"smithy.api#jsonName" => "authorizationScopes"}))
    UpdateRouteRequest.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationType, location_name: "AuthorizationType", traits: {"smithy.api#jsonName" => "authorizationType"}))
    UpdateRouteRequest.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    UpdateRouteRequest.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    UpdateRouteRequest.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "OperationName", traits: {"smithy.api#jsonName" => "operationName"}))
    UpdateRouteRequest.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "RequestModels", traits: {"smithy.api#jsonName" => "requestModels"}))
    UpdateRouteRequest.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    UpdateRouteRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteRequest.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteKey", traits: {"smithy.api#jsonName" => "routeKey"}))
    UpdateRouteRequest.add_member(:route_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteResponseSelectionExpression", traits: {"smithy.api#jsonName" => "routeResponseSelectionExpression"}))
    UpdateRouteRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Target", traits: {"smithy.api#jsonName" => "target"}))
    UpdateRouteRequest.type = Types::UpdateRouteRequest
    UpdateRouteResponseRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteResponseRequest.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    UpdateRouteResponseRequest.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "ResponseModels", traits: {"smithy.api#jsonName" => "responseModels"}))
    UpdateRouteResponseRequest.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    UpdateRouteResponseRequest.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteResponseRequest.add_member(:route_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RouteResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteResponseRequest.add_member(:route_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteResponseKey", traits: {"smithy.api#jsonName" => "routeResponseKey"}))
    UpdateRouteResponseRequest.type = Types::UpdateRouteResponseRequest
    UpdateRouteResponseResponse.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    UpdateRouteResponseResponse.add_member(:response_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "ResponseModels", traits: {"smithy.api#jsonName" => "responseModels"}))
    UpdateRouteResponseResponse.add_member(:response_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "ResponseParameters", traits: {"smithy.api#jsonName" => "responseParameters"}))
    UpdateRouteResponseResponse.add_member(:route_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RouteResponseId", traits: {"smithy.api#jsonName" => "routeResponseId"}))
    UpdateRouteResponseResponse.add_member(:route_response_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteResponseKey", traits: {"smithy.api#jsonName" => "routeResponseKey"}))
    UpdateRouteResponseResponse.type = Types::UpdateRouteResponseResponse
    UpdateRouteResult.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    UpdateRouteResult.add_member(:api_key_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiKeyRequired", traits: {"smithy.api#jsonName" => "apiKeyRequired"}))
    UpdateRouteResult.add_member(:authorization_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationScopes, location_name: "AuthorizationScopes", traits: {"smithy.api#jsonName" => "authorizationScopes"}))
    UpdateRouteResult.add_member(:authorization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationType, location_name: "AuthorizationType", traits: {"smithy.api#jsonName" => "authorizationType"}))
    UpdateRouteResult.add_member(:authorizer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "AuthorizerId", traits: {"smithy.api#jsonName" => "authorizerId"}))
    UpdateRouteResult.add_member(:model_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "ModelSelectionExpression", traits: {"smithy.api#jsonName" => "modelSelectionExpression"}))
    UpdateRouteResult.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, location_name: "OperationName", traits: {"smithy.api#jsonName" => "operationName"}))
    UpdateRouteResult.add_member(:request_models, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteModels, location_name: "RequestModels", traits: {"smithy.api#jsonName" => "requestModels"}))
    UpdateRouteResult.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteParameters, location_name: "RequestParameters", traits: {"smithy.api#jsonName" => "requestParameters"}))
    UpdateRouteResult.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "RouteId", traits: {"smithy.api#jsonName" => "routeId"}))
    UpdateRouteResult.add_member(:route_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey, location_name: "RouteKey", traits: {"smithy.api#jsonName" => "routeKey"}))
    UpdateRouteResult.add_member(:route_response_selection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionExpression, location_name: "RouteResponseSelectionExpression", traits: {"smithy.api#jsonName" => "routeResponseSelectionExpression"}))
    UpdateRouteResult.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Target", traits: {"smithy.api#jsonName" => "target"}))
    UpdateRouteResult.type = Types::UpdateRouteResult
    UpdateStageRequest.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, location_name: "AccessLogSettings", traits: {"smithy.api#jsonName" => "accessLogSettings"}))
    UpdateStageRequest.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ApiId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStageRequest.add_member(:auto_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeploy", traits: {"smithy.api#jsonName" => "autoDeploy"}))
    UpdateStageRequest.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ClientCertificateId", traits: {"smithy.api#jsonName" => "clientCertificateId"}))
    UpdateStageRequest.add_member(:default_route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettings, location_name: "DefaultRouteSettings", traits: {"smithy.api#jsonName" => "defaultRouteSettings"}))
    UpdateStageRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    UpdateStageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateStageRequest.add_member(:route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettingsMap, location_name: "RouteSettings", traits: {"smithy.api#jsonName" => "routeSettings"}))
    UpdateStageRequest.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StageName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStageRequest.add_member(:stage_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: StageVariablesMap, location_name: "StageVariables", traits: {"smithy.api#jsonName" => "stageVariables"}))
    UpdateStageRequest.type = Types::UpdateStageRequest
    UpdateStageResponse.add_member(:access_log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSettings, location_name: "AccessLogSettings", traits: {"smithy.api#jsonName" => "accessLogSettings"}))
    UpdateStageResponse.add_member(:api_gateway_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApiGatewayManaged", traits: {"smithy.api#jsonName" => "apiGatewayManaged"}))
    UpdateStageResponse.add_member(:auto_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoDeploy", traits: {"smithy.api#jsonName" => "autoDeploy"}))
    UpdateStageResponse.add_member(:client_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "ClientCertificateId", traits: {"smithy.api#jsonName" => "clientCertificateId"}))
    UpdateStageResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    UpdateStageResponse.add_member(:default_route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettings, location_name: "DefaultRouteSettings", traits: {"smithy.api#jsonName" => "defaultRouteSettings"}))
    UpdateStageResponse.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "DeploymentId", traits: {"smithy.api#jsonName" => "deploymentId"}))
    UpdateStageResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateStageResponse.add_member(:last_deployment_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LastDeploymentStatusMessage", traits: {"smithy.api#jsonName" => "lastDeploymentStatusMessage"}))
    UpdateStageResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "LastUpdatedDate", traits: {"smithy.api#jsonName" => "lastUpdatedDate"}))
    UpdateStageResponse.add_member(:route_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSettingsMap, location_name: "RouteSettings", traits: {"smithy.api#jsonName" => "routeSettings"}))
    UpdateStageResponse.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "StageName", traits: {"smithy.api#jsonName" => "stageName"}))
    UpdateStageResponse.add_member(:stage_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: StageVariablesMap, location_name: "StageVariables", traits: {"smithy.api#jsonName" => "stageVariables"}))
    UpdateStageResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateStageResponse.type = Types::UpdateStageResponse
    UpdateVpcLinkRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateVpcLinkRequest.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcLinkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVpcLinkRequest.type = Types::UpdateVpcLinkRequest
    UpdateVpcLinkResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    UpdateVpcLinkResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateVpcLinkResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, location_name: "SecurityGroupIds", traits: {"smithy.api#jsonName" => "securityGroupIds"}))
    UpdateVpcLinkResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, location_name: "SubnetIds", traits: {"smithy.api#jsonName" => "subnetIds"}))
    UpdateVpcLinkResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateVpcLinkResponse.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "VpcLinkId", traits: {"smithy.api#jsonName" => "vpcLinkId"}))
    UpdateVpcLinkResponse.add_member(:vpc_link_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkStatus, location_name: "VpcLinkStatus", traits: {"smithy.api#jsonName" => "vpcLinkStatus"}))
    UpdateVpcLinkResponse.add_member(:vpc_link_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "VpcLinkStatusMessage", traits: {"smithy.api#jsonName" => "vpcLinkStatusMessage"}))
    UpdateVpcLinkResponse.add_member(:vpc_link_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkVersion, location_name: "VpcLinkVersion", traits: {"smithy.api#jsonName" => "vpcLinkVersion"}))
    UpdateVpcLinkResponse.type = Types::UpdateVpcLinkResponse
    VpcLink.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, location_name: "CreatedDate", traits: {"smithy.api#jsonName" => "createdDate"}))
    VpcLink.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And128, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    VpcLink.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, location_name: "SecurityGroupIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "securityGroupIds", "smithy.api#required" => {}}))
    VpcLink.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, location_name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subnetIds", "smithy.api#required" => {}}))
    VpcLink.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    VpcLink.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, location_name: "VpcLinkId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcLinkId", "smithy.api#required" => {}}))
    VpcLink.add_member(:vpc_link_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkStatus, location_name: "VpcLinkStatus", traits: {"smithy.api#jsonName" => "vpcLinkStatus"}))
    VpcLink.add_member(:vpc_link_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And1024, location_name: "VpcLinkStatusMessage", traits: {"smithy.api#jsonName" => "vpcLinkStatusMessage"}))
    VpcLink.add_member(:vpc_link_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkVersion, location_name: "VpcLinkVersion", traits: {"smithy.api#jsonName" => "vpcLinkVersion"}))
    VpcLink.type = Types::VpcLink
    VpcLinkStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    VpcLinkStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VpcLinkStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    VpcLinkStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    VpcLinkStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    VpcLinkVersion.add_member(:v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "V2", traits: {"smithy.api#enumValue" => "V2"}))
    Listofapi.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Api)
    Listofapimapping.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApiMapping)
    Listofauthorizer.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Authorizer)
    Listofdeployment.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Deployment)
    Listofdomainname.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName)
    Listofintegration.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Integration)
    Listofintegrationresponse.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationResponse)
    Listofmodel.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Model)
    Listofroute.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Route)
    Listofrouteresponse.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RouteResponse)
    Listofroutingrule.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRule)
    Listofroutingruleaction.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRuleAction)
    Listofroutingrulecondition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRuleCondition)
    Listofroutingrulematchheadervalue.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRuleMatchHeaderValue)
    Listofselectionkey.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionKey)
    Listofstage.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Stage)
    Listofvpclink.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLink)
    ListofString.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)

    ApiGatewayV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.apigatewayv2#ApiGatewayV2"
      service.name = "ApiGatewayV2"
      service.version = "2018-11-29"
      service.traits = {"aws.api#service" => {"sdkId" => "ApiGatewayV2", "arnNamespace" => "apigateway", "cloudFormationName" => "ApiGatewayV2", "cloudTrailEventSource" => "apigatewayv2.amazonaws.com", "endpointPrefix" => "apigateway"}, "aws.auth#sigv4" => {"name" => "apigateway"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AmazonApiGatewayV2"}
      service.add_operation(:create_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateApi"
        operation.name = "CreateApi"
        operation.input = CreateApiRequest
        operation.output = CreateApiResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis", "code" => 201}}
      end)
      service.add_operation(:create_api_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateApiMapping"
        operation.name = "CreateApiMapping"
        operation.input = CreateApiMappingRequest
        operation.output = CreateApiMappingResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/domainnames/{DomainName}/apimappings", "code" => 201}}
      end)
      service.add_operation(:create_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateAuthorizer"
        operation.name = "CreateAuthorizer"
        operation.input = CreateAuthorizerRequest
        operation.output = CreateAuthorizerResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{ApiId}/authorizers", "code" => 201}}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = CreateDeploymentRequest
        operation.output = CreateDeploymentResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{ApiId}/deployments", "code" => 201}}
      end)
      service.add_operation(:create_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateDomainName"
        operation.name = "CreateDomainName"
        operation.input = CreateDomainNameRequest
        operation.output = CreateDomainNameResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/domainnames", "code" => 201}}
      end)
      service.add_operation(:create_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateIntegration"
        operation.name = "CreateIntegration"
        operation.input = CreateIntegrationRequest
        operation.output = CreateIntegrationResult
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{ApiId}/integrations", "code" => 201}}
      end)
      service.add_operation(:create_integration_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateIntegrationResponse"
        operation.name = "CreateIntegrationResponse"
        operation.input = CreateIntegrationResponseRequest
        operation.output = CreateIntegrationResponseResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses", "code" => 201}}
      end)
      service.add_operation(:create_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateModel"
        operation.name = "CreateModel"
        operation.input = CreateModelRequest
        operation.output = CreateModelResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{ApiId}/models", "code" => 201}}
      end)
      service.add_operation(:create_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateRoute"
        operation.name = "CreateRoute"
        operation.input = CreateRouteRequest
        operation.output = CreateRouteResult
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{ApiId}/routes", "code" => 201}}
      end)
      service.add_operation(:create_route_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateRouteResponse"
        operation.name = "CreateRouteResponse"
        operation.input = CreateRouteResponseRequest
        operation.output = CreateRouteResponseResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses", "code" => 201}}
      end)
      service.add_operation(:create_routing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateRoutingRule"
        operation.name = "CreateRoutingRule"
        operation.input = CreateRoutingRuleRequest
        operation.output = CreateRoutingRuleResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/domainnames/{DomainName}/routingrules", "code" => 201}}
      end)
      service.add_operation(:create_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateStage"
        operation.name = "CreateStage"
        operation.input = CreateStageRequest
        operation.output = CreateStageResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/apis/{ApiId}/stages", "code" => 201}}
      end)
      service.add_operation(:create_vpc_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#CreateVpcLink"
        operation.name = "CreateVpcLink"
        operation.input = CreateVpcLinkRequest
        operation.output = CreateVpcLinkResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/vpclinks", "code" => 201}}
      end)
      service.add_operation(:delete_access_log_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteAccessLogSettings"
        operation.name = "DeleteAccessLogSettings"
        operation.input = DeleteAccessLogSettingsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/stages/{StageName}/accesslogsettings", "code" => 204}}
      end)
      service.add_operation(:delete_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteApi"
        operation.name = "DeleteApi"
        operation.input = DeleteApiRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}", "code" => 204}}
      end)
      service.add_operation(:delete_api_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteApiMapping"
        operation.name = "DeleteApiMapping"
        operation.input = DeleteApiMappingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}", "code" => 204}}
      end)
      service.add_operation(:delete_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteAuthorizer"
        operation.name = "DeleteAuthorizer"
        operation.input = DeleteAuthorizerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/authorizers/{AuthorizerId}", "code" => 204}}
      end)
      service.add_operation(:delete_cors_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteCorsConfiguration"
        operation.name = "DeleteCorsConfiguration"
        operation.input = DeleteCorsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/cors", "code" => 204}}
      end)
      service.add_operation(:delete_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = DeleteDeploymentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/deployments/{DeploymentId}", "code" => 204}}
      end)
      service.add_operation(:delete_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteDomainName"
        operation.name = "DeleteDomainName"
        operation.input = DeleteDomainNameRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/domainnames/{DomainName}", "code" => 204}}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = DeleteIntegrationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/integrations/{IntegrationId}", "code" => 204}}
      end)
      service.add_operation(:delete_integration_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteIntegrationResponse"
        operation.name = "DeleteIntegrationResponse"
        operation.input = DeleteIntegrationResponseRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}", "code" => 204}}
      end)
      service.add_operation(:delete_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteModel"
        operation.name = "DeleteModel"
        operation.input = DeleteModelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/models/{ModelId}", "code" => 204}}
      end)
      service.add_operation(:delete_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteRoute"
        operation.name = "DeleteRoute"
        operation.input = DeleteRouteRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}", "code" => 204}}
      end)
      service.add_operation(:delete_route_request_parameter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteRouteRequestParameter"
        operation.name = "DeleteRouteRequestParameter"
        operation.input = DeleteRouteRequestParameterRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}/requestparameters/{RequestParameterKey}", "code" => 204}}
      end)
      service.add_operation(:delete_route_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteRouteResponse"
        operation.name = "DeleteRouteResponse"
        operation.input = DeleteRouteResponseRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}", "code" => 204}}
      end)
      service.add_operation(:delete_route_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteRouteSettings"
        operation.name = "DeleteRouteSettings"
        operation.input = DeleteRouteSettingsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/stages/{StageName}/routesettings/{RouteKey}", "code" => 204}}
      end)
      service.add_operation(:delete_routing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteRoutingRule"
        operation.name = "DeleteRoutingRule"
        operation.input = DeleteRoutingRuleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteStage"
        operation.name = "DeleteStage"
        operation.input = DeleteStageRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/stages/{StageName}", "code" => 204}}
      end)
      service.add_operation(:delete_vpc_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#DeleteVpcLink"
        operation.name = "DeleteVpcLink"
        operation.input = DeleteVpcLinkRequest
        operation.output = DeleteVpcLinkResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/vpclinks/{VpcLinkId}", "code" => 202}}
      end)
      service.add_operation(:export_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#ExportApi"
        operation.name = "ExportApi"
        operation.input = ExportApiRequest
        operation.output = ExportApiResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/exports/{Specification}", "code" => 200}}
      end)
      service.add_operation(:get_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetApi"
        operation.name = "GetApi"
        operation.input = GetApiRequest
        operation.output = GetApiResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}", "code" => 200}}
      end)
      service.add_operation(:get_api_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetApiMapping"
        operation.name = "GetApiMapping"
        operation.input = GetApiMappingRequest
        operation.output = GetApiMappingResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}", "code" => 200}}
      end)
      service.add_operation(:get_api_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetApiMappings"
        operation.name = "GetApiMappings"
        operation.input = GetApiMappingsRequest
        operation.output = GetApiMappingsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/domainnames/{DomainName}/apimappings", "code" => 200}}
      end)
      service.add_operation(:get_apis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetApis"
        operation.name = "GetApis"
        operation.input = GetApisRequest
        operation.output = GetApisResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis", "code" => 200}}
      end)
      service.add_operation(:get_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetAuthorizer"
        operation.name = "GetAuthorizer"
        operation.input = GetAuthorizerRequest
        operation.output = GetAuthorizerResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/authorizers/{AuthorizerId}", "code" => 200}}
      end)
      service.add_operation(:get_authorizers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetAuthorizers"
        operation.name = "GetAuthorizers"
        operation.input = GetAuthorizersRequest
        operation.output = GetAuthorizersResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/authorizers", "code" => 200}}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = GetDeploymentRequest
        operation.output = GetDeploymentResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/deployments/{DeploymentId}", "code" => 200}}
      end)
      service.add_operation(:get_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetDeployments"
        operation.name = "GetDeployments"
        operation.input = GetDeploymentsRequest
        operation.output = GetDeploymentsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/deployments", "code" => 200}}
      end)
      service.add_operation(:get_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetDomainName"
        operation.name = "GetDomainName"
        operation.input = GetDomainNameRequest
        operation.output = GetDomainNameResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/domainnames/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetDomainNames"
        operation.name = "GetDomainNames"
        operation.input = GetDomainNamesRequest
        operation.output = GetDomainNamesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/domainnames", "code" => 200}}
      end)
      service.add_operation(:get_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetIntegration"
        operation.name = "GetIntegration"
        operation.input = GetIntegrationRequest
        operation.output = GetIntegrationResult
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/integrations/{IntegrationId}", "code" => 200}}
      end)
      service.add_operation(:get_integration_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetIntegrationResponse"
        operation.name = "GetIntegrationResponse"
        operation.input = GetIntegrationResponseRequest
        operation.output = GetIntegrationResponseResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}", "code" => 200}}
      end)
      service.add_operation(:get_integration_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetIntegrationResponses"
        operation.name = "GetIntegrationResponses"
        operation.input = GetIntegrationResponsesRequest
        operation.output = GetIntegrationResponsesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses", "code" => 200}}
      end)
      service.add_operation(:get_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetIntegrations"
        operation.name = "GetIntegrations"
        operation.input = GetIntegrationsRequest
        operation.output = GetIntegrationsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/integrations", "code" => 200}}
      end)
      service.add_operation(:get_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetModel"
        operation.name = "GetModel"
        operation.input = GetModelRequest
        operation.output = GetModelResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/models/{ModelId}", "code" => 200}}
      end)
      service.add_operation(:get_model_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetModelTemplate"
        operation.name = "GetModelTemplate"
        operation.input = GetModelTemplateRequest
        operation.output = GetModelTemplateResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/models/{ModelId}/template", "code" => 200}}
      end)
      service.add_operation(:get_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetModels"
        operation.name = "GetModels"
        operation.input = GetModelsRequest
        operation.output = GetModelsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/models", "code" => 200}}
      end)
      service.add_operation(:get_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetRoute"
        operation.name = "GetRoute"
        operation.input = GetRouteRequest
        operation.output = GetRouteResult
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}", "code" => 200}}
      end)
      service.add_operation(:get_route_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetRouteResponse"
        operation.name = "GetRouteResponse"
        operation.input = GetRouteResponseRequest
        operation.output = GetRouteResponseResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}", "code" => 200}}
      end)
      service.add_operation(:get_route_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetRouteResponses"
        operation.name = "GetRouteResponses"
        operation.input = GetRouteResponsesRequest
        operation.output = GetRouteResponsesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses", "code" => 200}}
      end)
      service.add_operation(:get_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetRoutes"
        operation.name = "GetRoutes"
        operation.input = GetRoutesRequest
        operation.output = GetRoutesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/routes", "code" => 200}}
      end)
      service.add_operation(:get_routing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetRoutingRule"
        operation.name = "GetRoutingRule"
        operation.input = GetRoutingRuleRequest
        operation.output = GetRoutingRuleResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}", "code" => 200}}
      end)
      service.add_operation(:get_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetStage"
        operation.name = "GetStage"
        operation.input = GetStageRequest
        operation.output = GetStageResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/stages/{StageName}", "code" => 200}}
      end)
      service.add_operation(:get_stages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetStages"
        operation.name = "GetStages"
        operation.input = GetStagesRequest
        operation.output = GetStagesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/apis/{ApiId}/stages", "code" => 200}}
      end)
      service.add_operation(:get_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetTags"
        operation.name = "GetTags"
        operation.input = GetTagsRequest
        operation.output = GetTagsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:get_vpc_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetVpcLink"
        operation.name = "GetVpcLink"
        operation.input = GetVpcLinkRequest
        operation.output = GetVpcLinkResponse
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/vpclinks/{VpcLinkId}", "code" => 200}}
      end)
      service.add_operation(:get_vpc_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#GetVpcLinks"
        operation.name = "GetVpcLinks"
        operation.input = GetVpcLinksRequest
        operation.output = GetVpcLinksResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/vpclinks", "code" => 200}}
      end)
      service.add_operation(:import_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#ImportApi"
        operation.name = "ImportApi"
        operation.input = ImportApiRequest
        operation.output = ImportApiResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/apis", "code" => 201}}
      end)
      service.add_operation(:list_routing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#ListRoutingRules"
        operation.name = "ListRoutingRules"
        operation.input = ListRoutingRulesRequest
        operation.output = ListRoutingRulesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/domainnames/{DomainName}/routingrules", "code" => 200}}
        operation[:paginator] = Paginators::ListRoutingRules.new
      end)
      service.add_operation(:put_routing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#PutRoutingRule"
        operation.name = "PutRoutingRule"
        operation.input = PutRoutingRuleRequest
        operation.output = PutRoutingRuleResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:reimport_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#ReimportApi"
        operation.name = "ReimportApi"
        operation.input = ReimportApiRequest
        operation.output = ReimportApiResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/apis/{ApiId}", "code" => 201}}
      end)
      service.add_operation(:reset_authorizers_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#ResetAuthorizersCache"
        operation.name = "ResetAuthorizersCache"
        operation.input = ResetAuthorizersCacheRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/apis/{ApiId}/stages/{StageName}/cache/authorizers", "code" => 204}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/tags/{ResourceArn}", "code" => 201}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateApi"
        operation.name = "UpdateApi"
        operation.input = UpdateApiRequest
        operation.output = UpdateApiResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}", "code" => 200}}
      end)
      service.add_operation(:update_api_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateApiMapping"
        operation.name = "UpdateApiMapping"
        operation.input = UpdateApiMappingRequest
        operation.output = UpdateApiMappingResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}", "code" => 200}}
      end)
      service.add_operation(:update_authorizer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateAuthorizer"
        operation.name = "UpdateAuthorizer"
        operation.input = UpdateAuthorizerRequest
        operation.output = UpdateAuthorizerResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}/authorizers/{AuthorizerId}", "code" => 200}}
      end)
      service.add_operation(:update_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateDeployment"
        operation.name = "UpdateDeployment"
        operation.input = UpdateDeploymentRequest
        operation.output = UpdateDeploymentResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}/deployments/{DeploymentId}", "code" => 200}}
      end)
      service.add_operation(:update_domain_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateDomainName"
        operation.name = "UpdateDomainName"
        operation.input = UpdateDomainNameRequest
        operation.output = UpdateDomainNameResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/domainnames/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:update_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateIntegration"
        operation.name = "UpdateIntegration"
        operation.input = UpdateIntegrationRequest
        operation.output = UpdateIntegrationResult
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}/integrations/{IntegrationId}", "code" => 200}}
      end)
      service.add_operation(:update_integration_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateIntegrationResponse"
        operation.name = "UpdateIntegrationResponse"
        operation.input = UpdateIntegrationResponseRequest
        operation.output = UpdateIntegrationResponseResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}", "code" => 200}}
      end)
      service.add_operation(:update_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateModel"
        operation.name = "UpdateModel"
        operation.input = UpdateModelRequest
        operation.output = UpdateModelResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}/models/{ModelId}", "code" => 200}}
      end)
      service.add_operation(:update_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateRoute"
        operation.name = "UpdateRoute"
        operation.input = UpdateRouteRequest
        operation.output = UpdateRouteResult
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}", "code" => 200}}
      end)
      service.add_operation(:update_route_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateRouteResponse"
        operation.name = "UpdateRouteResponse"
        operation.input = UpdateRouteResponseRequest
        operation.output = UpdateRouteResponseResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}", "code" => 200}}
      end)
      service.add_operation(:update_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateStage"
        operation.name = "UpdateStage"
        operation.input = UpdateStageRequest
        operation.output = UpdateStageResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/apis/{ApiId}/stages/{StageName}", "code" => 200}}
      end)
      service.add_operation(:update_vpc_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apigatewayv2#UpdateVpcLink"
        operation.name = "UpdateVpcLink"
        operation.input = UpdateVpcLinkRequest
        operation.output = UpdateVpcLinkResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v2/vpclinks/{VpcLinkId}", "code" => 200}}
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
