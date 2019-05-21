# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApiGatewayV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessLogSettings = Shapes::StructureShape.new(name: 'AccessLogSettings')
    Api = Shapes::StructureShape.new(name: 'Api')
    ApiMapping = Shapes::StructureShape.new(name: 'ApiMapping')
    ApiMappings = Shapes::StructureShape.new(name: 'ApiMappings')
    Apis = Shapes::StructureShape.new(name: 'Apis')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AuthorizationScopes = Shapes::ListShape.new(name: 'AuthorizationScopes')
    AuthorizationType = Shapes::StringShape.new(name: 'AuthorizationType')
    Authorizer = Shapes::StructureShape.new(name: 'Authorizer')
    AuthorizerType = Shapes::StringShape.new(name: 'AuthorizerType')
    Authorizers = Shapes::StructureShape.new(name: 'Authorizers')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ContentHandlingStrategy = Shapes::StringShape.new(name: 'ContentHandlingStrategy')
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
    CreateRouteInput = Shapes::StructureShape.new(name: 'CreateRouteInput')
    CreateRouteRequest = Shapes::StructureShape.new(name: 'CreateRouteRequest')
    CreateRouteResponseInput = Shapes::StructureShape.new(name: 'CreateRouteResponseInput')
    CreateRouteResponseRequest = Shapes::StructureShape.new(name: 'CreateRouteResponseRequest')
    CreateRouteResponseResponse = Shapes::StructureShape.new(name: 'CreateRouteResponseResponse')
    CreateRouteResult = Shapes::StructureShape.new(name: 'CreateRouteResult')
    CreateStageInput = Shapes::StructureShape.new(name: 'CreateStageInput')
    CreateStageRequest = Shapes::StructureShape.new(name: 'CreateStageRequest')
    CreateStageResponse = Shapes::StructureShape.new(name: 'CreateStageResponse')
    DeleteApiMappingRequest = Shapes::StructureShape.new(name: 'DeleteApiMappingRequest')
    DeleteApiRequest = Shapes::StructureShape.new(name: 'DeleteApiRequest')
    DeleteAuthorizerRequest = Shapes::StructureShape.new(name: 'DeleteAuthorizerRequest')
    DeleteDeploymentRequest = Shapes::StructureShape.new(name: 'DeleteDeploymentRequest')
    DeleteDomainNameRequest = Shapes::StructureShape.new(name: 'DeleteDomainNameRequest')
    DeleteIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationRequest')
    DeleteIntegrationResponseRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationResponseRequest')
    DeleteModelRequest = Shapes::StructureShape.new(name: 'DeleteModelRequest')
    DeleteRouteRequest = Shapes::StructureShape.new(name: 'DeleteRouteRequest')
    DeleteRouteResponseRequest = Shapes::StructureShape.new(name: 'DeleteRouteResponseRequest')
    DeleteStageRequest = Shapes::StructureShape.new(name: 'DeleteStageRequest')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    Deployments = Shapes::StructureShape.new(name: 'Deployments')
    DomainName = Shapes::StructureShape.new(name: 'DomainName')
    DomainNameConfiguration = Shapes::StructureShape.new(name: 'DomainNameConfiguration')
    DomainNameConfigurations = Shapes::ListShape.new(name: 'DomainNameConfigurations')
    DomainNames = Shapes::StructureShape.new(name: 'DomainNames')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
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
    GetRouteRequest = Shapes::StructureShape.new(name: 'GetRouteRequest')
    GetRouteResponseRequest = Shapes::StructureShape.new(name: 'GetRouteResponseRequest')
    GetRouteResponseResponse = Shapes::StructureShape.new(name: 'GetRouteResponseResponse')
    GetRouteResponsesRequest = Shapes::StructureShape.new(name: 'GetRouteResponsesRequest')
    GetRouteResponsesResponse = Shapes::StructureShape.new(name: 'GetRouteResponsesResponse')
    GetRouteResult = Shapes::StructureShape.new(name: 'GetRouteResult')
    GetRoutesRequest = Shapes::StructureShape.new(name: 'GetRoutesRequest')
    GetRoutesResponse = Shapes::StructureShape.new(name: 'GetRoutesResponse')
    GetStageRequest = Shapes::StructureShape.new(name: 'GetStageRequest')
    GetStageResponse = Shapes::StructureShape.new(name: 'GetStageResponse')
    GetStagesRequest = Shapes::StructureShape.new(name: 'GetStagesRequest')
    GetStagesResponse = Shapes::StructureShape.new(name: 'GetStagesResponse')
    Id = Shapes::StringShape.new(name: 'Id')
    IdentitySourceList = Shapes::ListShape.new(name: 'IdentitySourceList')
    IntegerWithLengthBetween0And3600 = Shapes::IntegerShape.new(name: 'IntegerWithLengthBetween0And3600')
    IntegerWithLengthBetween50And29000 = Shapes::IntegerShape.new(name: 'IntegerWithLengthBetween50And29000')
    Integration = Shapes::StructureShape.new(name: 'Integration')
    IntegrationParameters = Shapes::MapShape.new(name: 'IntegrationParameters')
    IntegrationResponse = Shapes::StructureShape.new(name: 'IntegrationResponse')
    IntegrationResponses = Shapes::StructureShape.new(name: 'IntegrationResponses')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    Integrations = Shapes::StructureShape.new(name: 'Integrations')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LoggingLevel = Shapes::StringShape.new(name: 'LoggingLevel')
    Model = Shapes::StructureShape.new(name: 'Model')
    Models = Shapes::StructureShape.new(name: 'Models')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    ParameterConstraints = Shapes::StructureShape.new(name: 'ParameterConstraints')
    PassthroughBehavior = Shapes::StringShape.new(name: 'PassthroughBehavior')
    ProtocolType = Shapes::StringShape.new(name: 'ProtocolType')
    ProviderArnList = Shapes::ListShape.new(name: 'ProviderArnList')
    Route = Shapes::StructureShape.new(name: 'Route')
    RouteModels = Shapes::MapShape.new(name: 'RouteModels')
    RouteParameters = Shapes::MapShape.new(name: 'RouteParameters')
    RouteResponse = Shapes::StructureShape.new(name: 'RouteResponse')
    RouteResponses = Shapes::StructureShape.new(name: 'RouteResponses')
    RouteSettings = Shapes::StructureShape.new(name: 'RouteSettings')
    RouteSettingsMap = Shapes::MapShape.new(name: 'RouteSettingsMap')
    Routes = Shapes::StructureShape.new(name: 'Routes')
    SelectionExpression = Shapes::StringShape.new(name: 'SelectionExpression')
    SelectionKey = Shapes::StringShape.new(name: 'SelectionKey')
    Stage = Shapes::StructureShape.new(name: 'Stage')
    StageVariablesMap = Shapes::MapShape.new(name: 'StageVariablesMap')
    Stages = Shapes::StructureShape.new(name: 'Stages')
    StringWithLengthBetween0And1024 = Shapes::StringShape.new(name: 'StringWithLengthBetween0And1024')
    StringWithLengthBetween0And2048 = Shapes::StringShape.new(name: 'StringWithLengthBetween0And2048')
    StringWithLengthBetween0And32K = Shapes::StringShape.new(name: 'StringWithLengthBetween0And32K')
    StringWithLengthBetween1And1024 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And1024')
    StringWithLengthBetween1And128 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And128')
    StringWithLengthBetween1And256 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And256')
    StringWithLengthBetween1And512 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And512')
    StringWithLengthBetween1And64 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And64')
    Template = Shapes::StructureShape.new(name: 'Template')
    TemplateMap = Shapes::MapShape.new(name: 'TemplateMap')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
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
    UpdateRouteInput = Shapes::StructureShape.new(name: 'UpdateRouteInput')
    UpdateRouteRequest = Shapes::StructureShape.new(name: 'UpdateRouteRequest')
    UpdateRouteResponseInput = Shapes::StructureShape.new(name: 'UpdateRouteResponseInput')
    UpdateRouteResponseRequest = Shapes::StructureShape.new(name: 'UpdateRouteResponseRequest')
    UpdateRouteResponseResponse = Shapes::StructureShape.new(name: 'UpdateRouteResponseResponse')
    UpdateRouteResult = Shapes::StructureShape.new(name: 'UpdateRouteResult')
    UpdateStageInput = Shapes::StructureShape.new(name: 'UpdateStageInput')
    UpdateStageRequest = Shapes::StructureShape.new(name: 'UpdateStageRequest')
    UpdateStageResponse = Shapes::StructureShape.new(name: 'UpdateStageResponse')
    UriWithLengthBetween1And2048 = Shapes::StringShape.new(name: 'UriWithLengthBetween1And2048')
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
    __listOfRoute = Shapes::ListShape.new(name: '__listOfRoute')
    __listOfRouteResponse = Shapes::ListShape.new(name: '__listOfRouteResponse')
    __listOfStage = Shapes::ListShape.new(name: '__listOfStage')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AccessLogSettings.add_member(:destination_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "destinationArn"))
    AccessLogSettings.add_member(:format, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "format"))
    AccessLogSettings.struct_class = Types::AccessLogSettings

    Api.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    Api.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    Api.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    Api.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    Api.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Api.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    Api.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    Api.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, required: true, location_name: "protocolType"))
    Api.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, required: true, location_name: "routeSelectionExpression"))
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

    AuthorizationScopes.member = Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64)

    Authorizer.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    Authorizer.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    Authorizer.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    Authorizer.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    Authorizer.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    Authorizer.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    Authorizer.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    Authorizer.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    Authorizer.add_member(:provider_arns, Shapes::ShapeRef.new(shape: ProviderArnList, location_name: "providerArns"))
    Authorizer.struct_class = Types::Authorizer

    Authorizers.add_member(:items, Shapes::ShapeRef.new(shape: __listOfAuthorizer, location_name: "items"))
    Authorizers.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Authorizers.struct_class = Types::Authorizers

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApiInput.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    CreateApiInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateApiInput.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    CreateApiInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateApiInput.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, required: true, location_name: "protocolType"))
    CreateApiInput.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, required: true, location_name: "routeSelectionExpression"))
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
    CreateApiRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateApiRequest.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    CreateApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateApiRequest.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, required: true, location_name: "protocolType"))
    CreateApiRequest.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, required: true, location_name: "routeSelectionExpression"))
    CreateApiRequest.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    CreateApiRequest.struct_class = Types::CreateApiRequest

    CreateApiResponse.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    CreateApiResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    CreateApiResponse.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    CreateApiResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    CreateApiResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateApiResponse.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    CreateApiResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    CreateApiResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "protocolType"))
    CreateApiResponse.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    CreateApiResponse.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    CreateApiResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "warnings"))
    CreateApiResponse.struct_class = Types::CreateApiResponse

    CreateAuthorizerInput.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    CreateAuthorizerInput.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    CreateAuthorizerInput.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    CreateAuthorizerInput.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, required: true, location_name: "authorizerUri"))
    CreateAuthorizerInput.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, required: true, location_name: "identitySource"))
    CreateAuthorizerInput.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    CreateAuthorizerInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateAuthorizerInput.add_member(:provider_arns, Shapes::ShapeRef.new(shape: ProviderArnList, location_name: "providerArns"))
    CreateAuthorizerInput.struct_class = Types::CreateAuthorizerInput

    CreateAuthorizerRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateAuthorizerRequest.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    CreateAuthorizerRequest.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    CreateAuthorizerRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    CreateAuthorizerRequest.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, required: true, location_name: "authorizerUri"))
    CreateAuthorizerRequest.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, required: true, location_name: "identitySource"))
    CreateAuthorizerRequest.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    CreateAuthorizerRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    CreateAuthorizerRequest.add_member(:provider_arns, Shapes::ShapeRef.new(shape: ProviderArnList, location_name: "providerArns"))
    CreateAuthorizerRequest.struct_class = Types::CreateAuthorizerRequest

    CreateAuthorizerResponse.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    CreateAuthorizerResponse.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    CreateAuthorizerResponse.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    CreateAuthorizerResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    CreateAuthorizerResponse.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    CreateAuthorizerResponse.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    CreateAuthorizerResponse.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    CreateAuthorizerResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    CreateAuthorizerResponse.add_member(:provider_arns, Shapes::ShapeRef.new(shape: ProviderArnList, location_name: "providerArns"))
    CreateAuthorizerResponse.struct_class = Types::CreateAuthorizerResponse

    CreateDeploymentInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateDeploymentInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    CreateDeploymentInput.struct_class = Types::CreateDeploymentInput

    CreateDeploymentRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateDeploymentRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateDeploymentRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    CreateDeploymentRequest.struct_class = Types::CreateDeploymentRequest

    CreateDeploymentResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    CreateDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    CreateDeploymentResponse.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    CreateDeploymentResponse.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "deploymentStatusMessage"))
    CreateDeploymentResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateDeploymentResponse.struct_class = Types::CreateDeploymentResponse

    CreateDomainNameInput.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, required: true, location_name: "domainName"))
    CreateDomainNameInput.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    CreateDomainNameInput.struct_class = Types::CreateDomainNameInput

    CreateDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, required: true, location_name: "domainName"))
    CreateDomainNameRequest.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    CreateDomainNameRequest.struct_class = Types::CreateDomainNameRequest

    CreateDomainNameResponse.add_member(:api_mapping_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiMappingSelectionExpression"))
    CreateDomainNameResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, location_name: "domainName"))
    CreateDomainNameResponse.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    CreateDomainNameResponse.struct_class = Types::CreateDomainNameResponse

    CreateIntegrationInput.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    CreateIntegrationInput.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    CreateIntegrationInput.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationInput.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    CreateIntegrationInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateIntegrationInput.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    CreateIntegrationInput.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    CreateIntegrationInput.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    CreateIntegrationInput.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    CreateIntegrationInput.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    CreateIntegrationInput.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    CreateIntegrationInput.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationInput.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And29000, location_name: "timeoutInMillis"))
    CreateIntegrationInput.struct_class = Types::CreateIntegrationInput

    CreateIntegrationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateIntegrationRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    CreateIntegrationRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    CreateIntegrationRequest.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationRequest.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    CreateIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateIntegrationRequest.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    CreateIntegrationRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    CreateIntegrationRequest.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    CreateIntegrationRequest.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    CreateIntegrationRequest.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    CreateIntegrationRequest.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    CreateIntegrationRequest.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationRequest.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And29000, location_name: "timeoutInMillis"))
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

    CreateIntegrationResult.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    CreateIntegrationResult.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    CreateIntegrationResult.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    CreateIntegrationResult.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    CreateIntegrationResult.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateIntegrationResult.add_member(:integration_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationId"))
    CreateIntegrationResult.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    CreateIntegrationResult.add_member(:integration_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "integrationResponseSelectionExpression"))
    CreateIntegrationResult.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    CreateIntegrationResult.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    CreateIntegrationResult.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    CreateIntegrationResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    CreateIntegrationResult.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    CreateIntegrationResult.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    CreateIntegrationResult.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And29000, location_name: "timeoutInMillis"))
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

    CreateStageInput.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    CreateStageInput.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    CreateStageInput.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    CreateStageInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    CreateStageInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateStageInput.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    CreateStageInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stageName"))
    CreateStageInput.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    CreateStageInput.struct_class = Types::CreateStageInput

    CreateStageRequest.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    CreateStageRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    CreateStageRequest.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    CreateStageRequest.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    CreateStageRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    CreateStageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateStageRequest.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    CreateStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stageName"))
    CreateStageRequest.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    CreateStageRequest.struct_class = Types::CreateStageRequest

    CreateStageResponse.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    CreateStageResponse.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    CreateStageResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    CreateStageResponse.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    CreateStageResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    CreateStageResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    CreateStageResponse.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdatedDate"))
    CreateStageResponse.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    CreateStageResponse.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    CreateStageResponse.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    CreateStageResponse.struct_class = Types::CreateStageResponse

    DeleteApiMappingRequest.add_member(:api_mapping_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiMappingId"))
    DeleteApiMappingRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    DeleteApiMappingRequest.struct_class = Types::DeleteApiMappingRequest

    DeleteApiRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteApiRequest.struct_class = Types::DeleteApiRequest

    DeleteAuthorizerRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteAuthorizerRequest.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "authorizerId"))
    DeleteAuthorizerRequest.struct_class = Types::DeleteAuthorizerRequest

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

    DeleteRouteRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteRouteRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    DeleteRouteRequest.struct_class = Types::DeleteRouteRequest

    DeleteRouteResponseRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteRouteResponseRequest.add_member(:route_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeId"))
    DeleteRouteResponseRequest.add_member(:route_response_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "routeResponseId"))
    DeleteRouteResponseRequest.struct_class = Types::DeleteRouteResponseRequest

    DeleteStageRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    DeleteStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    DeleteStageRequest.struct_class = Types::DeleteStageRequest

    Deployment.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    Deployment.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    Deployment.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    Deployment.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "deploymentStatusMessage"))
    Deployment.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Deployment.struct_class = Types::Deployment

    Deployments.add_member(:items, Shapes::ShapeRef.new(shape: __listOfDeployment, location_name: "items"))
    Deployments.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Deployments.struct_class = Types::Deployments

    DomainName.add_member(:api_mapping_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiMappingSelectionExpression"))
    DomainName.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, required: true, location_name: "domainName"))
    DomainName.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    DomainName.struct_class = Types::DomainName

    DomainNameConfiguration.add_member(:api_gateway_domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "apiGatewayDomainName"))
    DomainNameConfiguration.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "certificateArn"))
    DomainNameConfiguration.add_member(:certificate_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "certificateName"))
    DomainNameConfiguration.add_member(:certificate_upload_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "certificateUploadDate"))
    DomainNameConfiguration.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "endpointType"))
    DomainNameConfiguration.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: __string, location_name: "hostedZoneId"))
    DomainNameConfiguration.struct_class = Types::DomainNameConfiguration

    DomainNameConfigurations.member = Shapes::ShapeRef.new(shape: DomainNameConfiguration)

    DomainNames.add_member(:items, Shapes::ShapeRef.new(shape: __listOfDomainName, location_name: "items"))
    DomainNames.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DomainNames.struct_class = Types::DomainNames

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
    GetApiResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    GetApiResponse.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    GetApiResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    GetApiResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    GetApiResponse.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    GetApiResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    GetApiResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "protocolType"))
    GetApiResponse.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
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
    GetAuthorizerResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    GetAuthorizerResponse.add_member(:provider_arns, Shapes::ShapeRef.new(shape: ProviderArnList, location_name: "providerArns"))
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
    GetDomainNameResponse.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
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

    GetIntegrationResult.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    GetIntegrationResult.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    GetIntegrationResult.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    GetIntegrationResult.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    GetIntegrationResult.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    GetIntegrationResult.add_member(:integration_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationId"))
    GetIntegrationResult.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    GetIntegrationResult.add_member(:integration_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "integrationResponseSelectionExpression"))
    GetIntegrationResult.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    GetIntegrationResult.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    GetIntegrationResult.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    GetIntegrationResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    GetIntegrationResult.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    GetIntegrationResult.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    GetIntegrationResult.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And29000, location_name: "timeoutInMillis"))
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

    GetStageRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    GetStageRequest.struct_class = Types::GetStageRequest

    GetStageResponse.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    GetStageResponse.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    GetStageResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    GetStageResponse.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    GetStageResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    GetStageResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    GetStageResponse.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdatedDate"))
    GetStageResponse.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    GetStageResponse.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    GetStageResponse.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    GetStageResponse.struct_class = Types::GetStageResponse

    GetStagesRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    GetStagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    GetStagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetStagesRequest.struct_class = Types::GetStagesRequest

    GetStagesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfStage, location_name: "items"))
    GetStagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetStagesResponse.struct_class = Types::GetStagesResponse

    IdentitySourceList.member = Shapes::ShapeRef.new(shape: __string)

    Integration.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    Integration.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    Integration.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    Integration.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    Integration.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Integration.add_member(:integration_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationId"))
    Integration.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    Integration.add_member(:integration_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "integrationResponseSelectionExpression"))
    Integration.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    Integration.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    Integration.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    Integration.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    Integration.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    Integration.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    Integration.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And29000, location_name: "timeoutInMillis"))
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

    LimitExceededException.add_member(:limit_type, Shapes::ShapeRef.new(shape: __string, location_name: "limitType"))
    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    Model.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And256, location_name: "contentType"))
    Model.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Model.add_member(:model_id, Shapes::ShapeRef.new(shape: Id, location_name: "modelId"))
    Model.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "name"))
    Model.add_member(:schema, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K, location_name: "schema"))
    Model.struct_class = Types::Model

    Models.add_member(:items, Shapes::ShapeRef.new(shape: __listOfModel, location_name: "items"))
    Models.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Models.struct_class = Types::Models

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location_name: "resourceType"))
    NotFoundException.struct_class = Types::NotFoundException

    ParameterConstraints.add_member(:required, Shapes::ShapeRef.new(shape: __boolean, location_name: "required"))
    ParameterConstraints.struct_class = Types::ParameterConstraints

    ProviderArnList.member = Shapes::ShapeRef.new(shape: Arn)

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

    Stage.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    Stage.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    Stage.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    Stage.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    Stage.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    Stage.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    Stage.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdatedDate"))
    Stage.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    Stage.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, required: true, location_name: "stageName"))
    Stage.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    Stage.struct_class = Types::Stage

    StageVariablesMap.key = Shapes::ShapeRef.new(shape: __string)
    StageVariablesMap.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween0And2048)

    Stages.add_member(:items, Shapes::ShapeRef.new(shape: __listOfStage, location_name: "items"))
    Stages.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    Stages.struct_class = Types::Stages

    Template.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    Template.struct_class = Types::Template

    TemplateMap.key = Shapes::ShapeRef.new(shape: __string)
    TemplateMap.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32K)

    TooManyRequestsException.add_member(:limit_type, Shapes::ShapeRef.new(shape: __string, location_name: "limitType"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UpdateApiInput.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    UpdateApiInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateApiInput.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    UpdateApiInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateApiInput.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
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
    UpdateApiRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateApiRequest.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    UpdateApiRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateApiRequest.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    UpdateApiRequest.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    UpdateApiRequest.struct_class = Types::UpdateApiRequest

    UpdateApiResponse.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "apiEndpoint"))
    UpdateApiResponse.add_member(:api_id, Shapes::ShapeRef.new(shape: Id, location_name: "apiId"))
    UpdateApiResponse.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiKeySelectionExpression"))
    UpdateApiResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    UpdateApiResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateApiResponse.add_member(:disable_schema_validation, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableSchemaValidation"))
    UpdateApiResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateApiResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: ProtocolType, location_name: "protocolType"))
    UpdateApiResponse.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "routeSelectionExpression"))
    UpdateApiResponse.add_member(:version, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "version"))
    UpdateApiResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "warnings"))
    UpdateApiResponse.struct_class = Types::UpdateApiResponse

    UpdateAuthorizerInput.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    UpdateAuthorizerInput.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    UpdateAuthorizerInput.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    UpdateAuthorizerInput.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    UpdateAuthorizerInput.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    UpdateAuthorizerInput.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    UpdateAuthorizerInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateAuthorizerInput.add_member(:provider_arns, Shapes::ShapeRef.new(shape: ProviderArnList, location_name: "providerArns"))
    UpdateAuthorizerInput.struct_class = Types::UpdateAuthorizerInput

    UpdateAuthorizerRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateAuthorizerRequest.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    UpdateAuthorizerRequest.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "authorizerId"))
    UpdateAuthorizerRequest.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    UpdateAuthorizerRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    UpdateAuthorizerRequest.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    UpdateAuthorizerRequest.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    UpdateAuthorizerRequest.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    UpdateAuthorizerRequest.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateAuthorizerRequest.add_member(:provider_arns, Shapes::ShapeRef.new(shape: ProviderArnList, location_name: "providerArns"))
    UpdateAuthorizerRequest.struct_class = Types::UpdateAuthorizerRequest

    UpdateAuthorizerResponse.add_member(:authorizer_credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorizerCredentialsArn"))
    UpdateAuthorizerResponse.add_member(:authorizer_id, Shapes::ShapeRef.new(shape: Id, location_name: "authorizerId"))
    UpdateAuthorizerResponse.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween0And3600, location_name: "authorizerResultTtlInSeconds"))
    UpdateAuthorizerResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, location_name: "authorizerType"))
    UpdateAuthorizerResponse.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "authorizerUri"))
    UpdateAuthorizerResponse.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceList, location_name: "identitySource"))
    UpdateAuthorizerResponse.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "identityValidationExpression"))
    UpdateAuthorizerResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "name"))
    UpdateAuthorizerResponse.add_member(:provider_arns, Shapes::ShapeRef.new(shape: ProviderArnList, location_name: "providerArns"))
    UpdateAuthorizerResponse.struct_class = Types::UpdateAuthorizerResponse

    UpdateDeploymentInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateDeploymentInput.struct_class = Types::UpdateDeploymentInput

    UpdateDeploymentRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deploymentId"))
    UpdateDeploymentRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateDeploymentRequest.struct_class = Types::UpdateDeploymentRequest

    UpdateDeploymentResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    UpdateDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    UpdateDeploymentResponse.add_member(:deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "deploymentStatus"))
    UpdateDeploymentResponse.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: __string, location_name: "deploymentStatusMessage"))
    UpdateDeploymentResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateDeploymentResponse.struct_class = Types::UpdateDeploymentResponse

    UpdateDomainNameInput.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    UpdateDomainNameInput.struct_class = Types::UpdateDomainNameInput

    UpdateDomainNameRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "domainName"))
    UpdateDomainNameRequest.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    UpdateDomainNameRequest.struct_class = Types::UpdateDomainNameRequest

    UpdateDomainNameResponse.add_member(:api_mapping_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "apiMappingSelectionExpression"))
    UpdateDomainNameResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And512, location_name: "domainName"))
    UpdateDomainNameResponse.add_member(:domain_name_configurations, Shapes::ShapeRef.new(shape: DomainNameConfigurations, location_name: "domainNameConfigurations"))
    UpdateDomainNameResponse.struct_class = Types::UpdateDomainNameResponse

    UpdateIntegrationInput.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    UpdateIntegrationInput.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    UpdateIntegrationInput.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationInput.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    UpdateIntegrationInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateIntegrationInput.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    UpdateIntegrationInput.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    UpdateIntegrationInput.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    UpdateIntegrationInput.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    UpdateIntegrationInput.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    UpdateIntegrationInput.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    UpdateIntegrationInput.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationInput.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And29000, location_name: "timeoutInMillis"))
    UpdateIntegrationInput.struct_class = Types::UpdateIntegrationInput

    UpdateIntegrationRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateIntegrationRequest.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    UpdateIntegrationRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    UpdateIntegrationRequest.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationRequest.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    UpdateIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateIntegrationRequest.add_member(:integration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "integrationId"))
    UpdateIntegrationRequest.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    UpdateIntegrationRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    UpdateIntegrationRequest.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    UpdateIntegrationRequest.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    UpdateIntegrationRequest.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    UpdateIntegrationRequest.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    UpdateIntegrationRequest.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationRequest.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And29000, location_name: "timeoutInMillis"))
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

    UpdateIntegrationResult.add_member(:connection_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And1024, location_name: "connectionId"))
    UpdateIntegrationResult.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "connectionType"))
    UpdateIntegrationResult.add_member(:content_handling_strategy, Shapes::ShapeRef.new(shape: ContentHandlingStrategy, location_name: "contentHandlingStrategy"))
    UpdateIntegrationResult.add_member(:credentials_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "credentialsArn"))
    UpdateIntegrationResult.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateIntegrationResult.add_member(:integration_id, Shapes::ShapeRef.new(shape: Id, location_name: "integrationId"))
    UpdateIntegrationResult.add_member(:integration_method, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: "integrationMethod"))
    UpdateIntegrationResult.add_member(:integration_response_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "integrationResponseSelectionExpression"))
    UpdateIntegrationResult.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    UpdateIntegrationResult.add_member(:integration_uri, Shapes::ShapeRef.new(shape: UriWithLengthBetween1And2048, location_name: "integrationUri"))
    UpdateIntegrationResult.add_member(:passthrough_behavior, Shapes::ShapeRef.new(shape: PassthroughBehavior, location_name: "passthroughBehavior"))
    UpdateIntegrationResult.add_member(:request_parameters, Shapes::ShapeRef.new(shape: IntegrationParameters, location_name: "requestParameters"))
    UpdateIntegrationResult.add_member(:request_templates, Shapes::ShapeRef.new(shape: TemplateMap, location_name: "requestTemplates"))
    UpdateIntegrationResult.add_member(:template_selection_expression, Shapes::ShapeRef.new(shape: SelectionExpression, location_name: "templateSelectionExpression"))
    UpdateIntegrationResult.add_member(:timeout_in_millis, Shapes::ShapeRef.new(shape: IntegerWithLengthBetween50And29000, location_name: "timeoutInMillis"))
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
    UpdateStageInput.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    UpdateStageInput.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    UpdateStageInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    UpdateStageInput.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateStageInput.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    UpdateStageInput.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    UpdateStageInput.struct_class = Types::UpdateStageInput

    UpdateStageRequest.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    UpdateStageRequest.add_member(:api_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "apiId"))
    UpdateStageRequest.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    UpdateStageRequest.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    UpdateStageRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    UpdateStageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateStageRequest.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    UpdateStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "stageName"))
    UpdateStageRequest.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    UpdateStageRequest.struct_class = Types::UpdateStageRequest

    UpdateStageResponse.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AccessLogSettings, location_name: "accessLogSettings"))
    UpdateStageResponse.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: Id, location_name: "clientCertificateId"))
    UpdateStageResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdDate"))
    UpdateStageResponse.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: RouteSettings, location_name: "defaultRouteSettings"))
    UpdateStageResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Id, location_name: "deploymentId"))
    UpdateStageResponse.add_member(:description, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And1024, location_name: "description"))
    UpdateStageResponse.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdatedDate"))
    UpdateStageResponse.add_member(:route_settings, Shapes::ShapeRef.new(shape: RouteSettingsMap, location_name: "routeSettings"))
    UpdateStageResponse.add_member(:stage_name, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And128, location_name: "stageName"))
    UpdateStageResponse.add_member(:stage_variables, Shapes::ShapeRef.new(shape: StageVariablesMap, location_name: "stageVariables"))
    UpdateStageResponse.struct_class = Types::UpdateStageResponse

    __listOfApi.member = Shapes::ShapeRef.new(shape: Api)

    __listOfApiMapping.member = Shapes::ShapeRef.new(shape: ApiMapping)

    __listOfAuthorizer.member = Shapes::ShapeRef.new(shape: Authorizer)

    __listOfDeployment.member = Shapes::ShapeRef.new(shape: Deployment)

    __listOfDomainName.member = Shapes::ShapeRef.new(shape: DomainName)

    __listOfIntegration.member = Shapes::ShapeRef.new(shape: Integration)

    __listOfIntegrationResponse.member = Shapes::ShapeRef.new(shape: IntegrationResponse)

    __listOfModel.member = Shapes::ShapeRef.new(shape: Model)

    __listOfRoute.member = Shapes::ShapeRef.new(shape: Route)

    __listOfRouteResponse.member = Shapes::ShapeRef.new(shape: RouteResponse)

    __listOfStage.member = Shapes::ShapeRef.new(shape: Stage)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-29"

      api.metadata = {
        "apiVersion" => "2018-11-29",
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

      api.add_operation(:delete_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoute"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/routes/{routeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteRequest)
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

      api.add_operation(:delete_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStage"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/apis/{apiId}/stages/{stageName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStageRequest)
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

      api.add_authorizer(:authorization_strategy, Seahorse::Model::Authorizer.new.tap do |a|
        a.name = "authorization_strategy"
        a.type = "provided"
        a.placement = {
          :location => "header",
          :name => "Authorization"
        }
      end)
    end

  end
end
