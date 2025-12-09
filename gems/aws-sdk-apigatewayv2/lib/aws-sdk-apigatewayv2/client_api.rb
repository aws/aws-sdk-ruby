# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ApiGatewayV2
  # @api private
  module ClientApi

    include Seahorse::Model

    ACMManaged = Shapes::StructureShape.new(name: 'ACMManaged')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionResponseContent = Shapes::StructureShape.new(name: 'AccessDeniedExceptionResponseContent')
    AccessLogSettings = Shapes::StructureShape.new(name: 'AccessLogSettings')
    Api = Shapes::StructureShape.new(name: 'Api')
    ApiMapping = Shapes::StructureShape.new(name: 'ApiMapping')
    ApiMappings = Shapes::StructureShape.new(name: 'ApiMappings')
    Apis = Shapes::StructureShape.new(name: 'Apis')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Authorization = Shapes::StructureShape.new(name: 'Authorization')
    AuthorizationScopes = Shapes::ListShape.new(name: 'AuthorizationScopes')
    AuthorizationType = Shapes::StringShape.new(name: 'AuthorizationType')
    Authorizer = Shapes::StructureShape.new(name: 'Authorizer')
    AuthorizerType = Shapes::StringShape.new(name: 'AuthorizerType')
    Authorizers = Shapes::StructureShape.new(name: 'Authorizers')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BadRequestExceptionResponseContent = Shapes::StructureShape.new(name: 'BadRequestExceptionResponseContent')
    CognitoConfig = Shapes::StructureShape.new(name: 'CognitoConfig')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionResponseContent = Shapes::StructureShape.new(name: 'ConflictExceptionResponseContent')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ContentHandlingStrategy = Shapes::StringShape.new(name: 'ContentHandlingStrategy')
    Cors = Shapes::StructureShape.new(name: 'Cors')
    CorsHeaderList = Shapes::ListShape.new(name: 'CorsHeaderList')
    CorsMethodList = Shapes::ListShape.new(name: 'CorsMethodList')
    CorsOriginList = Shapes::ListShape.new(name: 'CorsOriginList')
    CreateApiInput = Shapes::StructureShape.new(name: 'CreateApiInput')
    CreateApiMappingInput = Shapes::StructureShape.new(name: 'CreateApiMappingInput')
    CreateApiMappingRequest = Shapes::StructureShape.new(name: 'CreateApiMappingRequest')
    CreateApiMappingResponse = Shapes::StructureShape.new(name: 'CreateApiMappingResponse')
    CreateApiRequest = Shapes::StructureShape.new(name: 'CreateApiRequest')
    CreateApiResponse = Shapes::StructureShape.new(name: 'CreateApiResponse')
    CreateAuthorizerInput = Shapes::StructureShape.new(name: 'CreateAuthorizerInput')
    CreateAuthorizerRequest = Shapes::StructureShape.new(name: 'CreateAuthorizerRequest')
    CreateAuthorizerResponse = Shapes::StructureShape.new(name: 'CreateAuthorizerResponse')
    CreateDeploymentInput = Shapes::StructureShape.new(name: 'CreateDeploymentInput')
    CreateDeploymentRequest = Shapes::StructureShape.new(name: 'CreateDeploymentRequest')
    CreateDeploymentResponse = Shapes::StructureShape.new(name: 'CreateDeploymentResponse')
    CreateDomainNameInput = Shapes::StructureShape.new(name: 'CreateDomainNameInput')
    CreateDomainNameRequest = Shapes::StructureShape.new(name: 'CreateDomainNameRequest')
    CreateDomainNameResponse = Shapes::StructureShape.new(name: 'CreateDomainNameResponse')
    CreateIntegrationInput = Shapes::StructureShape.new(name: 'CreateIntegrationInput')
    CreateIntegrationRequest = Shapes::StructureShape.new(name: 'CreateIntegrationRequest')
    CreateIntegrationResponseInput = Shapes::StructureShape.new(name: 'CreateIntegrationResponseInput')
    CreateIntegrationResponseRequest = Shapes::StructureShape.new(name: 'CreateIntegrationResponseRequest')
    CreateIntegrationResponseResponse = Shapes::StructureShape.new(name: 'CreateIntegrationResponseResponse')
    CreateIntegrationResult = Shapes::StructureShape.new(name: 'CreateIntegrationResult')
    CreateModelInput = Shapes::StructureShape.new(name: 'CreateModelInput')
    CreateModelRequest = Shapes::StructureShape.new(name: 'CreateModelRequest')
    CreateModelResponse = Shapes::StructureShape.new(name: 'CreateModelResponse')
    CreatePortalProductRequest = Shapes::StructureShape.new(name: 'CreatePortalProductRequest')
    CreatePortalProductRequestContent = Shapes::StructureShape.new(name: 'CreatePortalProductRequestContent')
    CreatePortalProductResponse = Shapes::StructureShape.new(name: 'CreatePortalProductResponse')
    CreatePortalProductResponseContent = Shapes::StructureShape.new(name: 'CreatePortalProductResponseContent')
    CreatePortalRequest = Shapes::StructureShape.new(name: 'CreatePortalRequest')
    CreatePortalRequestContent = Shapes::StructureShape.new(name: 'CreatePortalRequestContent')
    CreatePortalResponse = Shapes::StructureShape.new(name: 'CreatePortalResponse')
    CreatePortalResponseContent = Shapes::StructureShape.new(name: 'CreatePortalResponseContent')
    CreateProductPageRequest = Shapes::StructureShape.new(name: 'CreateProductPageRequest')
    CreateProductPageRequestContent = Shapes::StructureShape.new(name: 'CreateProductPageRequestContent')
    CreateProductPageResponse = Shapes::StructureShape.new(name: 'CreateProductPageResponse')
    CreateProductPageResponseContent = Shapes::StructureShape.new(name: 'CreateProductPageResponseContent')
    CreateProductRestEndpointPageRequest = Shapes::StructureShape.new(name: 'CreateProductRestEndpointPageRequest')
    CreateProductRestEndpointPageRequestContent = Shapes::StructureShape.new(name: 'CreateProductRestEndpointPageRequestContent')
    CreateProductRestEndpointPageResponse = Shapes::StructureShape.new(name: 'CreateProductRestEndpointPageResponse')
    CreateProductRestEndpointPageResponseContent = Shapes::StructureShape.new(name: 'CreateProductRestEndpointPageResponseContent')
    CreateRouteInput = Shapes::StructureShape.new(name: 'CreateRouteInput')
    CreateRouteRequest = Shapes::StructureShape.new(name: 'CreateRouteRequest')
    CreateRouteResponseInput = Shapes::StructureShape.new(name: 'CreateRouteResponseInput')
    CreateRouteResponseRequest = Shapes::StructureShape.new(name: 'CreateRouteResponseRequest')
    CreateRouteResponseResponse = Shapes::StructureShape.new(name: 'CreateRouteResponseResponse')
    CreateRouteResult = Shapes::StructureShape.new(name: 'CreateRouteResult')
    CreateRoutingRuleRequest = Shapes::StructureShape.new(name: 'CreateRoutingRuleRequest')
    CreateRoutingRuleResponse = Shapes::StructureShape.new(name: 'CreateRoutingRuleResponse')
    CreateStageInput = Shapes::StructureShape.new(name: 'CreateStageInput')
    CreateStageRequest = Shapes::StructureShape.new(name: 'CreateStageRequest')
    CreateStageResponse = Shapes::StructureShape.new(name: 'CreateStageResponse')
    CreateVpcLinkInput = Shapes::StructureShape.new(name: 'CreateVpcLinkInput')
    CreateVpcLinkRequest = Shapes::StructureShape.new(name: 'CreateVpcLinkRequest')
    CreateVpcLinkResponse = Shapes::StructureShape.new(name: 'CreateVpcLinkResponse')
    CustomColors = Shapes::StructureShape.new(name: 'CustomColors')
    DeleteAccessLogSettingsRequest = Shapes::StructureShape.new(name: 'DeleteAccessLogSettingsRequest')
    DeleteApiMappingRequest = Shapes::StructureShape.new(name: 'DeleteApiMappingRequest')
    DeleteApiRequest = Shapes::StructureShape.new(name: 'DeleteApiRequest')
    DeleteAuthorizerRequest = Shapes::StructureShape.new(name: 'DeleteAuthorizerRequest')
    DeleteCorsConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteCorsConfigurationRequest')
    DeleteDeploymentRequest = Shapes::StructureShape.new(name: 'DeleteDeploymentRequest')
    DeleteDomainNameRequest = Shapes::StructureShape.new(name: 'DeleteDomainNameRequest')
    DeleteIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationRequest')
    DeleteIntegrationResponseRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationResponseRequest')
    DeleteModelRequest = Shapes::StructureShape.new(name: 'DeleteModelRequest')
    DeletePortalProductRequest = Shapes::StructureShape.new(name: 'DeletePortalProductRequest')
    DeletePortalProductSharingPolicyRequest = Shapes::StructureShape.new(name: 'DeletePortalProductSharingPolicyRequest')
    DeletePortalRequest = Shapes::StructureShape.new(name: 'DeletePortalRequest')
    DeleteProductPageRequest = Shapes::StructureShape.new(name: 'DeleteProductPageRequest')
    DeleteProductRestEndpointPageRequest = Shapes::StructureShape.new(name: 'DeleteProductRestEndpointPageRequest')
    DeleteRouteRequest = Shapes::StructureShape.new(name: 'DeleteRouteRequest')
    DeleteRouteRequestParameterRequest = Shapes::StructureShape.new(name: 'DeleteRouteRequestParameterRequest')
    DeleteRouteResponseRequest = Shapes::StructureShape.new(name: 'DeleteRouteResponseRequest')
    DeleteRouteSettingsRequest = Shapes::StructureShape.new(name: 'DeleteRouteSettingsRequest')
    DeleteRoutingRuleRequest = Shapes::StructureShape.new(name: 'DeleteRoutingRuleRequest')
    DeleteStageRequest = Shapes::StructureShape.new(name: 'DeleteStageRequest')
    DeleteVpcLinkRequest = Shapes::StructureShape.new(name: 'DeleteVpcLinkRequest')
    DeleteVpcLinkResponse = Shapes::StructureShape.new(name: 'DeleteVpcLinkResponse')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    Deployments = Shapes::StructureShape.new(name: 'Deployments')
    DisablePortalRequest = Shapes::StructureShape.new(name: 'DisablePortalRequest')
    DisplayContent = Shapes::StructureShape.new(name: 'DisplayContent')
    DisplayContentOverrides = Shapes::StructureShape.new(name: 'DisplayContentOverrides')
    DisplayOrder = Shapes::StructureShape.new(name: 'DisplayOrder')
    DomainName = Shapes::StructureShape.new(name: 'DomainName')
    DomainNameConfiguration = Shapes::StructureShape.new(name: 'DomainNameConfiguration')
    DomainNameConfigurations = Shapes::ListShape.new(name: 'DomainNameConfigurations')
    DomainNameStatus = Shapes::StringShape.new(name: 'DomainNameStatus')
    DomainNames = Shapes::StructureShape.new(name: 'DomainNames')
    EndpointConfigurationRequest = Shapes::StructureShape.new(name: 'EndpointConfigurationRequest')
    EndpointConfigurationResponse = Shapes::StructureShape.new(name: 'EndpointConfigurationResponse')
    EndpointDisplayContent = Shapes::StructureShape.new(name: 'EndpointDisplayContent')
    EndpointDisplayContentResponse = Shapes::StructureShape.new(name: 'EndpointDisplayContentResponse')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    ExportApiRequest = Shapes::StructureShape.new(name: 'ExportApiRequest')
    ExportApiResponse = Shapes::StructureShape.new(name: 'ExportApiResponse')
    ExportedApi = Shapes::BlobShape.new(name: 'ExportedApi')
    GetApiMappingRequest = Shapes::StructureShape.new(name: 'GetApiMappingRequest')
    GetApiMappingResponse = Shapes::StructureShape.new(name: 'GetApiMappingResponse')
    GetApiMappingsRequest = Shapes::StructureShape.new(name: 'GetApiMappingsRequest')
    GetApiMappingsResponse = Shapes::StructureShape.new(name: 'GetApiMappingsResponse')
    GetApiRequest = Shapes::StructureShape.new(name: 'GetApiRequest')
    GetApiResponse = Shapes::StructureShape.new(name: 'GetApiResponse')
    GetApisRequest = Shapes::StructureShape.new(name: 'GetApisRequest')
    GetApisResponse = Shapes::StructureShape.new(name: 'GetApisResponse')
    GetAuthorizerRequest = Shapes::StructureShape.new(name: 'GetAuthorizerRequest')
    GetAuthorizerResponse = Shapes::StructureShape.new(name: 'GetAuthorizerResponse')
    GetAuthorizersRequest = Shapes::StructureShape.new(name: 'GetAuthorizersRequest')
    GetAuthorizersResponse = Shapes::StructureShape.new(name: 'GetAuthorizersResponse')
    GetDeploymentRequest = Shapes::StructureShape.new(name: 'GetDeploymentRequest')
    GetDeploymentResponse = Shapes::StructureShape.new(name: 'GetDeploymentResponse')
    GetDeploymentsRequest = Shapes::StructureShape.new(name: 'GetDeploymentsRequest')
    GetDeploymentsResponse = Shapes::StructureShape.new(name: 'GetDeploymentsResponse')
    GetDomainNameRequest = Shapes::StructureShape.new(name: 'GetDomainNameRequest')
    GetDomainNameResponse = Shapes::StructureShape.new(name: 'GetDomainNameResponse')
    GetDomainNamesRequest = Shapes::StructureShape.new(name: 'GetDomainNamesRequest')
    GetDomainNamesResponse = Shapes::StructureShape.new(name: 'GetDomainNamesResponse')
    GetIntegrationRequest = Shapes::StructureShape.new(name: 'GetIntegrationRequest')
    GetIntegrationResponseRequest = Shapes::StructureShape.new(name: 'GetIntegrationResponseRequest')
    GetIntegrationResponseResponse = Shapes::StructureShape.new(name: 'GetIntegrationResponseResponse')
    GetIntegrationResponsesRequest = Shapes::StructureShape.new(name: 'GetIntegrationResponsesRequest')
    GetIntegrationResponsesResponse = Shapes::StructureShape.new(name: 'GetIntegrationResponsesResponse')
    GetIntegrationResult = Shapes::StructureShape.new(name: 'GetIntegrationResult')
    GetIntegrationsRequest = Shapes::StructureShape.new(name: 'GetIntegrationsRequest')
    GetIntegrationsResponse = Shapes::StructureShape.new(name: 'GetIntegrationsResponse')
    GetModelRequest = Shapes::StructureShape.new(name: 'GetModelRequest')
    GetModelResponse = Shapes::StructureShape.new(name: 'GetModelResponse')
    GetModelTemplateRequest = Shapes::StructureShape.new(name: 'GetModelTemplateRequest')
    GetModelTemplateResponse = Shapes::StructureShape.new(name: 'GetModelTemplateResponse')
    GetModelsRequest = Shapes::StructureShape.new(name: 'GetModelsRequest')
    GetModelsResponse = Shapes::StructureShape.new(name: 'GetModelsResponse')
    GetPortalProductRequest = Shapes::StructureShape.new(name: 'GetPortalProductRequest')
    GetPortalProductResponse = Shapes::StructureShape.new(name: 'GetPortalProductResponse')
    GetPortalProductResponseContent = Shapes::StructureShape.new(name: 'GetPortalProductResponseContent')
    GetPortalProductSharingPolicyRequest = Shapes::StructureShape.new(name: 'GetPortalProductSharingPolicyRequest')
    GetPortalProductSharingPolicyResponse = Shapes::StructureShape.new(name: 'GetPortalProductSharingPolicyResponse')
    GetPortalProductSharingPolicyResponseContent = Shapes::StructureShape.new(name: 'GetPortalProductSharingPolicyResponseContent')
    GetPortalRequest = Shapes::StructureShape.new(name: 'GetPortalRequest')
    GetPortalResponse = Shapes::StructureShape.new(name: 'GetPortalResponse')
    GetPortalResponseContent = Shapes::StructureShape.new(name: 'GetPortalResponseContent')
    GetProductPageRequest = Shapes::StructureShape.new(name: 'GetProductPageRequest')
    GetProductPageResponse = Shapes::StructureShape.new(name: 'GetProductPageResponse')
    GetProductPageResponseContent = Shapes::StructureShape.new(name: 'GetProductPageResponseContent')
    GetProductRestEndpointPageRequest = Shapes::StructureShape.new(name: 'GetProductRestEndpointPageRequest')
    GetProductRestEndpointPageResponse = Shapes::StructureShape.new(name: 'GetProductRestEndpointPageResponse')
    GetProductRestEndpointPageResponseContent = Shapes::StructureShape.new(name: 'GetProductRestEndpointPageResponseContent')
    GetRouteRequest = Shapes::StructureShape.new(name: 'GetRouteRequest')
    GetRouteResponseRequest = Shapes::StructureShape.new(name: 'GetRouteResponseRequest')
    GetRouteResponseResponse = Shapes::StructureShape.new(name: 'GetRouteResponseResponse')
    GetRouteResponsesRequest = Shapes::StructureShape.new(name: 'GetRouteResponsesRequest')
    GetRouteResponsesResponse = Shapes::StructureShape.new(name: 'GetRouteResponsesResponse')
    GetRouteResult = Shapes::StructureShape.new(name: 'GetRouteResult')
    GetRoutesRequest = Shapes::StructureShape.new(name: 'GetRoutesRequest')
    GetRoutesResponse = Shapes::StructureShape.new(name: 'GetRoutesResponse')
    GetRoutingRuleRequest = Shapes::StructureShape.new(name: 'GetRoutingRuleRequest')
    GetRoutingRuleResponse = Shapes::StructureShape.new(name: 'GetRoutingRuleResponse')
    GetStageRequest = Shapes::StructureShape.new(name: 'GetStageRequest')
    GetStageResponse = Shapes::StructureShape.new(name: 'GetStageResponse')
    GetStagesRequest = Shapes::StructureShape.new(name: 'GetStagesRequest')
    GetStagesResponse = Shapes::StructureShape.new(name: 'GetStagesResponse')
    GetTagsRequest = Shapes::StructureShape.new(name: 'GetTagsRequest')
    GetTagsResponse = Shapes::StructureShape.new(name: 'GetTagsResponse')
    GetVpcLinkRequest = Shapes::StructureShape.new(name: 'GetVpcLinkRequest')
    GetVpcLinkResponse = Shapes::StructureShape.new(name: 'GetVpcLinkResponse')
    GetVpcLinksRequest = Shapes::StructureShape.new(name: 'GetVpcLinksRequest')
    GetVpcLinksResponse = Shapes::StructureShape.new(name: 'GetVpcLinksResponse')
    Id = Shapes::StringShape.new(name: 'Id')
    IdentifierParts = Shapes::StructureShape.new(name: 'IdentifierParts')
    IdentitySourceList = Shapes::ListShape.new(name: 'IdentitySourceList')
    ImportApiInput = Shapes::StructureShape.new(name: 'ImportApiInput')
    ImportApiRequest = Shapes::StructureShape.new(name: 'ImportApiRequest')
    ImportApiResponse = Shapes::StructureShape.new(name: 'ImportApiResponse')
    IntegerWithLengthBetween0And3600 = Shapes::IntegerShape.new(name: 'IntegerWithLengthBetween0And3600')
    IntegerWithLengthBetween50And30000 = Shapes::IntegerShape.new(name: 'IntegerWithLengthBetween50And30000')
    IntegerWithLengthBetweenMinus1And86400 = Shapes::IntegerShape.new(name: 'IntegerWithLengthBetweenMinus1And86400')
    Integration = Shapes::StructureShape.new(name: 'Integration')
    IntegrationParameters = Shapes::MapShape.new(name: 'IntegrationParameters')
    IntegrationResponse = Shapes::StructureShape.new(name: 'IntegrationResponse')
    IntegrationResponses = Shapes::StructureShape.new(name: 'IntegrationResponses')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    Integrations = Shapes::StructureShape.new(name: 'Integrations')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    JWTConfiguration = Shapes::StructureShape.new(name: 'JWTConfiguration')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitExceededExceptionResponseContent = Shapes::StructureShape.new(name: 'LimitExceededExceptionResponseContent')
    ListPortalProductsRequest = Shapes::StructureShape.new(name: 'ListPortalProductsRequest')
    ListPortalProductsResponse = Shapes::StructureShape.new(name: 'ListPortalProductsResponse')
    ListPortalProductsResponseContent = Shapes::StructureShape.new(name: 'ListPortalProductsResponseContent')
    ListPortalsRequest = Shapes::StructureShape.new(name: 'ListPortalsRequest')
    ListPortalsResponse = Shapes::StructureShape.new(name: 'ListPortalsResponse')
    ListPortalsResponseContent = Shapes::StructureShape.new(name: 'ListPortalsResponseContent')
    ListProductPagesRequest = Shapes::StructureShape.new(name: 'ListProductPagesRequest')
    ListProductPagesResponse = Shapes::StructureShape.new(name: 'ListProductPagesResponse')
    ListProductPagesResponseContent = Shapes::StructureShape.new(name: 'ListProductPagesResponseContent')
    ListProductRestEndpointPagesRequest = Shapes::StructureShape.new(name: 'ListProductRestEndpointPagesRequest')
    ListProductRestEndpointPagesResponse = Shapes::StructureShape.new(name: 'ListProductRestEndpointPagesResponse')
    ListProductRestEndpointPagesResponseContent = Shapes::StructureShape.new(name: 'ListProductRestEndpointPagesResponseContent')
    ListRoutingRulesRequest = Shapes::StructureShape.new(name: 'ListRoutingRulesRequest')
    ListRoutingRulesResponse = Shapes::StructureShape.new(name: 'ListRoutingRulesResponse')
    LoggingLevel = Shapes::StringShape.new(name: 'LoggingLevel')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Model = Shapes::StructureShape.new(name: 'Model')
    Models = Shapes::StructureShape.new(name: 'Models')
    MutualTlsAuthentication = Shapes::StructureShape.new(name: 'MutualTlsAuthentication')
    MutualTlsAuthenticationInput = Shapes::StructureShape.new(name: 'MutualTlsAuthenticationInput')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    None = Shapes::StructureShape.new(name: 'None')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NotFoundExceptionResponseContent = Shapes::StructureShape.new(name: 'NotFoundExceptionResponseContent')
    ParameterConstraints = Shapes::StructureShape.new(name: 'ParameterConstraints')
    PassthroughBehavior = Shapes::StringShape.new(name: 'PassthroughBehavior')
    PortalContent = Shapes::StructureShape.new(name: 'PortalContent')
    PortalProductSummary = Shapes::StructureShape.new(name: 'PortalProductSummary')
    PortalSummary = Shapes::StructureShape.new(name: 'PortalSummary')
    PortalTheme = Shapes::StructureShape.new(name: 'PortalTheme')
    Preview = Shapes::StructureShape.new(name: 'Preview')
    PreviewPortalRequest = Shapes::StructureShape.new(name: 'PreviewPortalRequest')
    PreviewPortalResponse = Shapes::StructureShape.new(name: 'PreviewPortalResponse')
    PreviewStatus = Shapes::StringShape.new(name: 'PreviewStatus')
    ProductPageSummaryNoBody = Shapes::StructureShape.new(name: 'ProductPageSummaryNoBody')
    ProductRestEndpointPageSummaryNoBody = Shapes::StructureShape.new(name: 'ProductRestEndpointPageSummaryNoBody')
    ProtocolType = Shapes::StringShape.new(name: 'ProtocolType')
    PublishPortalRequest = Shapes::StructureShape.new(name: 'PublishPortalRequest')
    PublishPortalRequestContent = Shapes::StructureShape.new(name: 'PublishPortalRequestContent')
    PublishPortalResponse = Shapes::StructureShape.new(name: 'PublishPortalResponse')
    PublishStatus = Shapes::StringShape.new(name: 'PublishStatus')
    PutPortalProductSharingPolicyRequest = Shapes::StructureShape.new(name: 'PutPortalProductSharingPolicyRequest')
    PutPortalProductSharingPolicyRequestContent = Shapes::StructureShape.new(name: 'PutPortalProductSharingPolicyRequestContent')
    PutPortalProductSharingPolicyResponse = Shapes::StructureShape.new(name: 'PutPortalProductSharingPolicyResponse')
    PutRoutingRuleRequest = Shapes::StructureShape.new(name: 'PutRoutingRuleRequest')
    PutRoutingRuleResponse = Shapes::StructureShape.new(name: 'PutRoutingRuleResponse')
    ReimportApiInput = Shapes::StructureShape.new(name: 'ReimportApiInput')
    ReimportApiRequest = Shapes::StructureShape.new(name: 'ReimportApiRequest')
    ReimportApiResponse = Shapes::StructureShape.new(name: 'ReimportApiResponse')
    ResetAuthorizersCacheRequest = Shapes::StructureShape.new(name: 'ResetAuthorizersCacheRequest')
    ResponseParameters = Shapes::MapShape.new(name: 'ResponseParameters')
    RestEndpointIdentifier = Shapes::StructureShape.new(name: 'RestEndpointIdentifier')
    Route = Shapes::StructureShape.new(name: 'Route')
    RouteModels = Shapes::MapShape.new(name: 'RouteModels')
    RouteParameters = Shapes::MapShape.new(name: 'RouteParameters')
    RouteResponse = Shapes::StructureShape.new(name: 'RouteResponse')
    RouteResponses = Shapes::StructureShape.new(name: 'RouteResponses')
    RouteSettings = Shapes::StructureShape.new(name: 'RouteSettings')
    RouteSettingsMap = Shapes::MapShape.new(name: 'RouteSettingsMap')
    Routes = Shapes::StructureShape.new(name: 'Routes')
    RoutingMode = Shapes::StringShape.new(name: 'RoutingMode')
    RoutingRule = Shapes::StructureShape.new(name: 'RoutingRule')
    RoutingRuleAction = Shapes::StructureShape.new(name: 'RoutingRuleAction')
    RoutingRuleActionInvokeApi = Shapes::StructureShape.new(name: 'RoutingRuleActionInvokeApi')
    RoutingRuleCondition = Shapes::StructureShape.new(name: 'RoutingRuleCondition')
    RoutingRuleInput = Shapes::StructureShape.new(name: 'RoutingRuleInput')
    RoutingRuleMatchBasePaths = Shapes::StructureShape.new(name: 'RoutingRuleMatchBasePaths')
    RoutingRuleMatchHeaderValue = Shapes::StructureShape.new(name: 'RoutingRuleMatchHeaderValue')
    RoutingRuleMatchHeaders = Shapes::StructureShape.new(name: 'RoutingRuleMatchHeaders')
    RoutingRulePriority = Shapes::IntegerShape.new(name: 'RoutingRulePriority')
    RoutingRules = Shapes::StructureShape.new(name: 'RoutingRules')
    Section = Shapes::StructureShape.new(name: 'Section')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    SecurityPolicy = Shapes::StringShape.new(name: 'SecurityPolicy')
    SelectionExpression = Shapes::StringShape.new(name: 'SelectionExpression')
    SelectionKey = Shapes::StringShape.new(name: 'SelectionKey')
    Stage = Shapes::StructureShape.new(name: 'Stage')
    StageVariablesMap = Shapes::MapShape.new(name: 'StageVariablesMap')
    Stages = Shapes::StructureShape.new(name: 'Stages')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusException = Shapes::StructureShape.new(name: 'StatusException')
    StringWithLengthBetween0And1024 = Shapes::StringShape.new(name: 'StringWithLengthBetween0And1024')
    StringWithLengthBetween0And2048 = Shapes::StringShape.new(name: 'StringWithLengthBetween0And2048')
    StringWithLengthBetween0And32K = Shapes::StringShape.new(name: 'StringWithLengthBetween0And32K')
    StringWithLengthBetween1And1024 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And1024')
    StringWithLengthBetween1And128 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And128')
    StringWithLengthBetween1And1600 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And1600')
    StringWithLengthBetween1And256 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And256')
    StringWithLengthBetween1And512 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And512')
    StringWithLengthBetween1And64 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And64')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Template = Shapes::StructureShape.new(name: 'Template')
    TemplateMap = Shapes::MapShape.new(name: 'TemplateMap')
    TlsConfig = Shapes::StructureShape.new(name: 'TlsConfig')
    TlsConfigInput = Shapes::StructureShape.new(name: 'TlsConfigInput')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TryItState = Shapes::StringShape.new(name: 'TryItState')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateApiInput = Shapes::StructureShape.new(name: 'UpdateApiInput')
    UpdateApiMappingInput = Shapes::StructureShape.new(name: 'UpdateApiMappingInput')
    UpdateApiMappingRequest = Shapes::StructureShape.new(name: 'UpdateApiMappingRequest')
    UpdateApiMappingResponse = Shapes::StructureShape.new(name: 'UpdateApiMappingResponse')
    UpdateApiRequest = Shapes::StructureShape.new(name: 'UpdateApiRequest')
    UpdateApiResponse = Shapes::StructureShape.new(name: 'UpdateApiResponse')
    UpdateAuthorizerInput = Shapes::StructureShape.new(name: 'UpdateAuthorizerInput')
    UpdateAuthorizerRequest = Shapes::StructureShape.new(name: 'UpdateAuthorizerRequest')
    UpdateAuthorizerResponse = Shapes::StructureShape.new(name: 'UpdateAuthorizerResponse')
    UpdateDeploymentInput = Shapes::StructureShape.new(name: 'UpdateDeploymentInput')
    UpdateDeploymentRequest = Shapes::StructureShape.new(name: 'UpdateDeploymentRequest')
    UpdateDeploymentResponse = Shapes::StructureShape.new(name: 'UpdateDeploymentResponse')
    UpdateDomainNameInput = Shapes::StructureShape.new(name: 'UpdateDomainNameInput')
    UpdateDomainNameRequest = Shapes::StructureShape.new(name: 'UpdateDomainNameRequest')
    UpdateDomainNameResponse = Shapes::StructureShape.new(name: 'UpdateDomainNameResponse')
    UpdateIntegrationInput = Shapes::StructureShape.new(name: 'UpdateIntegrationInput')
    UpdateIntegrationRequest = Shapes::StructureShape.new(name: 'UpdateIntegrationRequest')
    UpdateIntegrationResponseInput = Shapes::StructureShape.new(name: 'UpdateIntegrationResponseInput')
    UpdateIntegrationResponseRequest = Shapes::StructureShape.new(name: 'UpdateIntegrationResponseRequest')
    UpdateIntegrationResponseResponse = Shapes::StructureShape.new(name: 'UpdateIntegrationResponseResponse')
    UpdateIntegrationResult = Shapes::StructureShape.new(name: 'UpdateIntegrationResult')
    UpdateModelInput = Shapes::StructureShape.new(name: 'UpdateModelInput')
    UpdateModelRequest = Shapes::StructureShape.new(name: 'UpdateModelRequest')
    UpdateModelResponse = Shapes::StructureShape.new(name: 'UpdateModelResponse')
    UpdatePortalProductRequest = Shapes::StructureShape.new(name: 'UpdatePortalProductRequest')
    UpdatePortalProductRequestContent = Shapes::StructureShape.new(name: 'UpdatePortalProductRequestContent')
    UpdatePortalProductResponse = Shapes::StructureShape.new(name: 'UpdatePortalProductResponse')
    UpdatePortalProductResponseContent = Shapes::StructureShape.new(name: 'UpdatePortalProductResponseContent')
    UpdatePortalRequest = Shapes::StructureShape.new(name: 'UpdatePortalRequest')
    UpdatePortalRequestContent = Shapes::StructureShape.new(name: 'UpdatePortalRequestContent')
    UpdatePortalResponse = Shapes::StructureShape.new(name: 'UpdatePortalResponse')
    UpdatePortalResponseContent = Shapes::StructureShape.new(name: 'UpdatePortalResponseContent')
    UpdateProductPageRequest = Shapes::StructureShape.new(name: 'UpdateProductPageRequest')
    UpdateProductPageRequestContent = Shapes::StructureShape.new(name: 'UpdateProductPageRequestContent')
    UpdateProductPageResponse = Shapes::StructureShape.new(name: 'UpdateProductPageResponse')
    UpdateProductPageResponseContent = Shapes::StructureShape.new(name: 'UpdateProductPageResponseContent')
    UpdateProductRestEndpointPageRequest = Shapes::StructureShape.new(name: 'UpdateProductRestEndpointPageRequest')
    UpdateProductRestEndpointPageRequestContent = Shapes::StructureShape.new(name: 'UpdateProductRestEndpointPageRequestContent')
    UpdateProductRestEndpointPageResponse = Shapes::StructureShape.new(name: 'UpdateProductRestEndpointPageResponse')
    UpdateProductRestEndpointPageResponseContent = Shapes::StructureShape.new(name: 'UpdateProductRestEndpointPageResponseContent')
    UpdateRouteInput = Shapes::StructureShape.new(name: 'UpdateRouteInput')
    UpdateRouteRequest = Shapes::StructureShape.new(name: 'UpdateRouteRequest')
    UpdateRouteResponseInput = Shapes::StructureShape.new(name: 'UpdateRouteResponseInput')
    UpdateRouteResponseRequest = Shapes::StructureShape.new(name: 'UpdateRouteResponseRequest')
    UpdateRouteResponseResponse = Shapes::StructureShape.new(name: 'UpdateRouteResponseResponse')
    UpdateRouteResult = Shapes::StructureShape.new(name: 'UpdateRouteResult')
    UpdateStageInput = Shapes::StructureShape.new(name: 'UpdateStageInput')
    UpdateStageRequest = Shapes::StructureShape.new(name: 'UpdateStageRequest')
    UpdateStageResponse = Shapes::StructureShape.new(name: 'UpdateStageResponse')
    UpdateVpcLinkInput = Shapes::StructureShape.new(name: 'UpdateVpcLinkInput')
    UpdateVpcLinkRequest = Shapes::StructureShape.new(name: 'UpdateVpcLinkRequest')
    UpdateVpcLinkResponse = Shapes::StructureShape.new(name: 'UpdateVpcLinkResponse')
    UriWithLengthBetween1And2048 = Shapes::StringShape.new(name: 'UriWithLengthBetween1And2048')
    VpcLink = Shapes::StructureShape.new(name: 'VpcLink')
    VpcLinkStatus = Shapes::StringShape.new(name: 'VpcLinkStatus')
    VpcLinkVersion = Shapes::StringShape.new(name: 'VpcLinkVersion')
    VpcLinks = Shapes::StructureShape.new(name: 'VpcLinks')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfApi = Shapes::ListShape.new(name: '__listOfApi')
    __listOfApiMapping = Shapes::ListShape.new(name: '__listOfApiMapping')
    __listOfAuthorizer = Shapes::ListShape.new(name: '__listOfAuthorizer')
    __listOfDeployment = Shapes::ListShape.new(name: '__listOfDeployment')
    __listOfDomainName = Shapes::ListShape.new(name: '__listOfDomainName')
    __listOfIntegration = Shapes::ListShape.new(name: '__listOfIntegration')
    __listOfIntegrationResponse = Shapes::ListShape.new(name: '__listOfIntegrationResponse')
    __listOfModel = Shapes::ListShape.new(name: '__listOfModel')
    __listOfPortalProductSummary = Shapes::ListShape.new(name: '__listOfPortalProductSummary')
    __listOfPortalSummary = Shapes::ListShape.new(name: '__listOfPortalSummary')
    __listOfProductPageSummaryNoBody = Shapes::ListShape.new(name: '__listOfProductPageSummaryNoBody')
    __listOfProductRestEndpointPageSummaryNoBody = Shapes::ListShape.new(name: '__listOfProductRestEndpointPageSummaryNoBody')
    __listOfRoute = Shapes::ListShape.new(name: '__listOfRoute')
    __listOfRouteResponse = Shapes::ListShape.new(name: '__listOfRouteResponse')
    __listOfRoutingRule = Shapes::ListShape.new(name: '__listOfRoutingRule')
    __listOfRoutingRuleAction = Shapes::ListShape.new(name: '__listOfRoutingRuleAction')
    __listOfRoutingRuleCondition = Shapes::ListShape.new(name: '__listOfRoutingRuleCondition')
    __listOfRoutingRuleMatchHeaderValue = Shapes::ListShape.new(name: '__listOfRoutingRuleMatchHeaderValue')
    __listOfSection = Shapes::ListShape.new(name: '__listOfSection')
    __listOfSelectionKey = Shapes::ListShape.new(name: '__listOfSelectionKey')
    __listOfStage = Shapes::ListShape.new(name: '__listOfStage')
    __listOfVpcLink = Shapes::ListShape.new(name: '__listOfVpcLink')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __listOf__stringMin20Max2048 = Shapes::ListShape.new(name: '__listOf__stringMin20Max2048')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin0Max1024 = Shapes::StringShape.new(name: '__stringMin0Max1024')
    __stringMin0Max1092 = Shapes::StringShape.new(name: '__stringMin0Max1092')
    __stringMin0Max255 = Shapes::StringShape.new(name: '__stringMin0Max255')
    __stringMin10Max2048 = Shapes::StringShape.new(name: '__stringMin10Max2048')
    __stringMin10Max30PatternAZ09 = Shapes::StringShape.new(name: '__stringMin10Max30PatternAZ09')
    __stringMin1Max1024 = Shapes::StringShape.new(name: '__stringMin1Max1024')
    __stringMin1Max128 = Shapes::StringShape.new(name: '__stringMin1Max128')
    __stringMin1Max16 = Shapes::StringShape.new(name: '__stringMin1Max16')
    __stringMin1Max20 = Shapes::StringShape.new(name: '__stringMin1Max20')
    __stringMin1Max2048 = Shapes::StringShape.new(name: '__stringMin1Max2048')
    __stringMin1Max255 = Shapes::StringShape.new(name: '__stringMin1Max255')
    __stringMin1Max256 = Shapes::StringShape.new(name: '__stringMin1Max256')
    __stringMin1Max307200 = Shapes::StringShape.new(name: '__stringMin1Max307200')
    __stringMin1Max32768 = Shapes::StringShape.new(name: '__stringMin1Max32768')
    __stringMin1Max4096 = Shapes::StringShape.new(name: '__stringMin1Max4096')
    __stringMin1Max50 = Shapes::StringShape.new(name: '__stringMin1Max50')
    __stringMin1Max64 = Shapes::StringShape.new(name: '__stringMin1Max64')
    __stringMin20Max2048 = Shapes::StringShape.new(name: '__stringMin20Max2048')
    __stringMin3Max255 = Shapes::StringShape.new(name: '__stringMin3Max255')
    __stringMin3Max256 = Shapes::StringShape.new(name: '__stringMin3Max256')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    ACMManaged.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: __stringMin10Max2048, required: true, location_name: "certificateArn"))
    ACMManaged.add_member(:domain_name, Shapes::ShapeRef.new(shape: __stringMin3Max256, required: true, location_name: "domainName"))
    ACMManaged.struct_class = Types::ACMManaged

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessDeniedExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    AccessDeniedExceptionResponseContent.struct_class = Types::AccessDeniedExceptionResponseContent

    AccessLogSettings.add_member(:destination_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "destinationArn"))
    AccessLogSettings.add_member(:format, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "format"))
    AccessLogSettings.struct_class = Types::AccessLogSettings

    Api.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    Api.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    Api.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    Api.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    Api.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    Api.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    Api.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Api.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    Api.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    Api.add_member(:import_info, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "importInfo"))
    Api.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    Api.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    Api.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, required: true, location_name: "protocolType"))
    Api.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, required: true, location_name: "routeSelectionExpression"))
    Api.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Api.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    Api.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "warnings"))
    Api.struct_class = Types::Api

    ApiMapping.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "apiId"))
    ApiMapping.add_member(:api_mapping_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiMappingId"))
    ApiMapping.add_member(:api_mapping_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "apiMappingKey"))
    ApiMapping.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stage"))
    ApiMapping.struct_class = Types::ApiMapping

    ApiMappings.add_member(:items, Shapes::ShapeRef.new(shape: __listOfApiMapping, location_name: "items"))
    ApiMappings.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ApiMappings.struct_class = Types::ApiMappings

    Apis.add_member(:items, Shapes::ShapeRef.new(shape: __listOfApi, location_name: "items"))
    Apis.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Apis.struct_class = Types::Apis

    Authorization.add_member(:cognito_config, Shapes::ShapeRef.new(shape: CognitoConfig, location_name: "cognitoConfig"))
    Authorization.add_member(:none, Shapes::ShapeRef.new(shape: None, location_name: "none"))
    Authorization.struct_class = Types::Authorization

    AuthorizationScopes.member = Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64)

    Authorizer.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    Authorizer.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    Authorizer.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    Authorizer.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    Authorizer.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    Authorizer.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    Authorizer.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    Authorizer.add_member(:jwt_configuration, Shapes::ShapeRef.new(shape: JWTConfiguration, location_name: "jwtConfiguration"))
    Authorizer.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    Authorizer.add_member(:authorizer_payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "authorizerPayloadFormatVersion"))
    Authorizer.add_member(:enable_simple_responses, Shapes::ShapeRef.new(shape: __boolean, location_name: "enableSimpleResponses"))
    Authorizer.struct_class = Types::Authorizer

    Authorizers.add_member(:items, Shapes::ShapeRef.new(shape: __listOfAuthorizer, location_name: "items"))
    Authorizers.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Authorizers.struct_class = Types::Authorizers

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BadRequestExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestExceptionResponseContent.struct_class = Types::BadRequestExceptionResponseContent

    CognitoConfig.add_member(:app_client_id, Shapes::ShapeRef.new(shape: __stringMin1Max256, required: true, location_name: "appClientId"))
    CognitoConfig.add_member(:user_pool_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "userPoolArn"))
    CognitoConfig.add_member(:user_pool_domain, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "userPoolDomain"))
    CognitoConfig.struct_class = Types::CognitoConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConflictExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictExceptionResponseContent.struct_class = Types::ConflictExceptionResponseContent

    Cors.add_member(:allow_credentials, Shapes::ShapeRef.new(shape: __boolean, location_name: "allowCredentials"))
    Cors.add_member(:allow_headers, Shapes::ShapeRef.new(shape: CorsHeaderList, location_name: "allowHeaders"))
    Cors.add_member(:allow_methods, Shapes::ShapeRef.new(shape: CorsMethodList, location_name: "allowMethods"))
    Cors.add_member(:allow_origins, Shapes::ShapeRef.new(shape: CorsOriginList, location_name: "allowOrigins"))
    Cors.add_member(:expose_headers, Shapes::ShapeRef.new(shape: CorsHeaderList, location_name: "exposeHeaders"))
    Cors.add_member(:max_age, Shapes::ShapeRef.new(shape: IntegerWithLengthBetweenMinus1And86400, location_name: "maxAge"))
    Cors.struct_class = Types::Cors

    CorsHeaderList.member = Shapes::ShapeRef.new(shape: __string)

    CorsMethodList.member = Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64)

    CorsOriginList.member = Shapes::ShapeRef.new(shape: __string)

    CreateApiInput.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    CreateApiInput.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    CreateApiInput.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    CreateApiInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateApiInput.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    CreateApiInput.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    CreateApiInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateApiInput.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, required: true, location_name: "protocolType"))
    CreateApiInput.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    CreateApiInput.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    CreateApiInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateApiInput.add_member(:target, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "target"))
    CreateApiInput.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    CreateApiInput.struct_class = Types::CreateApiInput

    CreateApiMappingInput.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "apiId"))
    CreateApiMappingInput.add_member(:api_mapping_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "apiMappingKey"))
    CreateApiMappingInput.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stage"))
    CreateApiMappingInput.struct_class = Types::CreateApiMappingInput

    CreateApiMappingRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "apiId"))
    CreateApiMappingRequest.add_member(:api_mapping_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "apiMappingKey"))
    CreateApiMappingRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    CreateApiMappingRequest.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stage"))
    CreateApiMappingRequest.struct_class = Types::CreateApiMappingRequest

    CreateApiMappingResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    CreateApiMappingResponse.add_member(:api_mapping_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiMappingId"))
    CreateApiMappingResponse.add_member(:api_mapping_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "apiMappingKey"))
    CreateApiMappingResponse.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stage"))
    CreateApiMappingResponse.struct_class = Types::CreateApiMappingResponse

    CreateApiRequest.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    CreateApiRequest.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    CreateApiRequest.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    CreateApiRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateApiRequest.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    CreateApiRequest.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    CreateApiRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateApiRequest.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, required: true, location_name: "protocolType"))
    CreateApiRequest.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    CreateApiRequest.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    CreateApiRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateApiRequest.add_member(:target, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "target"))
    CreateApiRequest.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    CreateApiRequest.struct_class = Types::CreateApiRequest

    CreateApiResponse.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    CreateApiResponse.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    CreateApiResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    CreateApiResponse.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    CreateApiResponse.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    CreateApiResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    CreateApiResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateApiResponse.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    CreateApiResponse.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    CreateApiResponse.add_member(:import_info, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "importInfo"))
    CreateApiResponse.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateApiResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    CreateApiResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "protocolType"))
    CreateApiResponse.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    CreateApiResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateApiResponse.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    CreateApiResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "warnings"))
    CreateApiResponse.struct_class = Types::CreateApiResponse

    CreateAuthorizerInput.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    CreateAuthorizerInput.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    CreateAuthorizerInput.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    CreateAuthorizerInput.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    CreateAuthorizerInput.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, required: true, location_name: "identitySource"))
    CreateAuthorizerInput.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    CreateAuthorizerInput.add_member(:jwt_configuration, Shapes::ShapeRef.new(shape: JWTConfiguration, location_name: "jwtConfiguration"))
    CreateAuthorizerInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateAuthorizerInput.add_member(:authorizer_payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "authorizerPayloadFormatVersion"))
    CreateAuthorizerInput.add_member(:enable_simple_responses, Shapes::ShapeRef.new(shape: __boolean, location_name: "enableSimpleResponses"))
    CreateAuthorizerInput.struct_class = Types::CreateAuthorizerInput

    CreateAuthorizerRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateAuthorizerRequest.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    CreateAuthorizerRequest.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    CreateAuthorizerRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    CreateAuthorizerRequest.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    CreateAuthorizerRequest.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, required: true, location_name: "identitySource"))
    CreateAuthorizerRequest.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    CreateAuthorizerRequest.add_member(:jwt_configuration, Shapes::ShapeRef.new(shape: JWTConfiguration, location_name: "jwtConfiguration"))
    CreateAuthorizerRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateAuthorizerRequest.add_member(:authorizer_payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "authorizerPayloadFormatVersion"))
    CreateAuthorizerRequest.add_member(:enable_simple_responses, Shapes::ShapeRef.new(shape: __boolean, location_name: "enableSimpleResponses"))
    CreateAuthorizerRequest.struct_class = Types::CreateAuthorizerRequest

    CreateAuthorizerResponse.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    CreateAuthorizerResponse.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    CreateAuthorizerResponse.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    CreateAuthorizerResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    CreateAuthorizerResponse.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    CreateAuthorizerResponse.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    CreateAuthorizerResponse.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    CreateAuthorizerResponse.add_member(:jwt_configuration, Shapes::ShapeRef.new(shape: JWTConfiguration, location_name: "jwtConfiguration"))
    CreateAuthorizerResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    CreateAuthorizerResponse.add_member(:authorizer_payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "authorizerPayloadFormatVersion"))
    CreateAuthorizerResponse.add_member(:enable_simple_responses, Shapes::ShapeRef.new(shape: __boolean, location_name: "enableSimpleResponses"))
    CreateAuthorizerResponse.struct_class = Types::CreateAuthorizerResponse

    CreateDeploymentInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateDeploymentInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    CreateDeploymentInput.struct_class = Types::CreateDeploymentInput

    CreateDeploymentRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateDeploymentRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateDeploymentRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    CreateDeploymentRequest.struct_class = Types::CreateDeploymentRequest

    CreateDeploymentResponse.add_member(:auto_deployed, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeployed"))
    CreateDeploymentResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    CreateDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    CreateDeploymentResponse.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    CreateDeploymentResponse.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "deploymentStatusMessage"))
    CreateDeploymentResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateDeploymentResponse.struct_class = Types::CreateDeploymentResponse

    CreateDomainNameInput.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, required: true, location_name: "domainName"))
    CreateDomainNameInput.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    CreateDomainNameInput.add_member(:mutual_tls_authentication, Shapes::ShapeRef.new(shape: MutualTlsAuthenticationInput, location_name: "mutualTlsAuthentication"))
    CreateDomainNameInput.add_member(:routing_mode, Shapes::ShapeRef.new(shape: RoutingMode, location_name: "routingMode"))
    CreateDomainNameInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDomainNameInput.struct_class = Types::CreateDomainNameInput

    CreateDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, required: true, location_name: "domainName"))
    CreateDomainNameRequest.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    CreateDomainNameRequest.add_member(:mutual_tls_authentication, Shapes::ShapeRef.new(shape: MutualTlsAuthenticationInput, location_name: "mutualTlsAuthentication"))
    CreateDomainNameRequest.add_member(:routing_mode, Shapes::ShapeRef.new(shape: RoutingMode, location_name: "routingMode"))
    CreateDomainNameRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDomainNameRequest.struct_class = Types::CreateDomainNameRequest

    CreateDomainNameResponse.add_member(:api_mapping_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiMappingSelectionExpression"))
    CreateDomainNameResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, location_name: "domainName"))
    CreateDomainNameResponse.add_member(:domain_name_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "domainNameArn"))
    CreateDomainNameResponse.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    CreateDomainNameResponse.add_member(:mutual_tls_authentication, Shapes::ShapeRef.new(shape: MutualTlsAuthentication, location_name: "mutualTlsAuthentication"))
    CreateDomainNameResponse.add_member(:routing_mode, Shapes::ShapeRef.new(shape: RoutingMode, location_name: "routingMode"))
    CreateDomainNameResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDomainNameResponse.struct_class = Types::CreateDomainNameResponse

    CreateIntegrationInput.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    CreateIntegrationInput.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    CreateIntegrationInput.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationInput.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    CreateIntegrationInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateIntegrationInput.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    CreateIntegrationInput.add_member(:integration_subtype, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "integrationSubtype"))
    CreateIntegrationInput.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    CreateIntegrationInput.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    CreateIntegrationInput.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    CreateIntegrationInput.add_member(:payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "payloadFormatVersion"))
    CreateIntegrationInput.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    CreateIntegrationInput.add_member(:response_parameters, Shapes::ShapeRef.new(shape: ResponseParameters, location_name: "responseParameters"))
    CreateIntegrationInput.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    CreateIntegrationInput.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationInput.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And30000, location_name: "timeoutInMillis"))
    CreateIntegrationInput.add_member(:tls_config, Shapes::ShapeRef.new(shape: TlsConfigInput, location_name: "tlsConfig"))
    CreateIntegrationInput.struct_class = Types::CreateIntegrationInput

    CreateIntegrationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateIntegrationRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    CreateIntegrationRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    CreateIntegrationRequest.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationRequest.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    CreateIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateIntegrationRequest.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    CreateIntegrationRequest.add_member(:integration_subtype, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "integrationSubtype"))
    CreateIntegrationRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    CreateIntegrationRequest.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    CreateIntegrationRequest.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    CreateIntegrationRequest.add_member(:payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "payloadFormatVersion"))
    CreateIntegrationRequest.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    CreateIntegrationRequest.add_member(:response_parameters, Shapes::ShapeRef.new(shape: ResponseParameters, location_name: "responseParameters"))
    CreateIntegrationRequest.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    CreateIntegrationRequest.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationRequest.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And30000, location_name: "timeoutInMillis"))
    CreateIntegrationRequest.add_member(:tls_config, Shapes::ShapeRef.new(shape: TlsConfigInput, location_name: "tlsConfig"))
    CreateIntegrationRequest.struct_class = Types::CreateIntegrationRequest

    CreateIntegrationResponseInput.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationResponseInput.add_member(:integration_response_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "integrationResponseKey"))
    CreateIntegrationResponseInput.add_member(:response_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "responseParameters"))
    CreateIntegrationResponseInput.add_member(:response_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "responseTemplates"))
    CreateIntegrationResponseInput.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationResponseInput.struct_class = Types::CreateIntegrationResponseInput

    CreateIntegrationResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateIntegrationResponseRequest.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationResponseRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    CreateIntegrationResponseRequest.add_member(:integration_response_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "integrationResponseKey"))
    CreateIntegrationResponseRequest.add_member(:response_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "responseParameters"))
    CreateIntegrationResponseRequest.add_member(:response_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "responseTemplates"))
    CreateIntegrationResponseRequest.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationResponseRequest.struct_class = Types::CreateIntegrationResponseRequest

    CreateIntegrationResponseResponse.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationResponseResponse.add_member(:integration_response_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationResponseId"))
    CreateIntegrationResponseResponse.add_member(:integration_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "integrationResponseKey"))
    CreateIntegrationResponseResponse.add_member(:response_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "responseParameters"))
    CreateIntegrationResponseResponse.add_member(:response_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "responseTemplates"))
    CreateIntegrationResponseResponse.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationResponseResponse.struct_class = Types::CreateIntegrationResponseResponse

    CreateIntegrationResult.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    CreateIntegrationResult.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    CreateIntegrationResult.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    CreateIntegrationResult.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationResult.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    CreateIntegrationResult.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateIntegrationResult.add_member(:integration_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationId"))
    CreateIntegrationResult.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    CreateIntegrationResult.add_member(:integration_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "integrationResponseSelectionExpression"))
    CreateIntegrationResult.add_member(:integration_subtype, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "integrationSubtype"))
    CreateIntegrationResult.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    CreateIntegrationResult.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    CreateIntegrationResult.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    CreateIntegrationResult.add_member(:payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "payloadFormatVersion"))
    CreateIntegrationResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    CreateIntegrationResult.add_member(:response_parameters, Shapes::ShapeRef.new(shape: ResponseParameters, location_name: "responseParameters"))
    CreateIntegrationResult.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    CreateIntegrationResult.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationResult.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And30000, location_name: "timeoutInMillis"))
    CreateIntegrationResult.add_member(:tls_config, Shapes::ShapeRef.new(shape: TlsConfig, location_name: "tlsConfig"))
    CreateIntegrationResult.struct_class = Types::CreateIntegrationResult

    CreateModelInput.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    CreateModelInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateModelInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateModelInput.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, required: true, location_name: "schema"))
    CreateModelInput.struct_class = Types::CreateModelInput

    CreateModelRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateModelRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    CreateModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateModelRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateModelRequest.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, required: true, location_name: "schema"))
    CreateModelRequest.struct_class = Types::CreateModelRequest

    CreateModelResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    CreateModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateModelResponse.add_member(:model_id, Shapes::ShapeRef.new(shape: Id, location_name: "modelId"))
    CreateModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    CreateModelResponse.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, location_name: "schema"))
    CreateModelResponse.struct_class = Types::CreateModelResponse

    CreatePortalProductRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreatePortalProductRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, required: true, location_name: "displayName"))
    CreatePortalProductRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalProductRequest.struct_class = Types::CreatePortalProductRequest

    CreatePortalProductRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreatePortalProductRequestContent.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, required: true, location_name: "displayName"))
    CreatePortalProductRequestContent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalProductRequestContent.struct_class = Types::CreatePortalProductRequestContent

    CreatePortalProductResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreatePortalProductResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "displayName"))
    CreatePortalProductResponse.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    CreatePortalProductResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    CreatePortalProductResponse.add_member(:portal_product_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "portalProductArn"))
    CreatePortalProductResponse.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "portalProductId"))
    CreatePortalProductResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalProductResponse.struct_class = Types::CreatePortalProductResponse

    CreatePortalProductResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreatePortalProductResponseContent.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, required: true, location_name: "displayName"))
    CreatePortalProductResponseContent.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    CreatePortalProductResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    CreatePortalProductResponseContent.add_member(:portal_product_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "portalProductArn"))
    CreatePortalProductResponseContent.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalProductId"))
    CreatePortalProductResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalProductResponseContent.struct_class = Types::CreatePortalProductResponseContent

    CreatePortalRequest.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    CreatePortalRequest.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationRequest, required: true, location_name: "endpointConfiguration"))
    CreatePortalRequest.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, location_name: "includedPortalProductArns"))
    CreatePortalRequest.add_member(:logo_uri, Shapes::ShapeRef.new(shape: __stringMin0Max1092, location_name: "logoUri"))
    CreatePortalRequest.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    CreatePortalRequest.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    CreatePortalRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalRequest.struct_class = Types::CreatePortalRequest

    CreatePortalRequestContent.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    CreatePortalRequestContent.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationRequest, required: true, location_name: "endpointConfiguration"))
    CreatePortalRequestContent.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, location_name: "includedPortalProductArns"))
    CreatePortalRequestContent.add_member(:logo_uri, Shapes::ShapeRef.new(shape: __stringMin0Max1092, location_name: "logoUri"))
    CreatePortalRequestContent.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    CreatePortalRequestContent.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    CreatePortalRequestContent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalRequestContent.struct_class = Types::CreatePortalRequestContent

    CreatePortalResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    CreatePortalResponse.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, location_name: "endpointConfiguration"))
    CreatePortalResponse.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, location_name: "includedPortalProductArns"))
    CreatePortalResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    CreatePortalResponse.add_member(:last_published, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastPublished"))
    CreatePortalResponse.add_member(:last_published_description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "lastPublishedDescription"))
    CreatePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "portalArn"))
    CreatePortalResponse.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, location_name: "portalContent"))
    CreatePortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "portalId"))
    CreatePortalResponse.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    CreatePortalResponse.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    CreatePortalResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    CreatePortalResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalResponse.struct_class = Types::CreatePortalResponse

    CreatePortalResponseContent.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    CreatePortalResponseContent.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, required: true, location_name: "endpointConfiguration"))
    CreatePortalResponseContent.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, required: true, location_name: "includedPortalProductArns"))
    CreatePortalResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    CreatePortalResponseContent.add_member(:last_published, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastPublished"))
    CreatePortalResponseContent.add_member(:last_published_description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "lastPublishedDescription"))
    CreatePortalResponseContent.add_member(:portal_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "portalArn"))
    CreatePortalResponseContent.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    CreatePortalResponseContent.add_member(:portal_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalId"))
    CreatePortalResponseContent.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    CreatePortalResponseContent.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    CreatePortalResponseContent.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    CreatePortalResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePortalResponseContent.struct_class = Types::CreatePortalResponseContent

    CreateProductPageRequest.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, required: true, location_name: "displayContent"))
    CreateProductPageRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    CreateProductPageRequest.struct_class = Types::CreateProductPageRequest

    CreateProductPageRequestContent.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, required: true, location_name: "displayContent"))
    CreateProductPageRequestContent.struct_class = Types::CreateProductPageRequestContent

    CreateProductPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    CreateProductPageResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    CreateProductPageResponse.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "productPageArn"))
    CreateProductPageResponse.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "productPageId"))
    CreateProductPageResponse.struct_class = Types::CreateProductPageResponse

    CreateProductPageResponseContent.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    CreateProductPageResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    CreateProductPageResponseContent.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "productPageArn"))
    CreateProductPageResponseContent.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "productPageId"))
    CreateProductPageResponseContent.struct_class = Types::CreateProductPageResponseContent

    CreateProductRestEndpointPageRequest.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContent, location_name: "displayContent"))
    CreateProductRestEndpointPageRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    CreateProductRestEndpointPageRequest.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, required: true, location_name: "restEndpointIdentifier"))
    CreateProductRestEndpointPageRequest.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    CreateProductRestEndpointPageRequest.struct_class = Types::CreateProductRestEndpointPageRequest

    CreateProductRestEndpointPageRequestContent.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContent, location_name: "displayContent"))
    CreateProductRestEndpointPageRequestContent.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, required: true, location_name: "restEndpointIdentifier"))
    CreateProductRestEndpointPageRequestContent.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    CreateProductRestEndpointPageRequestContent.struct_class = Types::CreateProductRestEndpointPageRequestContent

    CreateProductRestEndpointPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContentResponse, location_name: "displayContent"))
    CreateProductRestEndpointPageResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    CreateProductRestEndpointPageResponse.add_member(:product_rest_endpoint_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "productRestEndpointPageArn"))
    CreateProductRestEndpointPageResponse.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "productRestEndpointPageId"))
    CreateProductRestEndpointPageResponse.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, location_name: "restEndpointIdentifier"))
    CreateProductRestEndpointPageResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CreateProductRestEndpointPageResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    CreateProductRestEndpointPageResponse.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    CreateProductRestEndpointPageResponse.struct_class = Types::CreateProductRestEndpointPageResponse

    CreateProductRestEndpointPageResponseContent.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContentResponse, required: true, location_name: "displayContent"))
    CreateProductRestEndpointPageResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    CreateProductRestEndpointPageResponseContent.add_member(:product_rest_endpoint_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "productRestEndpointPageArn"))
    CreateProductRestEndpointPageResponseContent.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "productRestEndpointPageId"))
    CreateProductRestEndpointPageResponseContent.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, required: true, location_name: "restEndpointIdentifier"))
    CreateProductRestEndpointPageResponseContent.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    CreateProductRestEndpointPageResponseContent.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    CreateProductRestEndpointPageResponseContent.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, required: true, location_name: "tryItState"))
    CreateProductRestEndpointPageResponseContent.struct_class = Types::CreateProductRestEndpointPageResponseContent

    CreateRouteInput.add_member(:api_key_required, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiKeyRequired"))
    CreateRouteInput.add_member(:authorization_scopes, Shapes::ShapeRef.new(shape: AuthorizationScopes, location_name: "authorizationScopes"))
    CreateRouteInput.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, location_name: "authorizationType"))
    CreateRouteInput.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    CreateRouteInput.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    CreateRouteInput.add_member(:operation_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "operationName"))
    CreateRouteInput.add_member(:request_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "requestModels"))
    CreateRouteInput.add_member(:request_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "requestParameters"))
    CreateRouteInput.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "routeKey"))
    CreateRouteInput.add_member(:route_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeResponseSelectionExpression"))
    CreateRouteInput.add_member(:target, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "target"))
    CreateRouteInput.struct_class = Types::CreateRouteInput

    CreateRouteRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateRouteRequest.add_member(:api_key_required, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiKeyRequired"))
    CreateRouteRequest.add_member(:authorization_scopes, Shapes::ShapeRef.new(shape: AuthorizationScopes, location_name: "authorizationScopes"))
    CreateRouteRequest.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, location_name: "authorizationType"))
    CreateRouteRequest.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    CreateRouteRequest.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    CreateRouteRequest.add_member(:operation_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "operationName"))
    CreateRouteRequest.add_member(:request_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "requestModels"))
    CreateRouteRequest.add_member(:request_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "requestParameters"))
    CreateRouteRequest.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "routeKey"))
    CreateRouteRequest.add_member(:route_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeResponseSelectionExpression"))
    CreateRouteRequest.add_member(:target, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "target"))
    CreateRouteRequest.struct_class = Types::CreateRouteRequest

    CreateRouteResponseInput.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    CreateRouteResponseInput.add_member(:response_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "responseModels"))
    CreateRouteResponseInput.add_member(:response_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "responseParameters"))
    CreateRouteResponseInput.add_member(:route_response_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "routeResponseKey"))
    CreateRouteResponseInput.struct_class = Types::CreateRouteResponseInput

    CreateRouteResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateRouteResponseRequest.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    CreateRouteResponseRequest.add_member(:response_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "responseModels"))
    CreateRouteResponseRequest.add_member(:response_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "responseParameters"))
    CreateRouteResponseRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    CreateRouteResponseRequest.add_member(:route_response_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "routeResponseKey"))
    CreateRouteResponseRequest.struct_class = Types::CreateRouteResponseRequest

    CreateRouteResponseResponse.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    CreateRouteResponseResponse.add_member(:response_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "responseModels"))
    CreateRouteResponseResponse.add_member(:response_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "responseParameters"))
    CreateRouteResponseResponse.add_member(:route_response_id, Shapes::ShapeRef.new(shape: Id, location_name: "routeResponseId"))
    CreateRouteResponseResponse.add_member(:route_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeResponseKey"))
    CreateRouteResponseResponse.struct_class = Types::CreateRouteResponseResponse

    CreateRouteResult.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    CreateRouteResult.add_member(:api_key_required, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiKeyRequired"))
    CreateRouteResult.add_member(:authorization_scopes, Shapes::ShapeRef.new(shape: AuthorizationScopes, location_name: "authorizationScopes"))
    CreateRouteResult.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, location_name: "authorizationType"))
    CreateRouteResult.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    CreateRouteResult.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    CreateRouteResult.add_member(:operation_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "operationName"))
    CreateRouteResult.add_member(:request_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "requestModels"))
    CreateRouteResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "requestParameters"))
    CreateRouteResult.add_member(:route_id, Shapes::ShapeRef.new(shape: Id, location_name: "routeId"))
    CreateRouteResult.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    CreateRouteResult.add_member(:route_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeResponseSelectionExpression"))
    CreateRouteResult.add_member(:target, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "target"))
    CreateRouteResult.struct_class = Types::CreateRouteResult

    CreateRoutingRuleRequest.add_member(:actions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleAction, required: true, location_name: "actions"))
    CreateRoutingRuleRequest.add_member(:conditions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleCondition, required: true, location_name: "conditions"))
    CreateRoutingRuleRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    CreateRoutingRuleRequest.add_member(:domain_name_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "domainNameId"))
    CreateRoutingRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: RoutingRulePriority, required: true, location_name: "priority"))
    CreateRoutingRuleRequest.struct_class = Types::CreateRoutingRuleRequest

    CreateRoutingRuleResponse.add_member(:actions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleAction, location_name: "actions"))
    CreateRoutingRuleResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleCondition, location_name: "conditions"))
    CreateRoutingRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: RoutingRulePriority, location_name: "priority"))
    CreateRoutingRuleResponse.add_member(:routing_rule_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "routingRuleArn"))
    CreateRoutingRuleResponse.add_member(:routing_rule_id, Shapes::ShapeRef.new(shape: Id, location_name: "routingRuleId"))
    CreateRoutingRuleResponse.struct_class = Types::CreateRoutingRuleResponse

    CreateStageInput.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    CreateStageInput.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeploy"))
    CreateStageInput.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    CreateStageInput.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    CreateStageInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    CreateStageInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateStageInput.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    CreateStageInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stageName"))
    CreateStageInput.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    CreateStageInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStageInput.struct_class = Types::CreateStageInput

    CreateStageRequest.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    CreateStageRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateStageRequest.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeploy"))
    CreateStageRequest.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    CreateStageRequest.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    CreateStageRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    CreateStageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateStageRequest.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    CreateStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stageName"))
    CreateStageRequest.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    CreateStageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStageRequest.struct_class = Types::CreateStageRequest

    CreateStageResponse.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    CreateStageResponse.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    CreateStageResponse.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeploy"))
    CreateStageResponse.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    CreateStageResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    CreateStageResponse.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    CreateStageResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    CreateStageResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateStageResponse.add_member(:last_deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "lastDeploymentStatusMessage"))
    CreateStageResponse.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdatedDate"))
    CreateStageResponse.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    CreateStageResponse.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    CreateStageResponse.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    CreateStageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStageResponse.struct_class = Types::CreateStageResponse

    CreateVpcLinkInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateVpcLinkInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    CreateVpcLinkInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "subnetIds"))
    CreateVpcLinkInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateVpcLinkInput.struct_class = Types::CreateVpcLinkInput

    CreateVpcLinkRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateVpcLinkRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    CreateVpcLinkRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "subnetIds"))
    CreateVpcLinkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateVpcLinkRequest.struct_class = Types::CreateVpcLinkRequest

    CreateVpcLinkResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    CreateVpcLinkResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    CreateVpcLinkResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    CreateVpcLinkResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    CreateVpcLinkResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateVpcLinkResponse.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: Id, location_name: "vpcLinkId"))
    CreateVpcLinkResponse.add_member(:vpc_link_status, Shapes::ShapeRef.new(shape: VpcLinkStatus, location_name: "vpcLinkStatus"))
    CreateVpcLinkResponse.add_member(:vpc_link_status_message, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "vpcLinkStatusMessage"))
    CreateVpcLinkResponse.add_member(:vpc_link_version, Shapes::ShapeRef.new(shape: VpcLinkVersion, location_name: "vpcLinkVersion"))
    CreateVpcLinkResponse.struct_class = Types::CreateVpcLinkResponse

    CustomColors.add_member(:accent_color, Shapes::ShapeRef.new(shape: __stringMin1Max16, required: true, location_name: "accentColor"))
    CustomColors.add_member(:background_color, Shapes::ShapeRef.new(shape: __stringMin1Max16, required: true, location_name: "backgroundColor"))
    CustomColors.add_member(:error_validation_color, Shapes::ShapeRef.new(shape: __stringMin1Max16, required: true, location_name: "errorValidationColor"))
    CustomColors.add_member(:header_color, Shapes::ShapeRef.new(shape: __stringMin1Max16, required: true, location_name: "headerColor"))
    CustomColors.add_member(:navigation_color, Shapes::ShapeRef.new(shape: __stringMin1Max16, required: true, location_name: "navigationColor"))
    CustomColors.add_member(:text_color, Shapes::ShapeRef.new(shape: __stringMin1Max16, required: true, location_name: "textColor"))
    CustomColors.struct_class = Types::CustomColors

    DeleteAccessLogSettingsRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteAccessLogSettingsRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    DeleteAccessLogSettingsRequest.struct_class = Types::DeleteAccessLogSettingsRequest

    DeleteApiMappingRequest.add_member(:api_mapping_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiMappingId"))
    DeleteApiMappingRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    DeleteApiMappingRequest.struct_class = Types::DeleteApiMappingRequest

    DeleteApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteApiRequest.struct_class = Types::DeleteApiRequest

    DeleteAuthorizerRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteAuthorizerRequest.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "authorizerId"))
    DeleteAuthorizerRequest.struct_class = Types::DeleteAuthorizerRequest

    DeleteCorsConfigurationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteCorsConfigurationRequest.struct_class = Types::DeleteCorsConfigurationRequest

    DeleteDeploymentRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deploymentId"))
    DeleteDeploymentRequest.struct_class = Types::DeleteDeploymentRequest

    DeleteDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    DeleteDomainNameRequest.struct_class = Types::DeleteDomainNameRequest

    DeleteIntegrationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteIntegrationRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    DeleteIntegrationRequest.struct_class = Types::DeleteIntegrationRequest

    DeleteIntegrationResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteIntegrationResponseRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    DeleteIntegrationResponseRequest.add_member(:integration_response_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationResponseId"))
    DeleteIntegrationResponseRequest.struct_class = Types::DeleteIntegrationResponseRequest

    DeleteModelRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "modelId"))
    DeleteModelRequest.struct_class = Types::DeleteModelRequest

    DeletePortalProductRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    DeletePortalProductRequest.struct_class = Types::DeletePortalProductRequest

    DeletePortalProductSharingPolicyRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    DeletePortalProductSharingPolicyRequest.struct_class = Types::DeletePortalProductSharingPolicyRequest

    DeletePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalId"))
    DeletePortalRequest.struct_class = Types::DeletePortalRequest

    DeleteProductPageRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    DeleteProductPageRequest.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "productPageId"))
    DeleteProductPageRequest.struct_class = Types::DeleteProductPageRequest

    DeleteProductRestEndpointPageRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    DeleteProductRestEndpointPageRequest.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "productRestEndpointPageId"))
    DeleteProductRestEndpointPageRequest.struct_class = Types::DeleteProductRestEndpointPageRequest

    DeleteRouteRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteRouteRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    DeleteRouteRequest.struct_class = Types::DeleteRouteRequest

    DeleteRouteRequestParameterRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteRouteRequestParameterRequest.add_member(:request_parameter_key, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "requestParameterKey"))
    DeleteRouteRequestParameterRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    DeleteRouteRequestParameterRequest.struct_class = Types::DeleteRouteRequestParameterRequest

    DeleteRouteResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteRouteResponseRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    DeleteRouteResponseRequest.add_member(:route_response_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeResponseId"))
    DeleteRouteResponseRequest.struct_class = Types::DeleteRouteResponseRequest

    DeleteRouteSettingsRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteRouteSettingsRequest.add_member(:route_key, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeKey"))
    DeleteRouteSettingsRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    DeleteRouteSettingsRequest.struct_class = Types::DeleteRouteSettingsRequest

    DeleteRoutingRuleRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    DeleteRoutingRuleRequest.add_member(:domain_name_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "domainNameId"))
    DeleteRoutingRuleRequest.add_member(:routing_rule_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routingRuleId"))
    DeleteRoutingRuleRequest.struct_class = Types::DeleteRoutingRuleRequest

    DeleteStageRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    DeleteStageRequest.struct_class = Types::DeleteStageRequest

    DeleteVpcLinkRequest.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "vpcLinkId"))
    DeleteVpcLinkRequest.struct_class = Types::DeleteVpcLinkRequest

    DeleteVpcLinkResponse.struct_class = Types::DeleteVpcLinkResponse

    Deployment.add_member(:auto_deployed, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeployed"))
    Deployment.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    Deployment.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    Deployment.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    Deployment.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "deploymentStatusMessage"))
    Deployment.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Deployment.struct_class = Types::Deployment

    Deployments.add_member(:items, Shapes::ShapeRef.new(shape: __listOfDeployment, location_name: "items"))
    Deployments.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Deployments.struct_class = Types::Deployments

    DisablePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalId"))
    DisablePortalRequest.struct_class = Types::DisablePortalRequest

    DisplayContent.add_member(:body, Shapes::ShapeRef.new(shape: __stringMin1Max32768, required: true, location_name: "body"))
    DisplayContent.add_member(:title, Shapes::ShapeRef.new(shape: __stringMin1Max255, required: true, location_name: "title"))
    DisplayContent.struct_class = Types::DisplayContent

    DisplayContentOverrides.add_member(:body, Shapes::ShapeRef.new(shape: __stringMin1Max32768, location_name: "body"))
    DisplayContentOverrides.add_member(:endpoint, Shapes::ShapeRef.new(shape: __stringMin1Max1024, location_name: "endpoint"))
    DisplayContentOverrides.add_member(:operation_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "operationName"))
    DisplayContentOverrides.struct_class = Types::DisplayContentOverrides

    DisplayOrder.add_member(:contents, Shapes::ShapeRef.new(shape: __listOfSection, location_name: "contents"))
    DisplayOrder.add_member(:overview_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "overviewPageArn"))
    DisplayOrder.add_member(:product_page_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, location_name: "productPageArns"))
    DisplayOrder.struct_class = Types::DisplayOrder

    DomainName.add_member(:api_mapping_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiMappingSelectionExpression"))
    DomainName.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, required: true, location_name: "domainName"))
    DomainName.add_member(:domain_name_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "domainNameArn"))
    DomainName.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    DomainName.add_member(:mutual_tls_authentication, Shapes::ShapeRef.new(shape: MutualTlsAuthentication, location_name: "mutualTlsAuthentication"))
    DomainName.add_member(:routing_mode, Shapes::ShapeRef.new(shape: RoutingMode, location_name: "routingMode"))
    DomainName.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DomainName.struct_class = Types::DomainName

    DomainNameConfiguration.add_member(:api_gateway_domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "apiGatewayDomainName"))
    DomainNameConfiguration.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "certificateArn"))
    DomainNameConfiguration.add_member(:certificate_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "certificateName"))
    DomainNameConfiguration.add_member(:certificate_upload_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "certificateUploadDate"))
    DomainNameConfiguration.add_member(:domain_name_status, Shapes::ShapeRef.new(shape: DomainNameStatus, location_name: "domainNameStatus"))
    DomainNameConfiguration.add_member(:domain_name_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "domainNameStatusMessage"))
    DomainNameConfiguration.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "endpointType"))
    DomainNameConfiguration.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: __string, location_name: "hostedZoneId"))
    DomainNameConfiguration.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    DomainNameConfiguration.add_member(:security_policy, Shapes::ShapeRef.new(shape: SecurityPolicy, location_name: "securityPolicy"))
    DomainNameConfiguration.add_member(:ownership_verification_certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ownershipVerificationCertificateArn"))
    DomainNameConfiguration.struct_class = Types::DomainNameConfiguration

    DomainNameConfigurations.member = Shapes::ShapeRef.new(shape: DomainNameConfiguration)

    DomainNames.add_member(:items, Shapes::ShapeRef.new(shape: __listOfDomainName, location_name: "items"))
    DomainNames.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DomainNames.struct_class = Types::DomainNames

    EndpointConfigurationRequest.add_member(:acm_managed, Shapes::ShapeRef.new(shape: ACMManaged, location_name: "acmManaged"))
    EndpointConfigurationRequest.add_member(:none, Shapes::ShapeRef.new(shape: None, location_name: "none"))
    EndpointConfigurationRequest.struct_class = Types::EndpointConfigurationRequest

    EndpointConfigurationResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: __stringMin10Max2048, location_name: "certificateArn"))
    EndpointConfigurationResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: __stringMin3Max256, location_name: "domainName"))
    EndpointConfigurationResponse.add_member(:portal_default_domain_name, Shapes::ShapeRef.new(shape: __stringMin3Max256, required: true, location_name: "portalDefaultDomainName"))
    EndpointConfigurationResponse.add_member(:portal_domain_hosted_zone_id, Shapes::ShapeRef.new(shape: __stringMin1Max64, required: true, location_name: "portalDomainHostedZoneId"))
    EndpointConfigurationResponse.struct_class = Types::EndpointConfigurationResponse

    EndpointDisplayContent.add_member(:none, Shapes::ShapeRef.new(shape: None, location_name: "none"))
    EndpointDisplayContent.add_member(:overrides, Shapes::ShapeRef.new(shape: DisplayContentOverrides, location_name: "overrides"))
    EndpointDisplayContent.struct_class = Types::EndpointDisplayContent

    EndpointDisplayContentResponse.add_member(:body, Shapes::ShapeRef.new(shape: __stringMin1Max32768, location_name: "body"))
    EndpointDisplayContentResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: __stringMin1Max1024, required: true, location_name: "endpoint"))
    EndpointDisplayContentResponse.add_member(:operation_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "operationName"))
    EndpointDisplayContentResponse.struct_class = Types::EndpointDisplayContentResponse

    ExportApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    ExportApiRequest.add_member(:export_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "exportVersion"))
    ExportApiRequest.add_member(:include_extensions, Shapes::ShapeRef.new(shape: __boolean, location: "querystring", location_name: "includeExtensions"))
    ExportApiRequest.add_member(:output_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "outputType", metadata: {"enum" => ["YAML", "JSON"]}))
    ExportApiRequest.add_member(:specification, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "specification", metadata: {"enum" => ["OAS30"]}))
    ExportApiRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "stageName"))
    ExportApiRequest.struct_class = Types::ExportApiRequest

    ExportApiResponse.add_member(:body, Shapes::ShapeRef.new(shape: ExportedApi, location_name: "body"))
    ExportApiResponse.struct_class = Types::ExportApiResponse
    ExportApiResponse[:payload] = :body
    ExportApiResponse[:payload_member] = ExportApiResponse.member(:body)

    GetApiMappingRequest.add_member(:api_mapping_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiMappingId"))
    GetApiMappingRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    GetApiMappingRequest.struct_class = Types::GetApiMappingRequest

    GetApiMappingResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    GetApiMappingResponse.add_member(:api_mapping_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiMappingId"))
    GetApiMappingResponse.add_member(:api_mapping_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "apiMappingKey"))
    GetApiMappingResponse.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stage"))
    GetApiMappingResponse.struct_class = Types::GetApiMappingResponse

    GetApiMappingsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    GetApiMappingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetApiMappingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetApiMappingsRequest.struct_class = Types::GetApiMappingsRequest

    GetApiMappingsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfApiMapping, location_name: "items"))
    GetApiMappingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetApiMappingsResponse.struct_class = Types::GetApiMappingsResponse

    GetApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetApiRequest.struct_class = Types::GetApiRequest

    GetApiResponse.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    GetApiResponse.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    GetApiResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    GetApiResponse.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    GetApiResponse.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    GetApiResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    GetApiResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    GetApiResponse.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    GetApiResponse.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    GetApiResponse.add_member(:import_info, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "importInfo"))
    GetApiResponse.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    GetApiResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    GetApiResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "protocolType"))
    GetApiResponse.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    GetApiResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetApiResponse.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    GetApiResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "warnings"))
    GetApiResponse.struct_class = Types::GetApiResponse

    GetApisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetApisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetApisRequest.struct_class = Types::GetApisRequest

    GetApisResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfApi, location_name: "items"))
    GetApisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetApisResponse.struct_class = Types::GetApisResponse

    GetAuthorizerRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetAuthorizerRequest.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "authorizerId"))
    GetAuthorizerRequest.struct_class = Types::GetAuthorizerRequest

    GetAuthorizerResponse.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    GetAuthorizerResponse.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    GetAuthorizerResponse.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    GetAuthorizerResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    GetAuthorizerResponse.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    GetAuthorizerResponse.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    GetAuthorizerResponse.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    GetAuthorizerResponse.add_member(:jwt_configuration, Shapes::ShapeRef.new(shape: JWTConfiguration, location_name: "jwtConfiguration"))
    GetAuthorizerResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    GetAuthorizerResponse.add_member(:authorizer_payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "authorizerPayloadFormatVersion"))
    GetAuthorizerResponse.add_member(:enable_simple_responses, Shapes::ShapeRef.new(shape: __boolean, location_name: "enableSimpleResponses"))
    GetAuthorizerResponse.struct_class = Types::GetAuthorizerResponse

    GetAuthorizersRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetAuthorizersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetAuthorizersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetAuthorizersRequest.struct_class = Types::GetAuthorizersRequest

    GetAuthorizersResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfAuthorizer, location_name: "items"))
    GetAuthorizersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAuthorizersResponse.struct_class = Types::GetAuthorizersResponse

    GetDeploymentRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deploymentId"))
    GetDeploymentRequest.struct_class = Types::GetDeploymentRequest

    GetDeploymentResponse.add_member(:auto_deployed, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeployed"))
    GetDeploymentResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    GetDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    GetDeploymentResponse.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    GetDeploymentResponse.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "deploymentStatusMessage"))
    GetDeploymentResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    GetDeploymentResponse.struct_class = Types::GetDeploymentResponse

    GetDeploymentsRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetDeploymentsRequest.struct_class = Types::GetDeploymentsRequest

    GetDeploymentsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfDeployment, location_name: "items"))
    GetDeploymentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDeploymentsResponse.struct_class = Types::GetDeploymentsResponse

    GetDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    GetDomainNameRequest.struct_class = Types::GetDomainNameRequest

    GetDomainNameResponse.add_member(:api_mapping_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiMappingSelectionExpression"))
    GetDomainNameResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, location_name: "domainName"))
    GetDomainNameResponse.add_member(:domain_name_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "domainNameArn"))
    GetDomainNameResponse.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    GetDomainNameResponse.add_member(:mutual_tls_authentication, Shapes::ShapeRef.new(shape: MutualTlsAuthentication, location_name: "mutualTlsAuthentication"))
    GetDomainNameResponse.add_member(:routing_mode, Shapes::ShapeRef.new(shape: RoutingMode, location_name: "routingMode"))
    GetDomainNameResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetDomainNameResponse.struct_class = Types::GetDomainNameResponse

    GetDomainNamesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetDomainNamesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetDomainNamesRequest.struct_class = Types::GetDomainNamesRequest

    GetDomainNamesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfDomainName, location_name: "items"))
    GetDomainNamesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDomainNamesResponse.struct_class = Types::GetDomainNamesResponse

    GetIntegrationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetIntegrationRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    GetIntegrationRequest.struct_class = Types::GetIntegrationRequest

    GetIntegrationResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetIntegrationResponseRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    GetIntegrationResponseRequest.add_member(:integration_response_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationResponseId"))
    GetIntegrationResponseRequest.struct_class = Types::GetIntegrationResponseRequest

    GetIntegrationResponseResponse.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    GetIntegrationResponseResponse.add_member(:integration_response_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationResponseId"))
    GetIntegrationResponseResponse.add_member(:integration_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "integrationResponseKey"))
    GetIntegrationResponseResponse.add_member(:response_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "responseParameters"))
    GetIntegrationResponseResponse.add_member(:response_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "responseTemplates"))
    GetIntegrationResponseResponse.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    GetIntegrationResponseResponse.struct_class = Types::GetIntegrationResponseResponse

    GetIntegrationResponsesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetIntegrationResponsesRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    GetIntegrationResponsesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetIntegrationResponsesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetIntegrationResponsesRequest.struct_class = Types::GetIntegrationResponsesRequest

    GetIntegrationResponsesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfIntegrationResponse, location_name: "items"))
    GetIntegrationResponsesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetIntegrationResponsesResponse.struct_class = Types::GetIntegrationResponsesResponse

    GetIntegrationResult.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    GetIntegrationResult.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    GetIntegrationResult.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    GetIntegrationResult.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    GetIntegrationResult.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    GetIntegrationResult.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    GetIntegrationResult.add_member(:integration_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationId"))
    GetIntegrationResult.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    GetIntegrationResult.add_member(:integration_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "integrationResponseSelectionExpression"))
    GetIntegrationResult.add_member(:integration_subtype, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "integrationSubtype"))
    GetIntegrationResult.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    GetIntegrationResult.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    GetIntegrationResult.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    GetIntegrationResult.add_member(:payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "payloadFormatVersion"))
    GetIntegrationResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    GetIntegrationResult.add_member(:response_parameters, Shapes::ShapeRef.new(shape: ResponseParameters, location_name: "responseParameters"))
    GetIntegrationResult.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    GetIntegrationResult.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    GetIntegrationResult.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And30000, location_name: "timeoutInMillis"))
    GetIntegrationResult.add_member(:tls_config, Shapes::ShapeRef.new(shape: TlsConfig, location_name: "tlsConfig"))
    GetIntegrationResult.struct_class = Types::GetIntegrationResult

    GetIntegrationsRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetIntegrationsRequest.struct_class = Types::GetIntegrationsRequest

    GetIntegrationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfIntegration, location_name: "items"))
    GetIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetIntegrationsResponse.struct_class = Types::GetIntegrationsResponse

    GetModelRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "modelId"))
    GetModelRequest.struct_class = Types::GetModelRequest

    GetModelResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    GetModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    GetModelResponse.add_member(:model_id, Shapes::ShapeRef.new(shape: Id, location_name: "modelId"))
    GetModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    GetModelResponse.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, location_name: "schema"))
    GetModelResponse.struct_class = Types::GetModelResponse

    GetModelTemplateRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetModelTemplateRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "modelId"))
    GetModelTemplateRequest.struct_class = Types::GetModelTemplateRequest

    GetModelTemplateResponse.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    GetModelTemplateResponse.struct_class = Types::GetModelTemplateResponse

    GetModelsRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetModelsRequest.struct_class = Types::GetModelsRequest

    GetModelsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfModel, location_name: "items"))
    GetModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetModelsResponse.struct_class = Types::GetModelsResponse

    GetPortalProductRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    GetPortalProductRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceOwnerAccountId"))
    GetPortalProductRequest.struct_class = Types::GetPortalProductRequest

    GetPortalProductResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetPortalProductResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "displayName"))
    GetPortalProductResponse.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    GetPortalProductResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    GetPortalProductResponse.add_member(:portal_product_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "portalProductArn"))
    GetPortalProductResponse.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "portalProductId"))
    GetPortalProductResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetPortalProductResponse.struct_class = Types::GetPortalProductResponse

    GetPortalProductResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, required: true, location_name: "description"))
    GetPortalProductResponseContent.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, required: true, location_name: "displayName"))
    GetPortalProductResponseContent.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, required: true, location_name: "displayOrder"))
    GetPortalProductResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    GetPortalProductResponseContent.add_member(:portal_product_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "portalProductArn"))
    GetPortalProductResponseContent.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalProductId"))
    GetPortalProductResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetPortalProductResponseContent.struct_class = Types::GetPortalProductResponseContent

    GetPortalProductSharingPolicyRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    GetPortalProductSharingPolicyRequest.struct_class = Types::GetPortalProductSharingPolicyRequest

    GetPortalProductSharingPolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: __stringMin1Max307200, location_name: "policyDocument"))
    GetPortalProductSharingPolicyResponse.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "portalProductId"))
    GetPortalProductSharingPolicyResponse.struct_class = Types::GetPortalProductSharingPolicyResponse

    GetPortalProductSharingPolicyResponseContent.add_member(:policy_document, Shapes::ShapeRef.new(shape: __stringMin1Max307200, required: true, location_name: "policyDocument"))
    GetPortalProductSharingPolicyResponseContent.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalProductId"))
    GetPortalProductSharingPolicyResponseContent.struct_class = Types::GetPortalProductSharingPolicyResponseContent

    GetPortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalId"))
    GetPortalRequest.struct_class = Types::GetPortalRequest

    GetPortalResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    GetPortalResponse.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, location_name: "endpointConfiguration"))
    GetPortalResponse.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, location_name: "includedPortalProductArns"))
    GetPortalResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    GetPortalResponse.add_member(:last_published, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastPublished"))
    GetPortalResponse.add_member(:last_published_description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "lastPublishedDescription"))
    GetPortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "portalArn"))
    GetPortalResponse.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, location_name: "portalContent"))
    GetPortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "portalId"))
    GetPortalResponse.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "preview"))
    GetPortalResponse.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    GetPortalResponse.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    GetPortalResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    GetPortalResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetPortalResponse.struct_class = Types::GetPortalResponse

    GetPortalResponseContent.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    GetPortalResponseContent.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, required: true, location_name: "endpointConfiguration"))
    GetPortalResponseContent.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, required: true, location_name: "includedPortalProductArns"))
    GetPortalResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    GetPortalResponseContent.add_member(:last_published, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastPublished"))
    GetPortalResponseContent.add_member(:last_published_description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "lastPublishedDescription"))
    GetPortalResponseContent.add_member(:portal_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "portalArn"))
    GetPortalResponseContent.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    GetPortalResponseContent.add_member(:portal_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalId"))
    GetPortalResponseContent.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "preview"))
    GetPortalResponseContent.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    GetPortalResponseContent.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    GetPortalResponseContent.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    GetPortalResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetPortalResponseContent.struct_class = Types::GetPortalResponseContent

    GetProductPageRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    GetProductPageRequest.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "productPageId"))
    GetProductPageRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceOwnerAccountId"))
    GetProductPageRequest.struct_class = Types::GetProductPageRequest

    GetProductPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    GetProductPageResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    GetProductPageResponse.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "productPageArn"))
    GetProductPageResponse.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "productPageId"))
    GetProductPageResponse.struct_class = Types::GetProductPageResponse

    GetProductPageResponseContent.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, required: true, location_name: "displayContent"))
    GetProductPageResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    GetProductPageResponseContent.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "productPageArn"))
    GetProductPageResponseContent.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "productPageId"))
    GetProductPageResponseContent.struct_class = Types::GetProductPageResponseContent

    GetProductRestEndpointPageRequest.add_member(:include_raw_display_content, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "includeRawDisplayContent"))
    GetProductRestEndpointPageRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    GetProductRestEndpointPageRequest.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "productRestEndpointPageId"))
    GetProductRestEndpointPageRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceOwnerAccountId"))
    GetProductRestEndpointPageRequest.struct_class = Types::GetProductRestEndpointPageRequest

    GetProductRestEndpointPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContentResponse, location_name: "displayContent"))
    GetProductRestEndpointPageResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    GetProductRestEndpointPageResponse.add_member(:product_rest_endpoint_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "productRestEndpointPageArn"))
    GetProductRestEndpointPageResponse.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "productRestEndpointPageId"))
    GetProductRestEndpointPageResponse.add_member(:raw_display_content, Shapes::ShapeRef.new(shape: __string, location_name: "rawDisplayContent"))
    GetProductRestEndpointPageResponse.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, location_name: "restEndpointIdentifier"))
    GetProductRestEndpointPageResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    GetProductRestEndpointPageResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    GetProductRestEndpointPageResponse.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    GetProductRestEndpointPageResponse.struct_class = Types::GetProductRestEndpointPageResponse

    GetProductRestEndpointPageResponseContent.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContentResponse, required: true, location_name: "displayContent"))
    GetProductRestEndpointPageResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    GetProductRestEndpointPageResponseContent.add_member(:product_rest_endpoint_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "productRestEndpointPageArn"))
    GetProductRestEndpointPageResponseContent.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "productRestEndpointPageId"))
    GetProductRestEndpointPageResponseContent.add_member(:raw_display_content, Shapes::ShapeRef.new(shape: __string, location_name: "rawDisplayContent"))
    GetProductRestEndpointPageResponseContent.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, required: true, location_name: "restEndpointIdentifier"))
    GetProductRestEndpointPageResponseContent.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    GetProductRestEndpointPageResponseContent.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    GetProductRestEndpointPageResponseContent.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, required: true, location_name: "tryItState"))
    GetProductRestEndpointPageResponseContent.struct_class = Types::GetProductRestEndpointPageResponseContent

    GetRouteRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetRouteRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    GetRouteRequest.struct_class = Types::GetRouteRequest

    GetRouteResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetRouteResponseRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    GetRouteResponseRequest.add_member(:route_response_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeResponseId"))
    GetRouteResponseRequest.struct_class = Types::GetRouteResponseRequest

    GetRouteResponseResponse.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    GetRouteResponseResponse.add_member(:response_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "responseModels"))
    GetRouteResponseResponse.add_member(:response_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "responseParameters"))
    GetRouteResponseResponse.add_member(:route_response_id, Shapes::ShapeRef.new(shape: Id, location_name: "routeResponseId"))
    GetRouteResponseResponse.add_member(:route_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeResponseKey"))
    GetRouteResponseResponse.struct_class = Types::GetRouteResponseResponse

    GetRouteResponsesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetRouteResponsesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetRouteResponsesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetRouteResponsesRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    GetRouteResponsesRequest.struct_class = Types::GetRouteResponsesRequest

    GetRouteResponsesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfRouteResponse, location_name: "items"))
    GetRouteResponsesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetRouteResponsesResponse.struct_class = Types::GetRouteResponsesResponse

    GetRouteResult.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    GetRouteResult.add_member(:api_key_required, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiKeyRequired"))
    GetRouteResult.add_member(:authorization_scopes, Shapes::ShapeRef.new(shape: AuthorizationScopes, location_name: "authorizationScopes"))
    GetRouteResult.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, location_name: "authorizationType"))
    GetRouteResult.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    GetRouteResult.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    GetRouteResult.add_member(:operation_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "operationName"))
    GetRouteResult.add_member(:request_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "requestModels"))
    GetRouteResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "requestParameters"))
    GetRouteResult.add_member(:route_id, Shapes::ShapeRef.new(shape: Id, location_name: "routeId"))
    GetRouteResult.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    GetRouteResult.add_member(:route_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeResponseSelectionExpression"))
    GetRouteResult.add_member(:target, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "target"))
    GetRouteResult.struct_class = Types::GetRouteResult

    GetRoutesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetRoutesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetRoutesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetRoutesRequest.struct_class = Types::GetRoutesRequest

    GetRoutesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "items"))
    GetRoutesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetRoutesResponse.struct_class = Types::GetRoutesResponse

    GetRoutingRuleRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    GetRoutingRuleRequest.add_member(:domain_name_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "domainNameId"))
    GetRoutingRuleRequest.add_member(:routing_rule_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routingRuleId"))
    GetRoutingRuleRequest.struct_class = Types::GetRoutingRuleRequest

    GetRoutingRuleResponse.add_member(:actions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleAction, location_name: "actions"))
    GetRoutingRuleResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleCondition, location_name: "conditions"))
    GetRoutingRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: RoutingRulePriority, location_name: "priority"))
    GetRoutingRuleResponse.add_member(:routing_rule_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "routingRuleArn"))
    GetRoutingRuleResponse.add_member(:routing_rule_id, Shapes::ShapeRef.new(shape: Id, location_name: "routingRuleId"))
    GetRoutingRuleResponse.struct_class = Types::GetRoutingRuleResponse

    GetStageRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    GetStageRequest.struct_class = Types::GetStageRequest

    GetStageResponse.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    GetStageResponse.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    GetStageResponse.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeploy"))
    GetStageResponse.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    GetStageResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    GetStageResponse.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    GetStageResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    GetStageResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    GetStageResponse.add_member(:last_deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "lastDeploymentStatusMessage"))
    GetStageResponse.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdatedDate"))
    GetStageResponse.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    GetStageResponse.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    GetStageResponse.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    GetStageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetStageResponse.struct_class = Types::GetStageResponse

    GetStagesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetStagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetStagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetStagesRequest.struct_class = Types::GetStagesRequest

    GetStagesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfStage, location_name: "items"))
    GetStagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetStagesResponse.struct_class = Types::GetStagesResponse

    GetTagsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    GetTagsRequest.struct_class = Types::GetTagsRequest

    GetTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetTagsResponse.struct_class = Types::GetTagsResponse

    GetVpcLinkRequest.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "vpcLinkId"))
    GetVpcLinkRequest.struct_class = Types::GetVpcLinkRequest

    GetVpcLinkResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    GetVpcLinkResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    GetVpcLinkResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    GetVpcLinkResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    GetVpcLinkResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetVpcLinkResponse.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: Id, location_name: "vpcLinkId"))
    GetVpcLinkResponse.add_member(:vpc_link_status, Shapes::ShapeRef.new(shape: VpcLinkStatus, location_name: "vpcLinkStatus"))
    GetVpcLinkResponse.add_member(:vpc_link_status_message, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "vpcLinkStatusMessage"))
    GetVpcLinkResponse.add_member(:vpc_link_version, Shapes::ShapeRef.new(shape: VpcLinkVersion, location_name: "vpcLinkVersion"))
    GetVpcLinkResponse.struct_class = Types::GetVpcLinkResponse

    GetVpcLinksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetVpcLinksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetVpcLinksRequest.struct_class = Types::GetVpcLinksRequest

    GetVpcLinksResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfVpcLink, location_name: "items"))
    GetVpcLinksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetVpcLinksResponse.struct_class = Types::GetVpcLinksResponse

    IdentifierParts.add_member(:method, Shapes::ShapeRef.new(shape: __stringMin1Max20, required: true, location_name: "method"))
    IdentifierParts.add_member(:path, Shapes::ShapeRef.new(shape: __stringMin1Max4096, required: true, location_name: "path"))
    IdentifierParts.add_member(:rest_api_id, Shapes::ShapeRef.new(shape: __stringMin1Max50, required: true, location_name: "restApiId"))
    IdentifierParts.add_member(:stage, Shapes::ShapeRef.new(shape: __stringMin1Max128, required: true, location_name: "stage"))
    IdentifierParts.struct_class = Types::IdentifierParts

    IdentitySourceList.member = Shapes::ShapeRef.new(shape: __string)

    ImportApiInput.add_member(:body, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "body"))
    ImportApiInput.struct_class = Types::ImportApiInput

    ImportApiRequest.add_member(:basepath, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "basepath"))
    ImportApiRequest.add_member(:body, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "body"))
    ImportApiRequest.add_member(:fail_on_warnings, Shapes::ShapeRef.new(shape: __boolean, location: "querystring", location_name: "failOnWarnings"))
    ImportApiRequest.struct_class = Types::ImportApiRequest

    ImportApiResponse.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    ImportApiResponse.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    ImportApiResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    ImportApiResponse.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    ImportApiResponse.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    ImportApiResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    ImportApiResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    ImportApiResponse.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    ImportApiResponse.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    ImportApiResponse.add_member(:import_info, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "importInfo"))
    ImportApiResponse.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    ImportApiResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    ImportApiResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "protocolType"))
    ImportApiResponse.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    ImportApiResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ImportApiResponse.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    ImportApiResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "warnings"))
    ImportApiResponse.struct_class = Types::ImportApiResponse

    Integration.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    Integration.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    Integration.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    Integration.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    Integration.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    Integration.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Integration.add_member(:integration_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationId"))
    Integration.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    Integration.add_member(:integration_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "integrationResponseSelectionExpression"))
    Integration.add_member(:integration_subtype, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "integrationSubtype"))
    Integration.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    Integration.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    Integration.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    Integration.add_member(:payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "payloadFormatVersion"))
    Integration.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    Integration.add_member(:response_parameters, Shapes::ShapeRef.new(shape: ResponseParameters, location_name: "responseParameters"))
    Integration.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    Integration.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    Integration.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And30000, location_name: "timeoutInMillis"))
    Integration.add_member(:tls_config, Shapes::ShapeRef.new(shape: TlsConfig, location_name: "tlsConfig"))
    Integration.struct_class = Types::Integration

    IntegrationParameters.key = Shapes::ShapeRef.new(shape: __string)
    IntegrationParameters.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512)

    IntegrationResponse.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    IntegrationResponse.add_member(:integration_response_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationResponseId"))
    IntegrationResponse.add_member(:integration_response_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "integrationResponseKey"))
    IntegrationResponse.add_member(:response_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "responseParameters"))
    IntegrationResponse.add_member(:response_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "responseTemplates"))
    IntegrationResponse.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    IntegrationResponse.struct_class = Types::IntegrationResponse

    IntegrationResponses.add_member(:items, Shapes::ShapeRef.new(shape: __listOfIntegrationResponse, location_name: "items"))
    IntegrationResponses.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    IntegrationResponses.struct_class = Types::IntegrationResponses

    Integrations.add_member(:items, Shapes::ShapeRef.new(shape: __listOfIntegration, location_name: "items"))
    Integrations.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Integrations.struct_class = Types::Integrations

    JWTConfiguration.add_member(:audience, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "audience"))
    JWTConfiguration.add_member(:issuer, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "issuer"))
    JWTConfiguration.struct_class = Types::JWTConfiguration

    LimitExceededException.add_member(:limit_type, Shapes::ShapeRef.new(shape: __string, location_name: "limitType"))
    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    LimitExceededExceptionResponseContent.add_member(:limit_type, Shapes::ShapeRef.new(shape: __string, location_name: "limitType"))
    LimitExceededExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    LimitExceededExceptionResponseContent.struct_class = Types::LimitExceededExceptionResponseContent

    ListPortalProductsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    ListPortalProductsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListPortalProductsRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceOwner"))
    ListPortalProductsRequest.struct_class = Types::ListPortalProductsRequest

    ListPortalProductsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfPortalProductSummary, location_name: "items"))
    ListPortalProductsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListPortalProductsResponse.struct_class = Types::ListPortalProductsResponse

    ListPortalProductsResponseContent.add_member(:items, Shapes::ShapeRef.new(shape: __listOfPortalProductSummary, location_name: "items"))
    ListPortalProductsResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListPortalProductsResponseContent.struct_class = Types::ListPortalProductsResponseContent

    ListPortalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    ListPortalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListPortalsRequest.struct_class = Types::ListPortalsRequest

    ListPortalsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfPortalSummary, location_name: "items"))
    ListPortalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListPortalsResponse.struct_class = Types::ListPortalsResponse

    ListPortalsResponseContent.add_member(:items, Shapes::ShapeRef.new(shape: __listOfPortalSummary, location_name: "items"))
    ListPortalsResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListPortalsResponseContent.struct_class = Types::ListPortalsResponseContent

    ListProductPagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    ListProductPagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListProductPagesRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    ListProductPagesRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceOwnerAccountId"))
    ListProductPagesRequest.struct_class = Types::ListProductPagesRequest

    ListProductPagesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfProductPageSummaryNoBody, location_name: "items"))
    ListProductPagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListProductPagesResponse.struct_class = Types::ListProductPagesResponse

    ListProductPagesResponseContent.add_member(:items, Shapes::ShapeRef.new(shape: __listOfProductPageSummaryNoBody, required: true, location_name: "items"))
    ListProductPagesResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListProductPagesResponseContent.struct_class = Types::ListProductPagesResponseContent

    ListProductRestEndpointPagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    ListProductRestEndpointPagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListProductRestEndpointPagesRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    ListProductRestEndpointPagesRequest.add_member(:resource_owner_account_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceOwnerAccountId"))
    ListProductRestEndpointPagesRequest.struct_class = Types::ListProductRestEndpointPagesRequest

    ListProductRestEndpointPagesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfProductRestEndpointPageSummaryNoBody, location_name: "items"))
    ListProductRestEndpointPagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListProductRestEndpointPagesResponse.struct_class = Types::ListProductRestEndpointPagesResponse

    ListProductRestEndpointPagesResponseContent.add_member(:items, Shapes::ShapeRef.new(shape: __listOfProductRestEndpointPageSummaryNoBody, required: true, location_name: "items"))
    ListProductRestEndpointPagesResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListProductRestEndpointPagesResponseContent.struct_class = Types::ListProductRestEndpointPagesResponseContent

    ListRoutingRulesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    ListRoutingRulesRequest.add_member(:domain_name_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "domainNameId"))
    ListRoutingRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRoutingRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListRoutingRulesRequest.struct_class = Types::ListRoutingRulesRequest

    ListRoutingRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRoutingRulesResponse.add_member(:routing_rules, Shapes::ShapeRef.new(shape: __listOfRoutingRule, location_name: "routingRules"))
    ListRoutingRulesResponse.struct_class = Types::ListRoutingRulesResponse

    Model.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    Model.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Model.add_member(:model_id, Shapes::ShapeRef.new(shape: Id, location_name: "modelId"))
    Model.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    Model.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, location_name: "schema"))
    Model.struct_class = Types::Model

    Models.add_member(:items, Shapes::ShapeRef.new(shape: __listOfModel, location_name: "items"))
    Models.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Models.struct_class = Types::Models

    MutualTlsAuthentication.add_member(:truststore_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "truststoreUri"))
    MutualTlsAuthentication.add_member(:truststore_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "truststoreVersion"))
    MutualTlsAuthentication.add_member(:truststore_warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "truststoreWarnings"))
    MutualTlsAuthentication.struct_class = Types::MutualTlsAuthentication

    MutualTlsAuthenticationInput.add_member(:truststore_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "truststoreUri"))
    MutualTlsAuthenticationInput.add_member(:truststore_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "truststoreVersion"))
    MutualTlsAuthenticationInput.struct_class = Types::MutualTlsAuthenticationInput

    None.struct_class = Types::None

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location_name: "resourceType"))
    NotFoundException.struct_class = Types::NotFoundException

    NotFoundExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundExceptionResponseContent.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location_name: "resourceType"))
    NotFoundExceptionResponseContent.struct_class = Types::NotFoundExceptionResponseContent

    ParameterConstraints.add_member(:required, Shapes::ShapeRef.new(shape: __boolean, location_name: "required"))
    ParameterConstraints.struct_class = Types::ParameterConstraints

    PortalContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    PortalContent.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin3Max255, required: true, location_name: "displayName"))
    PortalContent.add_member(:theme, Shapes::ShapeRef.new(shape: PortalTheme, required: true, location_name: "theme"))
    PortalContent.struct_class = Types::PortalContent

    PortalProductSummary.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, required: true, location_name: "description"))
    PortalProductSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, required: true, location_name: "displayName"))
    PortalProductSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    PortalProductSummary.add_member(:portal_product_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "portalProductArn"))
    PortalProductSummary.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalProductId"))
    PortalProductSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PortalProductSummary.struct_class = Types::PortalProductSummary

    PortalSummary.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    PortalSummary.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, required: true, location_name: "endpointConfiguration"))
    PortalSummary.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, required: true, location_name: "includedPortalProductArns"))
    PortalSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    PortalSummary.add_member(:last_published, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastPublished"))
    PortalSummary.add_member(:last_published_description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "lastPublishedDescription"))
    PortalSummary.add_member(:portal_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "portalArn"))
    PortalSummary.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    PortalSummary.add_member(:portal_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalId"))
    PortalSummary.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "preview"))
    PortalSummary.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    PortalSummary.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    PortalSummary.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    PortalSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PortalSummary.struct_class = Types::PortalSummary

    PortalTheme.add_member(:custom_colors, Shapes::ShapeRef.new(shape: CustomColors, required: true, location_name: "customColors"))
    PortalTheme.add_member(:logo_last_uploaded, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "logoLastUploaded"))
    PortalTheme.struct_class = Types::PortalTheme

    Preview.add_member(:preview_status, Shapes::ShapeRef.new(shape: PreviewStatus, required: true, location_name: "previewStatus"))
    Preview.add_member(:preview_url, Shapes::ShapeRef.new(shape: __string, location_name: "previewUrl"))
    Preview.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    Preview.struct_class = Types::Preview

    PreviewPortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalId"))
    PreviewPortalRequest.struct_class = Types::PreviewPortalRequest

    PreviewPortalResponse.struct_class = Types::PreviewPortalResponse

    ProductPageSummaryNoBody.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    ProductPageSummaryNoBody.add_member(:page_title, Shapes::ShapeRef.new(shape: __stringMin1Max255, required: true, location_name: "pageTitle"))
    ProductPageSummaryNoBody.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "productPageArn"))
    ProductPageSummaryNoBody.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "productPageId"))
    ProductPageSummaryNoBody.struct_class = Types::ProductPageSummaryNoBody

    ProductRestEndpointPageSummaryNoBody.add_member(:endpoint, Shapes::ShapeRef.new(shape: __stringMin1Max1024, required: true, location_name: "endpoint"))
    ProductRestEndpointPageSummaryNoBody.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    ProductRestEndpointPageSummaryNoBody.add_member(:operation_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "operationName"))
    ProductRestEndpointPageSummaryNoBody.add_member(:product_rest_endpoint_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "productRestEndpointPageArn"))
    ProductRestEndpointPageSummaryNoBody.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "productRestEndpointPageId"))
    ProductRestEndpointPageSummaryNoBody.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, required: true, location_name: "restEndpointIdentifier"))
    ProductRestEndpointPageSummaryNoBody.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    ProductRestEndpointPageSummaryNoBody.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    ProductRestEndpointPageSummaryNoBody.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, required: true, location_name: "tryItState"))
    ProductRestEndpointPageSummaryNoBody.struct_class = Types::ProductRestEndpointPageSummaryNoBody

    PublishPortalRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    PublishPortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalId"))
    PublishPortalRequest.struct_class = Types::PublishPortalRequest

    PublishPortalRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    PublishPortalRequestContent.struct_class = Types::PublishPortalRequestContent

    PublishPortalResponse.struct_class = Types::PublishPortalResponse

    PutPortalProductSharingPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: __stringMin1Max307200, required: true, location_name: "policyDocument"))
    PutPortalProductSharingPolicyRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    PutPortalProductSharingPolicyRequest.struct_class = Types::PutPortalProductSharingPolicyRequest

    PutPortalProductSharingPolicyRequestContent.add_member(:policy_document, Shapes::ShapeRef.new(shape: __stringMin1Max307200, required: true, location_name: "policyDocument"))
    PutPortalProductSharingPolicyRequestContent.struct_class = Types::PutPortalProductSharingPolicyRequestContent

    PutPortalProductSharingPolicyResponse.struct_class = Types::PutPortalProductSharingPolicyResponse

    PutRoutingRuleRequest.add_member(:actions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleAction, required: true, location_name: "actions"))
    PutRoutingRuleRequest.add_member(:conditions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleCondition, required: true, location_name: "conditions"))
    PutRoutingRuleRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    PutRoutingRuleRequest.add_member(:domain_name_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "domainNameId"))
    PutRoutingRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: RoutingRulePriority, required: true, location_name: "priority"))
    PutRoutingRuleRequest.add_member(:routing_rule_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routingRuleId"))
    PutRoutingRuleRequest.struct_class = Types::PutRoutingRuleRequest

    PutRoutingRuleResponse.add_member(:actions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleAction, location_name: "actions"))
    PutRoutingRuleResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleCondition, location_name: "conditions"))
    PutRoutingRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: RoutingRulePriority, location_name: "priority"))
    PutRoutingRuleResponse.add_member(:routing_rule_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "routingRuleArn"))
    PutRoutingRuleResponse.add_member(:routing_rule_id, Shapes::ShapeRef.new(shape: Id, location_name: "routingRuleId"))
    PutRoutingRuleResponse.struct_class = Types::PutRoutingRuleResponse

    ReimportApiInput.add_member(:body, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "body"))
    ReimportApiInput.struct_class = Types::ReimportApiInput

    ReimportApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    ReimportApiRequest.add_member(:basepath, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "basepath"))
    ReimportApiRequest.add_member(:body, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "body"))
    ReimportApiRequest.add_member(:fail_on_warnings, Shapes::ShapeRef.new(shape: __boolean, location: "querystring", location_name: "failOnWarnings"))
    ReimportApiRequest.struct_class = Types::ReimportApiRequest

    ReimportApiResponse.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    ReimportApiResponse.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    ReimportApiResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    ReimportApiResponse.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    ReimportApiResponse.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    ReimportApiResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    ReimportApiResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    ReimportApiResponse.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    ReimportApiResponse.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    ReimportApiResponse.add_member(:import_info, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "importInfo"))
    ReimportApiResponse.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    ReimportApiResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    ReimportApiResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "protocolType"))
    ReimportApiResponse.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    ReimportApiResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ReimportApiResponse.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    ReimportApiResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "warnings"))
    ReimportApiResponse.struct_class = Types::ReimportApiResponse

    ResetAuthorizersCacheRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    ResetAuthorizersCacheRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    ResetAuthorizersCacheRequest.struct_class = Types::ResetAuthorizersCacheRequest

    ResponseParameters.key = Shapes::ShapeRef.new(shape: __string)
    ResponseParameters.value = Shapes::ShapeRef.new(shape: IntegrationParameters)

    RestEndpointIdentifier.add_member(:identifier_parts, Shapes::ShapeRef.new(shape: IdentifierParts, location_name: "identifierParts"))
    RestEndpointIdentifier.struct_class = Types::RestEndpointIdentifier

    Route.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    Route.add_member(:api_key_required, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiKeyRequired"))
    Route.add_member(:authorization_scopes, Shapes::ShapeRef.new(shape: AuthorizationScopes, location_name: "authorizationScopes"))
    Route.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, location_name: "authorizationType"))
    Route.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    Route.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    Route.add_member(:operation_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "operationName"))
    Route.add_member(:request_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "requestModels"))
    Route.add_member(:request_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "requestParameters"))
    Route.add_member(:route_id, Shapes::ShapeRef.new(shape: Id, location_name: "routeId"))
    Route.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "routeKey"))
    Route.add_member(:route_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeResponseSelectionExpression"))
    Route.add_member(:target, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "target"))
    Route.struct_class = Types::Route

    RouteModels.key = Shapes::ShapeRef.new(shape: __string)
    RouteModels.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128)

    RouteParameters.key = Shapes::ShapeRef.new(shape: __string)
    RouteParameters.value = Shapes::ShapeRef.new(shape: ParameterConstraints)

    RouteResponse.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    RouteResponse.add_member(:response_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "responseModels"))
    RouteResponse.add_member(:response_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "responseParameters"))
    RouteResponse.add_member(:route_response_id, Shapes::ShapeRef.new(shape: Id, location_name: "routeResponseId"))
    RouteResponse.add_member(:route_response_key, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "routeResponseKey"))
    RouteResponse.struct_class = Types::RouteResponse

    RouteResponses.add_member(:items, Shapes::ShapeRef.new(shape: __listOfRouteResponse, location_name: "items"))
    RouteResponses.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    RouteResponses.struct_class = Types::RouteResponses

    RouteSettings.add_member(:data_trace_enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "dataTraceEnabled"))
    RouteSettings.add_member(:detailed_metrics_enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "detailedMetricsEnabled"))
    RouteSettings.add_member(:logging_level, Shapes::ShapeRef.new(shape: LoggingLevel, location_name: "loggingLevel"))
    RouteSettings.add_member(:throttling_burst_limit, Shapes::ShapeRef.new(shape: __integer, location_name: "throttlingBurstLimit"))
    RouteSettings.add_member(:throttling_rate_limit, Shapes::ShapeRef.new(shape: __double, location_name: "throttlingRateLimit"))
    RouteSettings.struct_class = Types::RouteSettings

    RouteSettingsMap.key = Shapes::ShapeRef.new(shape: __string)
    RouteSettingsMap.value = Shapes::ShapeRef.new(shape: RouteSettings)

    Routes.add_member(:items, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "items"))
    Routes.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Routes.struct_class = Types::Routes

    RoutingRule.add_member(:actions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleAction, location_name: "actions"))
    RoutingRule.add_member(:conditions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleCondition, location_name: "conditions"))
    RoutingRule.add_member(:priority, Shapes::ShapeRef.new(shape: RoutingRulePriority, location_name: "priority"))
    RoutingRule.add_member(:routing_rule_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "routingRuleArn"))
    RoutingRule.add_member(:routing_rule_id, Shapes::ShapeRef.new(shape: Id, location_name: "routingRuleId"))
    RoutingRule.struct_class = Types::RoutingRule

    RoutingRuleAction.add_member(:invoke_api, Shapes::ShapeRef.new(shape: RoutingRuleActionInvokeApi, required: true, location_name: "invokeApi"))
    RoutingRuleAction.struct_class = Types::RoutingRuleAction

    RoutingRuleActionInvokeApi.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "apiId"))
    RoutingRuleActionInvokeApi.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stage"))
    RoutingRuleActionInvokeApi.add_member(:strip_base_path, Shapes::ShapeRef.new(shape: __boolean, location_name: "stripBasePath"))
    RoutingRuleActionInvokeApi.struct_class = Types::RoutingRuleActionInvokeApi

    RoutingRuleCondition.add_member(:match_base_paths, Shapes::ShapeRef.new(shape: RoutingRuleMatchBasePaths, location_name: "matchBasePaths"))
    RoutingRuleCondition.add_member(:match_headers, Shapes::ShapeRef.new(shape: RoutingRuleMatchHeaders, location_name: "matchHeaders"))
    RoutingRuleCondition.struct_class = Types::RoutingRuleCondition

    RoutingRuleInput.add_member(:actions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleAction, required: true, location_name: "actions"))
    RoutingRuleInput.add_member(:conditions, Shapes::ShapeRef.new(shape: __listOfRoutingRuleCondition, required: true, location_name: "conditions"))
    RoutingRuleInput.add_member(:priority, Shapes::ShapeRef.new(shape: RoutingRulePriority, required: true, location_name: "priority"))
    RoutingRuleInput.struct_class = Types::RoutingRuleInput

    RoutingRuleMatchBasePaths.add_member(:any_of, Shapes::ShapeRef.new(shape: __listOfSelectionKey, required: true, location_name: "anyOf"))
    RoutingRuleMatchBasePaths.struct_class = Types::RoutingRuleMatchBasePaths

    RoutingRuleMatchHeaderValue.add_member(:header, Shapes::ShapeRef.new(shape: SelectionKey, required: true, location_name: "header"))
    RoutingRuleMatchHeaderValue.add_member(:value_glob, Shapes::ShapeRef.new(shape: SelectionExpression, required: true, location_name: "valueGlob"))
    RoutingRuleMatchHeaderValue.struct_class = Types::RoutingRuleMatchHeaderValue

    RoutingRuleMatchHeaders.add_member(:any_of, Shapes::ShapeRef.new(shape: __listOfRoutingRuleMatchHeaderValue, required: true, location_name: "anyOf"))
    RoutingRuleMatchHeaders.struct_class = Types::RoutingRuleMatchHeaders

    RoutingRules.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    RoutingRules.add_member(:routing_rules, Shapes::ShapeRef.new(shape: __listOfRoutingRule, location_name: "routingRules"))
    RoutingRules.struct_class = Types::RoutingRules

    Section.add_member(:product_rest_endpoint_page_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, required: true, location_name: "productRestEndpointPageArns"))
    Section.add_member(:section_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sectionName"))
    Section.struct_class = Types::Section

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: __string)

    Stage.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    Stage.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    Stage.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeploy"))
    Stage.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    Stage.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    Stage.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    Stage.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    Stage.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Stage.add_member(:last_deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "lastDeploymentStatusMessage"))
    Stage.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdatedDate"))
    Stage.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    Stage.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stageName"))
    Stage.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    Stage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Stage.struct_class = Types::Stage

    StageVariablesMap.key = Shapes::ShapeRef.new(shape: __string)
    StageVariablesMap.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween0And2048)

    Stages.add_member(:items, Shapes::ShapeRef.new(shape: __listOfStage, location_name: "items"))
    Stages.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Stages.struct_class = Types::Stages

    StatusException.add_member(:exception, Shapes::ShapeRef.new(shape: __stringMin1Max256, location_name: "exception"))
    StatusException.add_member(:message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "message"))
    StatusException.struct_class = Types::StatusException

    SubnetIdList.member = Shapes::ShapeRef.new(shape: __string)

    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: __string)
    Tags.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1600)

    Template.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    Template.struct_class = Types::Template

    TemplateMap.key = Shapes::ShapeRef.new(shape: __string)
    TemplateMap.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K)

    TlsConfig.add_member(:server_name_to_verify, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, location_name: "serverNameToVerify"))
    TlsConfig.struct_class = Types::TlsConfig

    TlsConfigInput.add_member(:server_name_to_verify, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, location_name: "serverNameToVerify"))
    TlsConfigInput.struct_class = Types::TlsConfigInput

    TooManyRequestsException.add_member(:limit_type, Shapes::ShapeRef.new(shape: __string, location_name: "limitType"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateApiInput.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    UpdateApiInput.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    UpdateApiInput.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    UpdateApiInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateApiInput.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    UpdateApiInput.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    UpdateApiInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    UpdateApiInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateApiInput.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    UpdateApiInput.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    UpdateApiInput.add_member(:target, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "target"))
    UpdateApiInput.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    UpdateApiInput.struct_class = Types::UpdateApiInput

    UpdateApiMappingInput.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    UpdateApiMappingInput.add_member(:api_mapping_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "apiMappingKey"))
    UpdateApiMappingInput.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stage"))
    UpdateApiMappingInput.struct_class = Types::UpdateApiMappingInput

    UpdateApiMappingRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "apiId"))
    UpdateApiMappingRequest.add_member(:api_mapping_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiMappingId"))
    UpdateApiMappingRequest.add_member(:api_mapping_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "apiMappingKey"))
    UpdateApiMappingRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    UpdateApiMappingRequest.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stage"))
    UpdateApiMappingRequest.struct_class = Types::UpdateApiMappingRequest

    UpdateApiMappingResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    UpdateApiMappingResponse.add_member(:api_mapping_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiMappingId"))
    UpdateApiMappingResponse.add_member(:api_mapping_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "apiMappingKey"))
    UpdateApiMappingResponse.add_member(:stage, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stage"))
    UpdateApiMappingResponse.struct_class = Types::UpdateApiMappingResponse

    UpdateApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateApiRequest.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    UpdateApiRequest.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    UpdateApiRequest.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    UpdateApiRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateApiRequest.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    UpdateApiRequest.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    UpdateApiRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    UpdateApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateApiRequest.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    UpdateApiRequest.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    UpdateApiRequest.add_member(:target, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "target"))
    UpdateApiRequest.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    UpdateApiRequest.struct_class = Types::UpdateApiRequest

    UpdateApiResponse.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    UpdateApiResponse.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    UpdateApiResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    UpdateApiResponse.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    UpdateApiResponse.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: Cors, location_name: "corsConfiguration"))
    UpdateApiResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    UpdateApiResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateApiResponse.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    UpdateApiResponse.add_member(:disable_execute_api_endpoint, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableExecuteApiEndpoint"))
    UpdateApiResponse.add_member(:import_info, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "importInfo"))
    UpdateApiResponse.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    UpdateApiResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateApiResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "protocolType"))
    UpdateApiResponse.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    UpdateApiResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateApiResponse.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    UpdateApiResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "warnings"))
    UpdateApiResponse.struct_class = Types::UpdateApiResponse

    UpdateAuthorizerInput.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    UpdateAuthorizerInput.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    UpdateAuthorizerInput.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    UpdateAuthorizerInput.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    UpdateAuthorizerInput.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    UpdateAuthorizerInput.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    UpdateAuthorizerInput.add_member(:jwt_configuration, Shapes::ShapeRef.new(shape: JWTConfiguration, location_name: "jwtConfiguration"))
    UpdateAuthorizerInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateAuthorizerInput.add_member(:authorizer_payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "authorizerPayloadFormatVersion"))
    UpdateAuthorizerInput.add_member(:enable_simple_responses, Shapes::ShapeRef.new(shape: __boolean, location_name: "enableSimpleResponses"))
    UpdateAuthorizerInput.struct_class = Types::UpdateAuthorizerInput

    UpdateAuthorizerRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateAuthorizerRequest.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    UpdateAuthorizerRequest.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "authorizerId"))
    UpdateAuthorizerRequest.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    UpdateAuthorizerRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    UpdateAuthorizerRequest.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    UpdateAuthorizerRequest.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    UpdateAuthorizerRequest.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    UpdateAuthorizerRequest.add_member(:jwt_configuration, Shapes::ShapeRef.new(shape: JWTConfiguration, location_name: "jwtConfiguration"))
    UpdateAuthorizerRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateAuthorizerRequest.add_member(:authorizer_payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "authorizerPayloadFormatVersion"))
    UpdateAuthorizerRequest.add_member(:enable_simple_responses, Shapes::ShapeRef.new(shape: __boolean, location_name: "enableSimpleResponses"))
    UpdateAuthorizerRequest.struct_class = Types::UpdateAuthorizerRequest

    UpdateAuthorizerResponse.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    UpdateAuthorizerResponse.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    UpdateAuthorizerResponse.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    UpdateAuthorizerResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    UpdateAuthorizerResponse.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    UpdateAuthorizerResponse.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    UpdateAuthorizerResponse.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    UpdateAuthorizerResponse.add_member(:jwt_configuration, Shapes::ShapeRef.new(shape: JWTConfiguration, location_name: "jwtConfiguration"))
    UpdateAuthorizerResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateAuthorizerResponse.add_member(:authorizer_payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "authorizerPayloadFormatVersion"))
    UpdateAuthorizerResponse.add_member(:enable_simple_responses, Shapes::ShapeRef.new(shape: __boolean, location_name: "enableSimpleResponses"))
    UpdateAuthorizerResponse.struct_class = Types::UpdateAuthorizerResponse

    UpdateDeploymentInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateDeploymentInput.struct_class = Types::UpdateDeploymentInput

    UpdateDeploymentRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deploymentId"))
    UpdateDeploymentRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateDeploymentRequest.struct_class = Types::UpdateDeploymentRequest

    UpdateDeploymentResponse.add_member(:auto_deployed, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeployed"))
    UpdateDeploymentResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    UpdateDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    UpdateDeploymentResponse.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    UpdateDeploymentResponse.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "deploymentStatusMessage"))
    UpdateDeploymentResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateDeploymentResponse.struct_class = Types::UpdateDeploymentResponse

    UpdateDomainNameInput.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    UpdateDomainNameInput.add_member(:mutual_tls_authentication, Shapes::ShapeRef.new(shape: MutualTlsAuthenticationInput, location_name: "mutualTlsAuthentication"))
    UpdateDomainNameInput.add_member(:routing_mode, Shapes::ShapeRef.new(shape: RoutingMode, location_name: "routingMode"))
    UpdateDomainNameInput.struct_class = Types::UpdateDomainNameInput

    UpdateDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    UpdateDomainNameRequest.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    UpdateDomainNameRequest.add_member(:mutual_tls_authentication, Shapes::ShapeRef.new(shape: MutualTlsAuthenticationInput, location_name: "mutualTlsAuthentication"))
    UpdateDomainNameRequest.add_member(:routing_mode, Shapes::ShapeRef.new(shape: RoutingMode, location_name: "routingMode"))
    UpdateDomainNameRequest.struct_class = Types::UpdateDomainNameRequest

    UpdateDomainNameResponse.add_member(:api_mapping_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiMappingSelectionExpression"))
    UpdateDomainNameResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, location_name: "domainName"))
    UpdateDomainNameResponse.add_member(:domain_name_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "domainNameArn"))
    UpdateDomainNameResponse.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    UpdateDomainNameResponse.add_member(:mutual_tls_authentication, Shapes::ShapeRef.new(shape: MutualTlsAuthentication, location_name: "mutualTlsAuthentication"))
    UpdateDomainNameResponse.add_member(:routing_mode, Shapes::ShapeRef.new(shape: RoutingMode, location_name: "routingMode"))
    UpdateDomainNameResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateDomainNameResponse.struct_class = Types::UpdateDomainNameResponse

    UpdateIntegrationInput.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    UpdateIntegrationInput.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    UpdateIntegrationInput.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationInput.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    UpdateIntegrationInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateIntegrationInput.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    UpdateIntegrationInput.add_member(:integration_subtype, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "integrationSubtype"))
    UpdateIntegrationInput.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    UpdateIntegrationInput.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    UpdateIntegrationInput.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    UpdateIntegrationInput.add_member(:payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "payloadFormatVersion"))
    UpdateIntegrationInput.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    UpdateIntegrationInput.add_member(:response_parameters, Shapes::ShapeRef.new(shape: ResponseParameters, location_name: "responseParameters"))
    UpdateIntegrationInput.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    UpdateIntegrationInput.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationInput.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And30000, location_name: "timeoutInMillis"))
    UpdateIntegrationInput.add_member(:tls_config, Shapes::ShapeRef.new(shape: TlsConfigInput, location_name: "tlsConfig"))
    UpdateIntegrationInput.struct_class = Types::UpdateIntegrationInput

    UpdateIntegrationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateIntegrationRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    UpdateIntegrationRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    UpdateIntegrationRequest.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationRequest.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    UpdateIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateIntegrationRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    UpdateIntegrationRequest.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    UpdateIntegrationRequest.add_member(:integration_subtype, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "integrationSubtype"))
    UpdateIntegrationRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    UpdateIntegrationRequest.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    UpdateIntegrationRequest.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    UpdateIntegrationRequest.add_member(:payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "payloadFormatVersion"))
    UpdateIntegrationRequest.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    UpdateIntegrationRequest.add_member(:response_parameters, Shapes::ShapeRef.new(shape: ResponseParameters, location_name: "responseParameters"))
    UpdateIntegrationRequest.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    UpdateIntegrationRequest.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationRequest.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And30000, location_name: "timeoutInMillis"))
    UpdateIntegrationRequest.add_member(:tls_config, Shapes::ShapeRef.new(shape: TlsConfigInput, location_name: "tlsConfig"))
    UpdateIntegrationRequest.struct_class = Types::UpdateIntegrationRequest

    UpdateIntegrationResponseInput.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationResponseInput.add_member(:integration_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "integrationResponseKey"))
    UpdateIntegrationResponseInput.add_member(:response_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "responseParameters"))
    UpdateIntegrationResponseInput.add_member(:response_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "responseTemplates"))
    UpdateIntegrationResponseInput.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationResponseInput.struct_class = Types::UpdateIntegrationResponseInput

    UpdateIntegrationResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateIntegrationResponseRequest.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationResponseRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    UpdateIntegrationResponseRequest.add_member(:integration_response_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationResponseId"))
    UpdateIntegrationResponseRequest.add_member(:integration_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "integrationResponseKey"))
    UpdateIntegrationResponseRequest.add_member(:response_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "responseParameters"))
    UpdateIntegrationResponseRequest.add_member(:response_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "responseTemplates"))
    UpdateIntegrationResponseRequest.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationResponseRequest.struct_class = Types::UpdateIntegrationResponseRequest

    UpdateIntegrationResponseResponse.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationResponseResponse.add_member(:integration_response_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationResponseId"))
    UpdateIntegrationResponseResponse.add_member(:integration_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "integrationResponseKey"))
    UpdateIntegrationResponseResponse.add_member(:response_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "responseParameters"))
    UpdateIntegrationResponseResponse.add_member(:response_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "responseTemplates"))
    UpdateIntegrationResponseResponse.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationResponseResponse.struct_class = Types::UpdateIntegrationResponseResponse

    UpdateIntegrationResult.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    UpdateIntegrationResult.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    UpdateIntegrationResult.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    UpdateIntegrationResult.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationResult.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    UpdateIntegrationResult.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateIntegrationResult.add_member(:integration_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationId"))
    UpdateIntegrationResult.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    UpdateIntegrationResult.add_member(:integration_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "integrationResponseSelectionExpression"))
    UpdateIntegrationResult.add_member(:integration_subtype, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "integrationSubtype"))
    UpdateIntegrationResult.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    UpdateIntegrationResult.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    UpdateIntegrationResult.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    UpdateIntegrationResult.add_member(:payload_format_version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "payloadFormatVersion"))
    UpdateIntegrationResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    UpdateIntegrationResult.add_member(:response_parameters, Shapes::ShapeRef.new(shape: ResponseParameters, location_name: "responseParameters"))
    UpdateIntegrationResult.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    UpdateIntegrationResult.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationResult.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And30000, location_name: "timeoutInMillis"))
    UpdateIntegrationResult.add_member(:tls_config, Shapes::ShapeRef.new(shape: TlsConfig, location_name: "tlsConfig"))
    UpdateIntegrationResult.struct_class = Types::UpdateIntegrationResult

    UpdateModelInput.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    UpdateModelInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateModelInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateModelInput.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, location_name: "schema"))
    UpdateModelInput.struct_class = Types::UpdateModelInput

    UpdateModelRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateModelRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    UpdateModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "modelId"))
    UpdateModelRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateModelRequest.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, location_name: "schema"))
    UpdateModelRequest.struct_class = Types::UpdateModelRequest

    UpdateModelResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    UpdateModelResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateModelResponse.add_member(:model_id, Shapes::ShapeRef.new(shape: Id, location_name: "modelId"))
    UpdateModelResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateModelResponse.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, location_name: "schema"))
    UpdateModelResponse.struct_class = Types::UpdateModelResponse

    UpdatePortalProductRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdatePortalProductRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "displayName"))
    UpdatePortalProductRequest.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    UpdatePortalProductRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    UpdatePortalProductRequest.struct_class = Types::UpdatePortalProductRequest

    UpdatePortalProductRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdatePortalProductRequestContent.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "displayName"))
    UpdatePortalProductRequestContent.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    UpdatePortalProductRequestContent.struct_class = Types::UpdatePortalProductRequestContent

    UpdatePortalProductResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdatePortalProductResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "displayName"))
    UpdatePortalProductResponse.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    UpdatePortalProductResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    UpdatePortalProductResponse.add_member(:portal_product_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "portalProductArn"))
    UpdatePortalProductResponse.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "portalProductId"))
    UpdatePortalProductResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdatePortalProductResponse.struct_class = Types::UpdatePortalProductResponse

    UpdatePortalProductResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdatePortalProductResponseContent.add_member(:display_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, required: true, location_name: "displayName"))
    UpdatePortalProductResponseContent.add_member(:display_order, Shapes::ShapeRef.new(shape: DisplayOrder, location_name: "displayOrder"))
    UpdatePortalProductResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    UpdatePortalProductResponseContent.add_member(:portal_product_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "portalProductArn"))
    UpdatePortalProductResponseContent.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalProductId"))
    UpdatePortalProductResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdatePortalProductResponseContent.struct_class = Types::UpdatePortalProductResponseContent

    UpdatePortalRequest.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    UpdatePortalRequest.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationRequest, location_name: "endpointConfiguration"))
    UpdatePortalRequest.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, location_name: "includedPortalProductArns"))
    UpdatePortalRequest.add_member(:logo_uri, Shapes::ShapeRef.new(shape: __stringMin0Max1092, location_name: "logoUri"))
    UpdatePortalRequest.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, location_name: "portalContent"))
    UpdatePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalId"))
    UpdatePortalRequest.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    UpdatePortalRequest.struct_class = Types::UpdatePortalRequest

    UpdatePortalRequestContent.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    UpdatePortalRequestContent.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationRequest, location_name: "endpointConfiguration"))
    UpdatePortalRequestContent.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, location_name: "includedPortalProductArns"))
    UpdatePortalRequestContent.add_member(:logo_uri, Shapes::ShapeRef.new(shape: __stringMin0Max1092, location_name: "logoUri"))
    UpdatePortalRequestContent.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, location_name: "portalContent"))
    UpdatePortalRequestContent.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    UpdatePortalRequestContent.struct_class = Types::UpdatePortalRequestContent

    UpdatePortalResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    UpdatePortalResponse.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, location_name: "endpointConfiguration"))
    UpdatePortalResponse.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, location_name: "includedPortalProductArns"))
    UpdatePortalResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    UpdatePortalResponse.add_member(:last_published, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastPublished"))
    UpdatePortalResponse.add_member(:last_published_description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "lastPublishedDescription"))
    UpdatePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "portalArn"))
    UpdatePortalResponse.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, location_name: "portalContent"))
    UpdatePortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "portalId"))
    UpdatePortalResponse.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "preview"))
    UpdatePortalResponse.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    UpdatePortalResponse.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    UpdatePortalResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    UpdatePortalResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdatePortalResponse.struct_class = Types::UpdatePortalResponse

    UpdatePortalResponseContent.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, required: true, location_name: "authorization"))
    UpdatePortalResponseContent.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: EndpointConfigurationResponse, required: true, location_name: "endpointConfiguration"))
    UpdatePortalResponseContent.add_member(:included_portal_product_arns, Shapes::ShapeRef.new(shape: __listOf__stringMin20Max2048, required: true, location_name: "includedPortalProductArns"))
    UpdatePortalResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    UpdatePortalResponseContent.add_member(:last_published, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastPublished"))
    UpdatePortalResponseContent.add_member(:last_published_description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "lastPublishedDescription"))
    UpdatePortalResponseContent.add_member(:portal_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "portalArn"))
    UpdatePortalResponseContent.add_member(:portal_content, Shapes::ShapeRef.new(shape: PortalContent, required: true, location_name: "portalContent"))
    UpdatePortalResponseContent.add_member(:portal_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "portalId"))
    UpdatePortalResponseContent.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "preview"))
    UpdatePortalResponseContent.add_member(:publish_status, Shapes::ShapeRef.new(shape: PublishStatus, location_name: "publishStatus"))
    UpdatePortalResponseContent.add_member(:rum_app_monitor_name, Shapes::ShapeRef.new(shape: __stringMin0Max255, location_name: "rumAppMonitorName"))
    UpdatePortalResponseContent.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    UpdatePortalResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdatePortalResponseContent.struct_class = Types::UpdatePortalResponseContent

    UpdateProductPageRequest.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    UpdateProductPageRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    UpdateProductPageRequest.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "productPageId"))
    UpdateProductPageRequest.struct_class = Types::UpdateProductPageRequest

    UpdateProductPageRequestContent.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    UpdateProductPageRequestContent.struct_class = Types::UpdateProductPageRequestContent

    UpdateProductPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    UpdateProductPageResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    UpdateProductPageResponse.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "productPageArn"))
    UpdateProductPageResponse.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "productPageId"))
    UpdateProductPageResponse.struct_class = Types::UpdateProductPageResponse

    UpdateProductPageResponseContent.add_member(:display_content, Shapes::ShapeRef.new(shape: DisplayContent, location_name: "displayContent"))
    UpdateProductPageResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    UpdateProductPageResponseContent.add_member(:product_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "productPageArn"))
    UpdateProductPageResponseContent.add_member(:product_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "productPageId"))
    UpdateProductPageResponseContent.struct_class = Types::UpdateProductPageResponseContent

    UpdateProductRestEndpointPageRequest.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContent, location_name: "displayContent"))
    UpdateProductRestEndpointPageRequest.add_member(:portal_product_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "portalProductId"))
    UpdateProductRestEndpointPageRequest.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "productRestEndpointPageId"))
    UpdateProductRestEndpointPageRequest.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    UpdateProductRestEndpointPageRequest.struct_class = Types::UpdateProductRestEndpointPageRequest

    UpdateProductRestEndpointPageRequestContent.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContent, location_name: "displayContent"))
    UpdateProductRestEndpointPageRequestContent.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    UpdateProductRestEndpointPageRequestContent.struct_class = Types::UpdateProductRestEndpointPageRequestContent

    UpdateProductRestEndpointPageResponse.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContentResponse, location_name: "displayContent"))
    UpdateProductRestEndpointPageResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    UpdateProductRestEndpointPageResponse.add_member(:product_rest_endpoint_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, location_name: "productRestEndpointPageArn"))
    UpdateProductRestEndpointPageResponse.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, location_name: "productRestEndpointPageId"))
    UpdateProductRestEndpointPageResponse.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, location_name: "restEndpointIdentifier"))
    UpdateProductRestEndpointPageResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    UpdateProductRestEndpointPageResponse.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    UpdateProductRestEndpointPageResponse.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, location_name: "tryItState"))
    UpdateProductRestEndpointPageResponse.struct_class = Types::UpdateProductRestEndpointPageResponse

    UpdateProductRestEndpointPageResponseContent.add_member(:display_content, Shapes::ShapeRef.new(shape: EndpointDisplayContentResponse, required: true, location_name: "displayContent"))
    UpdateProductRestEndpointPageResponseContent.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "lastModified"))
    UpdateProductRestEndpointPageResponseContent.add_member(:product_rest_endpoint_page_arn, Shapes::ShapeRef.new(shape: __stringMin20Max2048, required: true, location_name: "productRestEndpointPageArn"))
    UpdateProductRestEndpointPageResponseContent.add_member(:product_rest_endpoint_page_id, Shapes::ShapeRef.new(shape: __stringMin10Max30PatternAZ09, required: true, location_name: "productRestEndpointPageId"))
    UpdateProductRestEndpointPageResponseContent.add_member(:rest_endpoint_identifier, Shapes::ShapeRef.new(shape: RestEndpointIdentifier, required: true, location_name: "restEndpointIdentifier"))
    UpdateProductRestEndpointPageResponseContent.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    UpdateProductRestEndpointPageResponseContent.add_member(:status_exception, Shapes::ShapeRef.new(shape: StatusException, location_name: "statusException"))
    UpdateProductRestEndpointPageResponseContent.add_member(:try_it_state, Shapes::ShapeRef.new(shape: TryItState, required: true, location_name: "tryItState"))
    UpdateProductRestEndpointPageResponseContent.struct_class = Types::UpdateProductRestEndpointPageResponseContent

    UpdateRouteInput.add_member(:api_key_required, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiKeyRequired"))
    UpdateRouteInput.add_member(:authorization_scopes, Shapes::ShapeRef.new(shape: AuthorizationScopes, location_name: "authorizationScopes"))
    UpdateRouteInput.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, location_name: "authorizationType"))
    UpdateRouteInput.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    UpdateRouteInput.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    UpdateRouteInput.add_member(:operation_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "operationName"))
    UpdateRouteInput.add_member(:request_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "requestModels"))
    UpdateRouteInput.add_member(:request_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "requestParameters"))
    UpdateRouteInput.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    UpdateRouteInput.add_member(:route_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeResponseSelectionExpression"))
    UpdateRouteInput.add_member(:target, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "target"))
    UpdateRouteInput.struct_class = Types::UpdateRouteInput

    UpdateRouteRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateRouteRequest.add_member(:api_key_required, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiKeyRequired"))
    UpdateRouteRequest.add_member(:authorization_scopes, Shapes::ShapeRef.new(shape: AuthorizationScopes, location_name: "authorizationScopes"))
    UpdateRouteRequest.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, location_name: "authorizationType"))
    UpdateRouteRequest.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    UpdateRouteRequest.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    UpdateRouteRequest.add_member(:operation_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "operationName"))
    UpdateRouteRequest.add_member(:request_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "requestModels"))
    UpdateRouteRequest.add_member(:request_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "requestParameters"))
    UpdateRouteRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    UpdateRouteRequest.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    UpdateRouteRequest.add_member(:route_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeResponseSelectionExpression"))
    UpdateRouteRequest.add_member(:target, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "target"))
    UpdateRouteRequest.struct_class = Types::UpdateRouteRequest

    UpdateRouteResponseInput.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    UpdateRouteResponseInput.add_member(:response_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "responseModels"))
    UpdateRouteResponseInput.add_member(:response_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "responseParameters"))
    UpdateRouteResponseInput.add_member(:route_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeResponseKey"))
    UpdateRouteResponseInput.struct_class = Types::UpdateRouteResponseInput

    UpdateRouteResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateRouteResponseRequest.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    UpdateRouteResponseRequest.add_member(:response_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "responseModels"))
    UpdateRouteResponseRequest.add_member(:response_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "responseParameters"))
    UpdateRouteResponseRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    UpdateRouteResponseRequest.add_member(:route_response_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeResponseId"))
    UpdateRouteResponseRequest.add_member(:route_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeResponseKey"))
    UpdateRouteResponseRequest.struct_class = Types::UpdateRouteResponseRequest

    UpdateRouteResponseResponse.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    UpdateRouteResponseResponse.add_member(:response_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "responseModels"))
    UpdateRouteResponseResponse.add_member(:response_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "responseParameters"))
    UpdateRouteResponseResponse.add_member(:route_response_id, Shapes::ShapeRef.new(shape: Id, location_name: "routeResponseId"))
    UpdateRouteResponseResponse.add_member(:route_response_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeResponseKey"))
    UpdateRouteResponseResponse.struct_class = Types::UpdateRouteResponseResponse

    UpdateRouteResult.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    UpdateRouteResult.add_member(:api_key_required, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiKeyRequired"))
    UpdateRouteResult.add_member(:authorization_scopes, Shapes::ShapeRef.new(shape: AuthorizationScopes, location_name: "authorizationScopes"))
    UpdateRouteResult.add_member(:authorization_type, Shapes::ShapeRef.new(shape: AuthorizationType, location_name: "authorizationType"))
    UpdateRouteResult.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    UpdateRouteResult.add_member(:model_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "modelSelectionExpression"))
    UpdateRouteResult.add_member(:operation_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "operationName"))
    UpdateRouteResult.add_member(:request_models, Shapes::ShapeRef.new(shape: RouteModels, location_name: "requestModels"))
    UpdateRouteResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: RouteParameters, location_name: "requestParameters"))
    UpdateRouteResult.add_member(:route_id, Shapes::ShapeRef.new(shape: Id, location_name: "routeId"))
    UpdateRouteResult.add_member(:route_key, Shapes::ShapeRef.new(shape: SelectionKey, location_name: "routeKey"))
    UpdateRouteResult.add_member(:route_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeResponseSelectionExpression"))
    UpdateRouteResult.add_member(:target, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "target"))
    UpdateRouteResult.struct_class = Types::UpdateRouteResult

    UpdateStageInput.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    UpdateStageInput.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeploy"))
    UpdateStageInput.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    UpdateStageInput.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    UpdateStageInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    UpdateStageInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateStageInput.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    UpdateStageInput.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    UpdateStageInput.struct_class = Types::UpdateStageInput

    UpdateStageRequest.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    UpdateStageRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateStageRequest.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeploy"))
    UpdateStageRequest.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    UpdateStageRequest.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    UpdateStageRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    UpdateStageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateStageRequest.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    UpdateStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    UpdateStageRequest.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    UpdateStageRequest.struct_class = Types::UpdateStageRequest

    UpdateStageResponse.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    UpdateStageResponse.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: __boolean, location_name: "apiGatewayManaged"))
    UpdateStageResponse.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoDeploy"))
    UpdateStageResponse.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    UpdateStageResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    UpdateStageResponse.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    UpdateStageResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    UpdateStageResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateStageResponse.add_member(:last_deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "lastDeploymentStatusMessage"))
    UpdateStageResponse.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdatedDate"))
    UpdateStageResponse.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    UpdateStageResponse.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    UpdateStageResponse.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    UpdateStageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateStageResponse.struct_class = Types::UpdateStageResponse

    UpdateVpcLinkInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateVpcLinkInput.struct_class = Types::UpdateVpcLinkInput

    UpdateVpcLinkRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateVpcLinkRequest.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "vpcLinkId"))
    UpdateVpcLinkRequest.struct_class = Types::UpdateVpcLinkRequest

    UpdateVpcLinkResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    UpdateVpcLinkResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateVpcLinkResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    UpdateVpcLinkResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    UpdateVpcLinkResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateVpcLinkResponse.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: Id, location_name: "vpcLinkId"))
    UpdateVpcLinkResponse.add_member(:vpc_link_status, Shapes::ShapeRef.new(shape: VpcLinkStatus, location_name: "vpcLinkStatus"))
    UpdateVpcLinkResponse.add_member(:vpc_link_status_message, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "vpcLinkStatusMessage"))
    UpdateVpcLinkResponse.add_member(:vpc_link_version, Shapes::ShapeRef.new(shape: VpcLinkVersion, location_name: "vpcLinkVersion"))
    UpdateVpcLinkResponse.struct_class = Types::UpdateVpcLinkResponse

    VpcLink.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    VpcLink.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    VpcLink.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "securityGroupIds"))
    VpcLink.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "subnetIds"))
    VpcLink.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    VpcLink.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "vpcLinkId"))
    VpcLink.add_member(:vpc_link_status, Shapes::ShapeRef.new(shape: VpcLinkStatus, location_name: "vpcLinkStatus"))
    VpcLink.add_member(:vpc_link_status_message, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "vpcLinkStatusMessage"))
    VpcLink.add_member(:vpc_link_version, Shapes::ShapeRef.new(shape: VpcLinkVersion, location_name: "vpcLinkVersion"))
    VpcLink.struct_class = Types::VpcLink

    VpcLinks.add_member(:items, Shapes::ShapeRef.new(shape: __listOfVpcLink, location_name: "items"))
    VpcLinks.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    VpcLinks.struct_class = Types::VpcLinks

    __listOfApi.member = Shapes::ShapeRef.new(shape: Api)

    __listOfApiMapping.member = Shapes::ShapeRef.new(shape: ApiMapping)

    __listOfAuthorizer.member = Shapes::ShapeRef.new(shape: Authorizer)

    __listOfDeployment.member = Shapes::ShapeRef.new(shape: Deployment)

    __listOfDomainName.member = Shapes::ShapeRef.new(shape: DomainName)

    __listOfIntegration.member = Shapes::ShapeRef.new(shape: Integration)

    __listOfIntegrationResponse.member = Shapes::ShapeRef.new(shape: IntegrationResponse)

    __listOfModel.member = Shapes::ShapeRef.new(shape: Model)

    __listOfPortalProductSummary.member = Shapes::ShapeRef.new(shape: PortalProductSummary)

    __listOfPortalSummary.member = Shapes::ShapeRef.new(shape: PortalSummary)

    __listOfProductPageSummaryNoBody.member = Shapes::ShapeRef.new(shape: ProductPageSummaryNoBody)

    __listOfProductRestEndpointPageSummaryNoBody.member = Shapes::ShapeRef.new(shape: ProductRestEndpointPageSummaryNoBody)

    __listOfRoute.member = Shapes::ShapeRef.new(shape: Route)

    __listOfRouteResponse.member = Shapes::ShapeRef.new(shape: RouteResponse)

    __listOfRoutingRule.member = Shapes::ShapeRef.new(shape: RoutingRule)

    __listOfRoutingRuleAction.member = Shapes::ShapeRef.new(shape: RoutingRuleAction)

    __listOfRoutingRuleCondition.member = Shapes::ShapeRef.new(shape: RoutingRuleCondition)

    __listOfRoutingRuleMatchHeaderValue.member = Shapes::ShapeRef.new(shape: RoutingRuleMatchHeaderValue)

    __listOfSection.member = Shapes::ShapeRef.new(shape: Section)

    __listOfSelectionKey.member = Shapes::ShapeRef.new(shape: SelectionKey)

    __listOfStage.member = Shapes::ShapeRef.new(shape: Stage)

    __listOfVpcLink.member = Shapes::ShapeRef.new(shape: VpcLink)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __listOf__stringMin20Max2048.member = Shapes::ShapeRef.new(shape: __stringMin20Max2048)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-29"

      api.metadata = {
        "apiVersion" => "2018-11-29",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "apigateway",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AmazonApiGatewayV2",
        "serviceId" => "ApiGatewayV2",
        "signatureVersion" => "v4",
        "signingName" => "apigateway",
        "uid" => "apigatewayv2-2018-11-29",
      }

      api.add_operation(:create_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApi"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis"
        o.input = Shapes::ShapeRef.new(shape: CreateApiRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_api_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApiMapping"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domainnames/{domainName}/apimappings"
        o.input = Shapes::ShapeRef.new(shape: CreateApiMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApiMappingResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAuthorizer"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/authorizers"
        o.input = Shapes::ShapeRef.new(shape: CreateAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/deployments"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_domain_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomainName"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domainnames"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainNameRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/integrations"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationResult)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_integration_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegrationResponse"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModel"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/models"
        o.input = Shapes::ShapeRef.new(shape: CreateModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortal"
        o.http_method = "POST"
        o.http_request_uri = "/v2/portals"
        o.input = Shapes::ShapeRef.new(shape: CreatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_portal_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortalProduct"
        o.http_method = "POST"
        o.http_request_uri = "/v2/portalproducts"
        o.input = Shapes::ShapeRef.new(shape: CreatePortalProductRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePortalProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_product_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProductPage"
        o.http_method = "POST"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productpages"
        o.input = Shapes::ShapeRef.new(shape: CreateProductPageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProductPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_product_rest_endpoint_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProductRestEndpointPage"
        o.http_method = "POST"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productrestendpointpages"
        o.input = Shapes::ShapeRef.new(shape: CreateProductRestEndpointPageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProductRestEndpointPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoute"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/routes"
        o.input = Shapes::ShapeRef.new(shape: CreateRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRouteResult)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_route_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRouteResponse"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}/routeresponses"
        o.input = Shapes::ShapeRef.new(shape: CreateRouteResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRouteResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_routing_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoutingRule"
        o.http_method = "POST"
        o.http_request_uri = "/v2/domainnames/{domainName}/routingrules"
        o.input = Shapes::ShapeRef.new(shape: CreateRoutingRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoutingRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStage"
        o.http_method = "POST"
        o.http_request_uri = "/v2/apis/{apiId}/stages"
        o.input = Shapes::ShapeRef.new(shape: CreateStageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_vpc_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcLink"
        o.http_method = "POST"
        o.http_request_uri = "/v2/vpclinks"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_access_log_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessLogSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/stages/{stageName}/accesslogsettings"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessLogSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApi"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApiRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_api_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApiMapping"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domainnames/{domainName}/apimappings/{apiMappingId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApiMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAuthorizer"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/authorizers/{authorizerId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_cors_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCorsConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/cors"
        o.input = Shapes::ShapeRef.new(shape: DeleteCorsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeployment"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/deployments/{deploymentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_domain_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomainName"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domainnames/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/integrations/{integrationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_integration_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegrationResponse"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/models/{modelId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortal"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/portals/{portalId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_portal_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortalProduct"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePortalProductRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_portal_product_sharing_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortalProductSharingPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/sharingpolicy"
        o.input = Shapes::ShapeRef.new(shape: DeletePortalProductSharingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_product_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProductPage"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productpages/{productPageId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProductPageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_product_rest_endpoint_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProductRestEndpointPage"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productrestendpointpages/{productRestEndpointPageId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProductRestEndpointPageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoute"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_route_request_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRouteRequestParameter"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}/requestparameters/{requestParameterKey}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteRequestParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_route_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRouteResponse"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_route_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRouteSettings"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/stages/{stageName}/routesettings/{routeKey}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_routing_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoutingRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/domainnames/{domainName}/routingrules/{routingRuleId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoutingRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStage"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/stages/{stageName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_vpc_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVpcLink"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/vpclinks/{vpcLinkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVpcLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVpcLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:export_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportApi"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/exports/{specification}"
        o.input = Shapes::ShapeRef.new(shape: ExportApiRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:disable_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisablePortal"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/portals/{portalId}/publish"
        o.input = Shapes::ShapeRef.new(shape: DisablePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:reset_authorizers_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetAuthorizersCache"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/stages/{stageName}/cache/authorizers"
        o.input = Shapes::ShapeRef.new(shape: ResetAuthorizersCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApi"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: GetApiRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_api_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApiMapping"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domainnames/{domainName}/apimappings/{apiMappingId}"
        o.input = Shapes::ShapeRef.new(shape: GetApiMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApiMappingResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_api_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApiMappings"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domainnames/{domainName}/apimappings"
        o.input = Shapes::ShapeRef.new(shape: GetApiMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApiMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_apis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApis"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis"
        o.input = Shapes::ShapeRef.new(shape: GetApisRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApisResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAuthorizer"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/authorizers/{authorizerId}"
        o.input = Shapes::ShapeRef.new(shape: GetAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_authorizers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAuthorizers"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/authorizers"
        o.input = Shapes::ShapeRef.new(shape: GetAuthorizersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAuthorizersResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployment"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/deployments/{deploymentId}"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/deployments"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_domain_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainName"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domainnames/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainNameRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_domain_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainNames"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domainnames"
        o.input = Shapes::ShapeRef.new(shape: GetDomainNamesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegration"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/integrations/{integrationId}"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationResult)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_integration_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegrationResponse"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_integration_responses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegrationResponses"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationResponsesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationResponsesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegrations"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/integrations"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModel"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/models/{modelId}"
        o.input = Shapes::ShapeRef.new(shape: GetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_model_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/models/{modelId}/template"
        o.input = Shapes::ShapeRef.new(shape: GetModelTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModels"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/models"
        o.input = Shapes::ShapeRef.new(shape: GetModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPortal"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portals/{portalId}"
        o.input = Shapes::ShapeRef.new(shape: GetPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_portal_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPortalProduct"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}"
        o.input = Shapes::ShapeRef.new(shape: GetPortalProductRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPortalProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_portal_product_sharing_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPortalProductSharingPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/sharingpolicy"
        o.input = Shapes::ShapeRef.new(shape: GetPortalProductSharingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPortalProductSharingPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_product_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProductPage"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productpages/{productPageId}"
        o.input = Shapes::ShapeRef.new(shape: GetProductPageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProductPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_product_rest_endpoint_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProductRestEndpointPage"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productrestendpointpages/{productRestEndpointPageId}"
        o.input = Shapes::ShapeRef.new(shape: GetProductRestEndpointPageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProductRestEndpointPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoute"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}"
        o.input = Shapes::ShapeRef.new(shape: GetRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouteResult)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_route_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRouteResponse"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}"
        o.input = Shapes::ShapeRef.new(shape: GetRouteResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouteResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_route_responses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRouteResponses"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}/routeresponses"
        o.input = Shapes::ShapeRef.new(shape: GetRouteResponsesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouteResponsesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoutes"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/routes"
        o.input = Shapes::ShapeRef.new(shape: GetRoutesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoutesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_routing_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoutingRule"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domainnames/{domainName}/routingrules/{routingRuleId}"
        o.input = Shapes::ShapeRef.new(shape: GetRoutingRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoutingRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStage"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/stages/{stageName}"
        o.input = Shapes::ShapeRef.new(shape: GetStageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_stages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStages"
        o.http_method = "GET"
        o.http_request_uri = "/v2/apis/{apiId}/stages"
        o.input = Shapes::ShapeRef.new(shape: GetStagesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTags"
        o.http_method = "GET"
        o.http_request_uri = "/v2/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: GetTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_vpc_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVpcLink"
        o.http_method = "GET"
        o.http_request_uri = "/v2/vpclinks/{vpcLinkId}"
        o.input = Shapes::ShapeRef.new(shape: GetVpcLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVpcLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_vpc_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVpcLinks"
        o.http_method = "GET"
        o.http_request_uri = "/v2/vpclinks"
        o.input = Shapes::ShapeRef.new(shape: GetVpcLinksRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVpcLinksResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:import_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportApi"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/apis"
        o.input = Shapes::ShapeRef.new(shape: ImportApiRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_portal_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortalProducts"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portalproducts"
        o.input = Shapes::ShapeRef.new(shape: ListPortalProductsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPortalProductsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_portals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortals"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portals"
        o.input = Shapes::ShapeRef.new(shape: ListPortalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPortalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_product_pages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProductPages"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productpages"
        o.input = Shapes::ShapeRef.new(shape: ListProductPagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProductPagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_product_rest_endpoint_pages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProductRestEndpointPages"
        o.http_method = "GET"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productrestendpointpages"
        o.input = Shapes::ShapeRef.new(shape: ListProductRestEndpointPagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProductRestEndpointPagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_routing_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoutingRules"
        o.http_method = "GET"
        o.http_request_uri = "/v2/domainnames/{domainName}/routingrules"
        o.input = Shapes::ShapeRef.new(shape: ListRoutingRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoutingRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:preview_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PreviewPortal"
        o.http_method = "POST"
        o.http_request_uri = "/v2/portals/{portalId}/preview"
        o.input = Shapes::ShapeRef.new(shape: PreviewPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: PreviewPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:publish_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishPortal"
        o.http_method = "POST"
        o.http_request_uri = "/v2/portals/{portalId}/publish"
        o.input = Shapes::ShapeRef.new(shape: PublishPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: PublishPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_portal_product_sharing_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPortalProductSharingPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/sharingpolicy"
        o.input = Shapes::ShapeRef.new(shape: PutPortalProductSharingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPortalProductSharingPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_routing_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRoutingRule"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/domainnames/{domainName}/routingrules/{routingRuleId}"
        o.input = Shapes::ShapeRef.new(shape: PutRoutingRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRoutingRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:reimport_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReimportApi"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: ReimportApiRequest)
        o.output = Shapes::ShapeRef.new(shape: ReimportApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v2/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApi"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApiRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApiResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_api_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApiMapping"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domainnames/{domainName}/apimappings/{apiMappingId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApiMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApiMappingResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAuthorizer"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}/authorizers/{authorizerId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeployment"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}/deployments/{deploymentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_domain_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainName"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/domainnames/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainNameRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIntegration"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}/integrations/{integrationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIntegrationResult)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_integration_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIntegrationResponse"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIntegrationResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIntegrationResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateModel"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}/models/{modelId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePortal"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/portals/{portalId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_portal_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePortalProduct"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePortalProductRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePortalProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_product_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProductPage"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productpages/{productPageId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProductPageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProductPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_product_rest_endpoint_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProductRestEndpointPage"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/portalproducts/{portalProductId}/productrestendpointpages/{productRestEndpointPageId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProductRestEndpointPageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProductRestEndpointPageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoute"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouteResult)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_route_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRouteResponse"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRouteResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouteResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStage"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/apis/{apiId}/stages/{stageName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_vpc_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVpcLink"
        o.http_method = "PATCH"
        o.http_request_uri = "/v2/vpclinks/{vpcLinkId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVpcLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVpcLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)
    end

  end
end
