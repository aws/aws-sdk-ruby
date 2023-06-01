# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHubRefactorSpaces
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AdditionalDetails = Shapes::MapShape.new(name: 'AdditionalDetails')
    AdditionalDetailsKey = Shapes::StringShape.new(name: 'AdditionalDetailsKey')
    AdditionalDetailsValue = Shapes::StringShape.new(name: 'AdditionalDetailsValue')
    ApiGatewayEndpointType = Shapes::StringShape.new(name: 'ApiGatewayEndpointType')
    ApiGatewayId = Shapes::StringShape.new(name: 'ApiGatewayId')
    ApiGatewayProxyConfig = Shapes::StructureShape.new(name: 'ApiGatewayProxyConfig')
    ApiGatewayProxyInput = Shapes::StructureShape.new(name: 'ApiGatewayProxyInput')
    ApiGatewayProxySummary = Shapes::StructureShape.new(name: 'ApiGatewayProxySummary')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationState = Shapes::StringShape.new(name: 'ApplicationState')
    ApplicationSummaries = Shapes::ListShape.new(name: 'ApplicationSummaries')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CidrBlock = Shapes::StringShape.new(name: 'CidrBlock')
    CidrBlocks = Shapes::ListShape.new(name: 'CidrBlocks')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentResponse')
    CreateRouteRequest = Shapes::StructureShape.new(name: 'CreateRouteRequest')
    CreateRouteResponse = Shapes::StructureShape.new(name: 'CreateRouteResponse')
    CreateServiceRequest = Shapes::StructureShape.new(name: 'CreateServiceRequest')
    CreateServiceResponse = Shapes::StructureShape.new(name: 'CreateServiceResponse')
    DefaultRouteInput = Shapes::StructureShape.new(name: 'DefaultRouteInput')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteRouteRequest = Shapes::StructureShape.new(name: 'DeleteRouteRequest')
    DeleteRouteResponse = Shapes::StructureShape.new(name: 'DeleteRouteResponse')
    DeleteServiceRequest = Shapes::StructureShape.new(name: 'DeleteServiceRequest')
    DeleteServiceResponse = Shapes::StructureShape.new(name: 'DeleteServiceResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Ec2TagValue = Shapes::StringShape.new(name: 'Ec2TagValue')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentState = Shapes::StringShape.new(name: 'EnvironmentState')
    EnvironmentSummaries = Shapes::ListShape.new(name: 'EnvironmentSummaries')
    EnvironmentSummary = Shapes::StructureShape.new(name: 'EnvironmentSummary')
    EnvironmentVpc = Shapes::StructureShape.new(name: 'EnvironmentVpc')
    EnvironmentVpcs = Shapes::ListShape.new(name: 'EnvironmentVpcs')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorResourceType = Shapes::StringShape.new(name: 'ErrorResourceType')
    ErrorResponse = Shapes::StructureShape.new(name: 'ErrorResponse')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Shapes::StructureShape.new(name: 'GetEnvironmentResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetRouteRequest = Shapes::StructureShape.new(name: 'GetRouteRequest')
    GetRouteResponse = Shapes::StructureShape.new(name: 'GetRouteResponse')
    GetServiceRequest = Shapes::StructureShape.new(name: 'GetServiceRequest')
    GetServiceResponse = Shapes::StructureShape.new(name: 'GetServiceResponse')
    HttpMethod = Shapes::StringShape.new(name: 'HttpMethod')
    HttpMethods = Shapes::ListShape.new(name: 'HttpMethods')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidResourcePolicyException = Shapes::StructureShape.new(name: 'InvalidResourcePolicyException')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LambdaEndpointConfig = Shapes::StructureShape.new(name: 'LambdaEndpointConfig')
    LambdaEndpointInput = Shapes::StructureShape.new(name: 'LambdaEndpointInput')
    LambdaEndpointSummary = Shapes::StructureShape.new(name: 'LambdaEndpointSummary')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListEnvironmentVpcsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentVpcsRequest')
    ListEnvironmentVpcsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentVpcsResponse')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentsResponse')
    ListRoutesRequest = Shapes::StructureShape.new(name: 'ListRoutesRequest')
    ListRoutesResponse = Shapes::StructureShape.new(name: 'ListRoutesResponse')
    ListServicesRequest = Shapes::StructureShape.new(name: 'ListServicesRequest')
    ListServicesResponse = Shapes::StructureShape.new(name: 'ListServicesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkFabricType = Shapes::StringShape.new(name: 'NetworkFabricType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NlbArn = Shapes::StringShape.new(name: 'NlbArn')
    NlbName = Shapes::StringShape.new(name: 'NlbName')
    PathResourceToId = Shapes::MapShape.new(name: 'PathResourceToId')
    PathResourceToIdKey = Shapes::StringShape.new(name: 'PathResourceToIdKey')
    PathResourceToIdValue = Shapes::StringShape.new(name: 'PathResourceToIdValue')
    PolicyString = Shapes::StringShape.new(name: 'PolicyString')
    ProxyType = Shapes::StringShape.new(name: 'ProxyType')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicyIdentifier = Shapes::StringShape.new(name: 'ResourcePolicyIdentifier')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    RouteActivationState = Shapes::StringShape.new(name: 'RouteActivationState')
    RouteId = Shapes::StringShape.new(name: 'RouteId')
    RouteState = Shapes::StringShape.new(name: 'RouteState')
    RouteSummaries = Shapes::ListShape.new(name: 'RouteSummaries')
    RouteSummary = Shapes::StructureShape.new(name: 'RouteSummary')
    RouteType = Shapes::StringShape.new(name: 'RouteType')
    ServiceEndpointType = Shapes::StringShape.new(name: 'ServiceEndpointType')
    ServiceId = Shapes::StringShape.new(name: 'ServiceId')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceState = Shapes::StringShape.new(name: 'ServiceState')
    ServiceSummaries = Shapes::ListShape.new(name: 'ServiceSummaries')
    ServiceSummary = Shapes::StructureShape.new(name: 'ServiceSummary')
    StageName = Shapes::StringShape.new(name: 'StageName')
    String = Shapes::StringShape.new(name: 'String')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagMapKeyString = Shapes::StringShape.new(name: 'TagMapKeyString')
    TagMapValueString = Shapes::StringShape.new(name: 'TagMapValueString')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransitGatewayId = Shapes::StringShape.new(name: 'TransitGatewayId')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateRouteRequest = Shapes::StructureShape.new(name: 'UpdateRouteRequest')
    UpdateRouteResponse = Shapes::StructureShape.new(name: 'UpdateRouteResponse')
    Uri = Shapes::StringShape.new(name: 'Uri')
    UriPath = Shapes::StringShape.new(name: 'UriPath')
    UriPathRouteInput = Shapes::StructureShape.new(name: 'UriPathRouteInput')
    UrlEndpointConfig = Shapes::StructureShape.new(name: 'UrlEndpointConfig')
    UrlEndpointInput = Shapes::StructureShape.new(name: 'UrlEndpointInput')
    UrlEndpointSummary = Shapes::StructureShape.new(name: 'UrlEndpointSummary')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    VpcLinkId = Shapes::StringShape.new(name: 'VpcLinkId')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AdditionalDetails.key = Shapes::ShapeRef.new(shape: AdditionalDetailsKey)
    AdditionalDetails.value = Shapes::ShapeRef.new(shape: AdditionalDetailsValue)

    ApiGatewayProxyConfig.add_member(:api_gateway_id, Shapes::ShapeRef.new(shape: ApiGatewayId, location_name: "ApiGatewayId"))
    ApiGatewayProxyConfig.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ApiGatewayEndpointType, location_name: "EndpointType"))
    ApiGatewayProxyConfig.add_member(:nlb_arn, Shapes::ShapeRef.new(shape: NlbArn, location_name: "NlbArn"))
    ApiGatewayProxyConfig.add_member(:nlb_name, Shapes::ShapeRef.new(shape: NlbName, location_name: "NlbName"))
    ApiGatewayProxyConfig.add_member(:proxy_url, Shapes::ShapeRef.new(shape: Uri, location_name: "ProxyUrl"))
    ApiGatewayProxyConfig.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, location_name: "StageName"))
    ApiGatewayProxyConfig.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: VpcLinkId, location_name: "VpcLinkId"))
    ApiGatewayProxyConfig.struct_class = Types::ApiGatewayProxyConfig

    ApiGatewayProxyInput.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ApiGatewayEndpointType, location_name: "EndpointType"))
    ApiGatewayProxyInput.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, location_name: "StageName"))
    ApiGatewayProxyInput.struct_class = Types::ApiGatewayProxyInput

    ApiGatewayProxySummary.add_member(:api_gateway_id, Shapes::ShapeRef.new(shape: ApiGatewayId, location_name: "ApiGatewayId"))
    ApiGatewayProxySummary.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ApiGatewayEndpointType, location_name: "EndpointType"))
    ApiGatewayProxySummary.add_member(:nlb_arn, Shapes::ShapeRef.new(shape: NlbArn, location_name: "NlbArn"))
    ApiGatewayProxySummary.add_member(:nlb_name, Shapes::ShapeRef.new(shape: NlbName, location_name: "NlbName"))
    ApiGatewayProxySummary.add_member(:proxy_url, Shapes::ShapeRef.new(shape: Uri, location_name: "ProxyUrl"))
    ApiGatewayProxySummary.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, location_name: "StageName"))
    ApiGatewayProxySummary.add_member(:vpc_link_id, Shapes::ShapeRef.new(shape: VpcLinkId, location_name: "VpcLinkId"))
    ApiGatewayProxySummary.struct_class = Types::ApiGatewayProxySummary

    ApplicationSummaries.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationSummary.add_member(:api_gateway_proxy, Shapes::ShapeRef.new(shape: ApiGatewayProxySummary, location_name: "ApiGatewayProxy"))
    ApplicationSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    ApplicationSummary.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    ApplicationSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ApplicationSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    ApplicationSummary.add_member(:error, Shapes::ShapeRef.new(shape: ErrorResponse, location_name: "Error"))
    ApplicationSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    ApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "Name"))
    ApplicationSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    ApplicationSummary.add_member(:proxy_type, Shapes::ShapeRef.new(shape: ProxyType, location_name: "ProxyType"))
    ApplicationSummary.add_member(:state, Shapes::ShapeRef.new(shape: ApplicationState, location_name: "State"))
    ApplicationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ApplicationSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    CidrBlocks.member = Shapes::ShapeRef.new(shape: CidrBlock)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateApplicationRequest.add_member(:api_gateway_proxy, Shapes::ShapeRef.new(shape: ApiGatewayProxyInput, location_name: "ApiGatewayProxy"))
    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateApplicationRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "Name"))
    CreateApplicationRequest.add_member(:proxy_type, Shapes::ShapeRef.new(shape: ProxyType, required: true, location_name: "ProxyType"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateApplicationRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:api_gateway_proxy, Shapes::ShapeRef.new(shape: ApiGatewayProxyInput, location_name: "ApiGatewayProxy"))
    CreateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    CreateApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateApplicationResponse.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    CreateApplicationResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    CreateApplicationResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    CreateApplicationResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    CreateApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "Name"))
    CreateApplicationResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    CreateApplicationResponse.add_member(:proxy_type, Shapes::ShapeRef.new(shape: ProxyType, location_name: "ProxyType"))
    CreateApplicationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ApplicationState, location_name: "State"))
    CreateApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateApplicationResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "Name"))
    CreateEnvironmentRequest.add_member(:network_fabric_type, Shapes::ShapeRef.new(shape: NetworkFabricType, required: true, location_name: "NetworkFabricType"))
    CreateEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateEnvironmentResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateEnvironmentResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    CreateEnvironmentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    CreateEnvironmentResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    CreateEnvironmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "Name"))
    CreateEnvironmentResponse.add_member(:network_fabric_type, Shapes::ShapeRef.new(shape: NetworkFabricType, location_name: "NetworkFabricType"))
    CreateEnvironmentResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    CreateEnvironmentResponse.add_member(:state, Shapes::ShapeRef.new(shape: EnvironmentState, location_name: "State"))
    CreateEnvironmentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEnvironmentResponse.struct_class = Types::CreateEnvironmentResponse

    CreateRouteRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    CreateRouteRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateRouteRequest.add_member(:default_route, Shapes::ShapeRef.new(shape: DefaultRouteInput, location_name: "DefaultRoute"))
    CreateRouteRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    CreateRouteRequest.add_member(:route_type, Shapes::ShapeRef.new(shape: RouteType, required: true, location_name: "RouteType"))
    CreateRouteRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceId, required: true, location_name: "ServiceIdentifier"))
    CreateRouteRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateRouteRequest.add_member(:uri_path_route, Shapes::ShapeRef.new(shape: UriPathRouteInput, location_name: "UriPathRoute"))
    CreateRouteRequest.struct_class = Types::CreateRouteRequest

    CreateRouteResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    CreateRouteResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateRouteResponse.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    CreateRouteResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    CreateRouteResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    CreateRouteResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    CreateRouteResponse.add_member(:route_id, Shapes::ShapeRef.new(shape: RouteId, location_name: "RouteId"))
    CreateRouteResponse.add_member(:route_type, Shapes::ShapeRef.new(shape: RouteType, location_name: "RouteType"))
    CreateRouteResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    CreateRouteResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouteState, location_name: "State"))
    CreateRouteResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateRouteResponse.add_member(:uri_path_route, Shapes::ShapeRef.new(shape: UriPathRouteInput, location_name: "UriPathRoute"))
    CreateRouteResponse.struct_class = Types::CreateRouteResponse

    CreateServiceRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    CreateServiceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateServiceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateServiceRequest.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ServiceEndpointType, required: true, location_name: "EndpointType"))
    CreateServiceRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    CreateServiceRequest.add_member(:lambda_endpoint, Shapes::ShapeRef.new(shape: LambdaEndpointInput, location_name: "LambdaEndpoint"))
    CreateServiceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "Name"))
    CreateServiceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateServiceRequest.add_member(:url_endpoint, Shapes::ShapeRef.new(shape: UrlEndpointInput, location_name: "UrlEndpoint"))
    CreateServiceRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    CreateServiceRequest.struct_class = Types::CreateServiceRequest

    CreateServiceResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    CreateServiceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateServiceResponse.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    CreateServiceResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    CreateServiceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateServiceResponse.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ServiceEndpointType, location_name: "EndpointType"))
    CreateServiceResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    CreateServiceResponse.add_member(:lambda_endpoint, Shapes::ShapeRef.new(shape: LambdaEndpointInput, location_name: "LambdaEndpoint"))
    CreateServiceResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    CreateServiceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "Name"))
    CreateServiceResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    CreateServiceResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    CreateServiceResponse.add_member(:state, Shapes::ShapeRef.new(shape: ServiceState, location_name: "State"))
    CreateServiceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateServiceResponse.add_member(:url_endpoint, Shapes::ShapeRef.new(shape: UrlEndpointInput, location_name: "UrlEndpoint"))
    CreateServiceResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    CreateServiceResponse.struct_class = Types::CreateServiceResponse

    DefaultRouteInput.add_member(:activation_state, Shapes::ShapeRef.new(shape: RouteActivationState, location_name: "ActivationState"))
    DefaultRouteInput.struct_class = Types::DefaultRouteInput

    DeleteApplicationRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    DeleteApplicationRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    DeleteApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    DeleteApplicationResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    DeleteApplicationResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DeleteApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "Name"))
    DeleteApplicationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ApplicationState, location_name: "State"))
    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteEnvironmentRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteEnvironmentResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    DeleteEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    DeleteEnvironmentResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DeleteEnvironmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "Name"))
    DeleteEnvironmentResponse.add_member(:state, Shapes::ShapeRef.new(shape: EnvironmentState, location_name: "State"))
    DeleteEnvironmentResponse.struct_class = Types::DeleteEnvironmentResponse

    DeleteResourcePolicyRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourcePolicyIdentifier, required: true, location: "uri", location_name: "Identifier"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteRouteRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    DeleteRouteRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    DeleteRouteRequest.add_member(:route_identifier, Shapes::ShapeRef.new(shape: RouteId, required: true, location: "uri", location_name: "RouteIdentifier"))
    DeleteRouteRequest.struct_class = Types::DeleteRouteRequest

    DeleteRouteResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    DeleteRouteResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    DeleteRouteResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DeleteRouteResponse.add_member(:route_id, Shapes::ShapeRef.new(shape: RouteId, location_name: "RouteId"))
    DeleteRouteResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    DeleteRouteResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouteState, location_name: "State"))
    DeleteRouteResponse.struct_class = Types::DeleteRouteResponse

    DeleteServiceRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    DeleteServiceRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    DeleteServiceRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceId, required: true, location: "uri", location_name: "ServiceIdentifier"))
    DeleteServiceRequest.struct_class = Types::DeleteServiceRequest

    DeleteServiceResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    DeleteServiceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    DeleteServiceResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    DeleteServiceResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DeleteServiceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "Name"))
    DeleteServiceResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    DeleteServiceResponse.add_member(:state, Shapes::ShapeRef.new(shape: ServiceState, location_name: "State"))
    DeleteServiceResponse.struct_class = Types::DeleteServiceResponse

    EnvironmentSummaries.member = Shapes::ShapeRef.new(shape: EnvironmentSummary)

    EnvironmentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    EnvironmentSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    EnvironmentSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    EnvironmentSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    EnvironmentSummary.add_member(:error, Shapes::ShapeRef.new(shape: ErrorResponse, location_name: "Error"))
    EnvironmentSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    EnvironmentSummary.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "Name"))
    EnvironmentSummary.add_member(:network_fabric_type, Shapes::ShapeRef.new(shape: NetworkFabricType, location_name: "NetworkFabricType"))
    EnvironmentSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    EnvironmentSummary.add_member(:state, Shapes::ShapeRef.new(shape: EnvironmentState, location_name: "State"))
    EnvironmentSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EnvironmentSummary.add_member(:transit_gateway_id, Shapes::ShapeRef.new(shape: TransitGatewayId, location_name: "TransitGatewayId"))
    EnvironmentSummary.struct_class = Types::EnvironmentSummary

    EnvironmentVpc.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    EnvironmentVpc.add_member(:cidr_blocks, Shapes::ShapeRef.new(shape: CidrBlocks, location_name: "CidrBlocks"))
    EnvironmentVpc.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    EnvironmentVpc.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    EnvironmentVpc.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    EnvironmentVpc.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    EnvironmentVpc.add_member(:vpc_name, Shapes::ShapeRef.new(shape: Ec2TagValue, location_name: "VpcName"))
    EnvironmentVpc.struct_class = Types::EnvironmentVpc

    EnvironmentVpcs.member = Shapes::ShapeRef.new(shape: EnvironmentVpc)

    ErrorResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ErrorResponse.add_member(:additional_details, Shapes::ShapeRef.new(shape: AdditionalDetails, location_name: "AdditionalDetails"))
    ErrorResponse.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ErrorResponse.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ErrorResponse.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    ErrorResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: ErrorResourceType, location_name: "ResourceType"))
    ErrorResponse.struct_class = Types::ErrorResponse

    GetApplicationRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    GetApplicationRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:api_gateway_proxy, Shapes::ShapeRef.new(shape: ApiGatewayProxyConfig, location_name: "ApiGatewayProxy"))
    GetApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    GetApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    GetApplicationResponse.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    GetApplicationResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    GetApplicationResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    GetApplicationResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorResponse, location_name: "Error"))
    GetApplicationResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    GetApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "Name"))
    GetApplicationResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    GetApplicationResponse.add_member(:proxy_type, Shapes::ShapeRef.new(shape: ProxyType, location_name: "ProxyType"))
    GetApplicationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ApplicationState, location_name: "State"))
    GetApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetApplicationResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetEnvironmentRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetEnvironmentResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    GetEnvironmentResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    GetEnvironmentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    GetEnvironmentResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorResponse, location_name: "Error"))
    GetEnvironmentResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    GetEnvironmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "Name"))
    GetEnvironmentResponse.add_member(:network_fabric_type, Shapes::ShapeRef.new(shape: NetworkFabricType, location_name: "NetworkFabricType"))
    GetEnvironmentResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    GetEnvironmentResponse.add_member(:state, Shapes::ShapeRef.new(shape: EnvironmentState, location_name: "State"))
    GetEnvironmentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetEnvironmentResponse.add_member(:transit_gateway_id, Shapes::ShapeRef.new(shape: TransitGatewayId, location_name: "TransitGatewayId"))
    GetEnvironmentResponse.struct_class = Types::GetEnvironmentResponse

    GetResourcePolicyRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourcePolicyIdentifier, required: true, location: "uri", location_name: "Identifier"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, location_name: "Policy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetRouteRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    GetRouteRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    GetRouteRequest.add_member(:route_identifier, Shapes::ShapeRef.new(shape: RouteId, required: true, location: "uri", location_name: "RouteIdentifier"))
    GetRouteRequest.struct_class = Types::GetRouteRequest

    GetRouteResponse.add_member(:append_source_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "AppendSourcePath"))
    GetRouteResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    GetRouteResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    GetRouteResponse.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    GetRouteResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    GetRouteResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    GetRouteResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorResponse, location_name: "Error"))
    GetRouteResponse.add_member(:include_child_paths, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeChildPaths"))
    GetRouteResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    GetRouteResponse.add_member(:methods, Shapes::ShapeRef.new(shape: HttpMethods, location_name: "Methods"))
    GetRouteResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    GetRouteResponse.add_member(:path_resource_to_id, Shapes::ShapeRef.new(shape: PathResourceToId, location_name: "PathResourceToId"))
    GetRouteResponse.add_member(:route_id, Shapes::ShapeRef.new(shape: RouteId, location_name: "RouteId"))
    GetRouteResponse.add_member(:route_type, Shapes::ShapeRef.new(shape: RouteType, location_name: "RouteType"))
    GetRouteResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    GetRouteResponse.add_member(:source_path, Shapes::ShapeRef.new(shape: UriPath, location_name: "SourcePath"))
    GetRouteResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouteState, location_name: "State"))
    GetRouteResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetRouteResponse.struct_class = Types::GetRouteResponse

    GetServiceRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    GetServiceRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    GetServiceRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceId, required: true, location: "uri", location_name: "ServiceIdentifier"))
    GetServiceRequest.struct_class = Types::GetServiceRequest

    GetServiceResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    GetServiceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    GetServiceResponse.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    GetServiceResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    GetServiceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetServiceResponse.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ServiceEndpointType, location_name: "EndpointType"))
    GetServiceResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    GetServiceResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorResponse, location_name: "Error"))
    GetServiceResponse.add_member(:lambda_endpoint, Shapes::ShapeRef.new(shape: LambdaEndpointConfig, location_name: "LambdaEndpoint"))
    GetServiceResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    GetServiceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "Name"))
    GetServiceResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    GetServiceResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    GetServiceResponse.add_member(:state, Shapes::ShapeRef.new(shape: ServiceState, location_name: "State"))
    GetServiceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetServiceResponse.add_member(:url_endpoint, Shapes::ShapeRef.new(shape: UrlEndpointConfig, location_name: "UrlEndpoint"))
    GetServiceResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    GetServiceResponse.struct_class = Types::GetServiceResponse

    HttpMethods.member = Shapes::ShapeRef.new(shape: HttpMethod)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidResourcePolicyException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InvalidResourcePolicyException.struct_class = Types::InvalidResourcePolicyException

    LambdaEndpointConfig.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "Arn"))
    LambdaEndpointConfig.struct_class = Types::LambdaEndpointConfig

    LambdaEndpointInput.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "Arn"))
    LambdaEndpointInput.struct_class = Types::LambdaEndpointInput

    LambdaEndpointSummary.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "Arn"))
    LambdaEndpointSummary.struct_class = Types::LambdaEndpointSummary

    ListApplicationsRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:application_summary_list, Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: "ApplicationSummaryList"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListEnvironmentVpcsRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    ListEnvironmentVpcsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentVpcsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentVpcsRequest.struct_class = Types::ListEnvironmentVpcsRequest

    ListEnvironmentVpcsResponse.add_member(:environment_vpc_list, Shapes::ShapeRef.new(shape: EnvironmentVpcs, location_name: "EnvironmentVpcList"))
    ListEnvironmentVpcsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEnvironmentVpcsResponse.struct_class = Types::ListEnvironmentVpcsResponse

    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListEnvironmentsResponse.add_member(:environment_summary_list, Shapes::ShapeRef.new(shape: EnvironmentSummaries, location_name: "EnvironmentSummaryList"))
    ListEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEnvironmentsResponse.struct_class = Types::ListEnvironmentsResponse

    ListRoutesRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    ListRoutesRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    ListRoutesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRoutesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRoutesRequest.struct_class = Types::ListRoutesRequest

    ListRoutesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRoutesResponse.add_member(:route_summary_list, Shapes::ShapeRef.new(shape: RouteSummaries, location_name: "RouteSummaryList"))
    ListRoutesResponse.struct_class = Types::ListRoutesResponse

    ListServicesRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    ListServicesRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    ListServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServicesRequest.struct_class = Types::ListServicesRequest

    ListServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicesResponse.add_member(:service_summary_list, Shapes::ShapeRef.new(shape: ServiceSummaries, location_name: "ServiceSummaryList"))
    ListServicesResponse.struct_class = Types::ListServicesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PathResourceToId.key = Shapes::ShapeRef.new(shape: PathResourceToIdKey)
    PathResourceToId.value = Shapes::ShapeRef.new(shape: PathResourceToIdValue)

    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, required: true, location_name: "Policy"))
    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RouteSummaries.member = Shapes::ShapeRef.new(shape: RouteSummary)

    RouteSummary.add_member(:append_source_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "AppendSourcePath"))
    RouteSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    RouteSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    RouteSummary.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    RouteSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    RouteSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    RouteSummary.add_member(:error, Shapes::ShapeRef.new(shape: ErrorResponse, location_name: "Error"))
    RouteSummary.add_member(:include_child_paths, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeChildPaths"))
    RouteSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    RouteSummary.add_member(:methods, Shapes::ShapeRef.new(shape: HttpMethods, location_name: "Methods"))
    RouteSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    RouteSummary.add_member(:path_resource_to_id, Shapes::ShapeRef.new(shape: PathResourceToId, location_name: "PathResourceToId"))
    RouteSummary.add_member(:route_id, Shapes::ShapeRef.new(shape: RouteId, location_name: "RouteId"))
    RouteSummary.add_member(:route_type, Shapes::ShapeRef.new(shape: RouteType, location_name: "RouteType"))
    RouteSummary.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    RouteSummary.add_member(:source_path, Shapes::ShapeRef.new(shape: UriPath, location_name: "SourcePath"))
    RouteSummary.add_member(:state, Shapes::ShapeRef.new(shape: RouteState, location_name: "State"))
    RouteSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    RouteSummary.struct_class = Types::RouteSummary

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceSummaries.member = Shapes::ShapeRef.new(shape: ServiceSummary)

    ServiceSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ServiceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    ServiceSummary.add_member(:created_by_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "CreatedByAccountId"))
    ServiceSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ServiceSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ServiceSummary.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ServiceEndpointType, location_name: "EndpointType"))
    ServiceSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    ServiceSummary.add_member(:error, Shapes::ShapeRef.new(shape: ErrorResponse, location_name: "Error"))
    ServiceSummary.add_member(:lambda_endpoint, Shapes::ShapeRef.new(shape: LambdaEndpointSummary, location_name: "LambdaEndpoint"))
    ServiceSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    ServiceSummary.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "Name"))
    ServiceSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    ServiceSummary.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    ServiceSummary.add_member(:state, Shapes::ShapeRef.new(shape: ServiceState, location_name: "State"))
    ServiceSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ServiceSummary.add_member(:url_endpoint, Shapes::ShapeRef.new(shape: UrlEndpointSummary, location_name: "UrlEndpoint"))
    ServiceSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    ServiceSummary.struct_class = Types::ServiceSummary

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagMap.key = Shapes::ShapeRef.new(shape: TagMapKeyString)
    TagMap.value = Shapes::ShapeRef.new(shape: TagMapValueString)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateRouteRequest.add_member(:activation_state, Shapes::ShapeRef.new(shape: RouteActivationState, required: true, location_name: "ActivationState"))
    UpdateRouteRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    UpdateRouteRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "EnvironmentIdentifier"))
    UpdateRouteRequest.add_member(:route_identifier, Shapes::ShapeRef.new(shape: RouteId, required: true, location: "uri", location_name: "RouteIdentifier"))
    UpdateRouteRequest.struct_class = Types::UpdateRouteRequest

    UpdateRouteResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    UpdateRouteResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    UpdateRouteResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    UpdateRouteResponse.add_member(:route_id, Shapes::ShapeRef.new(shape: RouteId, location_name: "RouteId"))
    UpdateRouteResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "ServiceId"))
    UpdateRouteResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouteState, location_name: "State"))
    UpdateRouteResponse.struct_class = Types::UpdateRouteResponse

    UriPathRouteInput.add_member(:activation_state, Shapes::ShapeRef.new(shape: RouteActivationState, required: true, location_name: "ActivationState"))
    UriPathRouteInput.add_member(:append_source_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "AppendSourcePath"))
    UriPathRouteInput.add_member(:include_child_paths, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeChildPaths"))
    UriPathRouteInput.add_member(:methods, Shapes::ShapeRef.new(shape: HttpMethods, location_name: "Methods"))
    UriPathRouteInput.add_member(:source_path, Shapes::ShapeRef.new(shape: UriPath, required: true, location_name: "SourcePath"))
    UriPathRouteInput.struct_class = Types::UriPathRouteInput

    UrlEndpointConfig.add_member(:health_url, Shapes::ShapeRef.new(shape: Uri, location_name: "HealthUrl"))
    UrlEndpointConfig.add_member(:url, Shapes::ShapeRef.new(shape: Uri, location_name: "Url"))
    UrlEndpointConfig.struct_class = Types::UrlEndpointConfig

    UrlEndpointInput.add_member(:health_url, Shapes::ShapeRef.new(shape: Uri, location_name: "HealthUrl"))
    UrlEndpointInput.add_member(:url, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "Url"))
    UrlEndpointInput.struct_class = Types::UrlEndpointInput

    UrlEndpointSummary.add_member(:health_url, Shapes::ShapeRef.new(shape: Uri, location_name: "HealthUrl"))
    UrlEndpointSummary.add_member(:url, Shapes::ShapeRef.new(shape: Uri, location_name: "Url"))
    UrlEndpointSummary.struct_class = Types::UrlEndpointSummary

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-10-26"

      api.metadata = {
        "apiVersion" => "2021-10-26",
        "endpointPrefix" => "refactor-spaces",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Migration Hub Refactor Spaces",
        "serviceId" => "Migration Hub Refactor Spaces",
        "signatureVersion" => "v4",
        "signingName" => "refactor-spaces",
        "uid" => "migration-hub-refactor-spaces-2021-10-26",
      }

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/environments"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoute"
        o.http_method = "POST"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes"
        o.input = Shapes::ShapeRef.new(shape: CreateRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRouteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateService"
        o.http_method = "POST"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/resourcepolicy/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoute"
        o.http_method = "DELETE"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRouteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteService"
        o.http_method = "DELETE"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/resourcepolicy/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoute"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetService"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_vpcs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentVpcs"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/vpcs"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentVpcsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentVpcsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/environments"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoutes"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes"
        o.input = Shapes::ShapeRef.new(shape: ListRoutesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoutesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services"
        o.input = Shapes::ShapeRef.new(shape: ListServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/resourcepolicy"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourcePolicyException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoute"
        o.http_method = "PATCH"
        o.http_request_uri = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
