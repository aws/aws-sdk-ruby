# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubRefactorSpaces
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AdditionalDetails = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#AdditionalDetails', name: 'AdditionalDetails')
    AdditionalDetailsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#AdditionalDetailsKey', name: 'AdditionalDetailsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AdditionalDetailsValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#AdditionalDetailsValue', name: 'AdditionalDetailsValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ApiGatewayEndpointType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApiGatewayEndpointType', name: 'ApiGatewayEndpointType', traits: {"smithy.api#enum" => [{"value" => "REGIONAL", "name" => "REGIONAL"}, {"value" => "PRIVATE", "name" => "PRIVATE"}]})
    ApiGatewayId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApiGatewayId', name: 'ApiGatewayId', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[a-z0-9]{10}$"})
    ApiGatewayProxyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApiGatewayProxyConfig', name: 'ApiGatewayProxyConfig')
    ApiGatewayProxyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApiGatewayProxyInput', name: 'ApiGatewayProxyInput')
    ApiGatewayProxySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApiGatewayProxySummary', name: 'ApiGatewayProxySummary')
    ApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApplicationId', name: 'ApplicationId', traits: {"smithy.api#length" => {"min" => 14, "max" => 14}, "smithy.api#pattern" => "^app-[0-9A-Za-z]{10}$"})
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!app-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$"})
    ApplicationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApplicationState', name: 'ApplicationState', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "UPDATING", "name" => "UPDATING"}]})
    ApplicationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApplicationSummaries', name: 'ApplicationSummaries')
    ApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ApplicationSummary', name: 'ApplicationSummary')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#Boolean', name: 'Boolean')
    CidrBlock = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CidrBlock', name: 'CidrBlock')
    CidrBlocks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CidrBlocks', name: 'CidrBlocks', traits: {"smithy.api#length" => {"min" => 1}})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x20-\\x7E]{1,64}$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CreateApplicationInput', name: 'CreateApplicationInput')
    CreateApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CreateApplicationOutput', name: 'CreateApplicationOutput')
    CreateEnvironmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CreateEnvironmentInput', name: 'CreateEnvironmentInput')
    CreateEnvironmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CreateEnvironmentOutput', name: 'CreateEnvironmentOutput')
    CreateRouteInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CreateRouteInput', name: 'CreateRouteInput')
    CreateRouteOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CreateRouteOutput', name: 'CreateRouteOutput')
    CreateServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CreateServiceInput', name: 'CreateServiceInput')
    CreateServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#CreateServiceOutput', name: 'CreateServiceOutput')
    DefaultRouteInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DefaultRouteInput', name: 'DefaultRouteInput')
    DeleteApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteApplicationInput', name: 'DeleteApplicationInput')
    DeleteApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteApplicationOutput', name: 'DeleteApplicationOutput')
    DeleteEnvironmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteEnvironmentInput', name: 'DeleteEnvironmentInput')
    DeleteEnvironmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteEnvironmentOutput', name: 'DeleteEnvironmentOutput')
    DeleteResourcePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteResourcePolicyInput', name: 'DeleteResourcePolicyInput')
    DeleteResourcePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteResourcePolicyOutput', name: 'DeleteResourcePolicyOutput')
    DeleteRouteInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteRouteInput', name: 'DeleteRouteInput')
    DeleteRouteOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteRouteOutput', name: 'DeleteRouteOutput')
    DeleteServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteServiceInput', name: 'DeleteServiceInput')
    DeleteServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#DeleteServiceOutput', name: 'DeleteServiceOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-_\\s\\.\\!\\*\\#\\@\\']+$"})
    Ec2TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#Ec2TagValue', name: 'Ec2TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    EnvironmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#EnvironmentId', name: 'EnvironmentId', traits: {"smithy.api#length" => {"min" => 14, "max" => 14}, "smithy.api#pattern" => "^env-[0-9A-Za-z]{10}$"})
    EnvironmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#EnvironmentName', name: 'EnvironmentName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!env-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$"})
    EnvironmentState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#EnvironmentState', name: 'EnvironmentState', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    EnvironmentSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#EnvironmentSummaries', name: 'EnvironmentSummaries')
    EnvironmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#EnvironmentSummary', name: 'EnvironmentSummary')
    EnvironmentVpc = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#EnvironmentVpc', name: 'EnvironmentVpc')
    EnvironmentVpcs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#EnvironmentVpcs', name: 'EnvironmentVpcs')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#enum" => [{"value" => "INVALID_RESOURCE_STATE", "name" => "INVALID_RESOURCE_STATE"}, {"value" => "RESOURCE_LIMIT_EXCEEDED", "name" => "RESOURCE_LIMIT_EXCEEDED"}, {"value" => "RESOURCE_CREATION_FAILURE", "name" => "RESOURCE_CREATION_FAILURE"}, {"value" => "RESOURCE_UPDATE_FAILURE", "name" => "RESOURCE_UPDATE_FAILURE"}, {"value" => "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "name" => "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE"}, {"value" => "RESOURCE_DELETION_FAILURE", "name" => "RESOURCE_DELETION_FAILURE"}, {"value" => "RESOURCE_RETRIEVAL_FAILURE", "name" => "RESOURCE_RETRIEVAL_FAILURE"}, {"value" => "RESOURCE_IN_USE", "name" => "RESOURCE_IN_USE"}, {"value" => "RESOURCE_NOT_FOUND", "name" => "RESOURCE_NOT_FOUND"}, {"value" => "STATE_TRANSITION_FAILURE", "name" => "STATE_TRANSITION_FAILURE"}, {"value" => "REQUEST_LIMIT_EXCEEDED", "name" => "REQUEST_LIMIT_EXCEEDED"}, {"value" => "NOT_AUTHORIZED", "name" => "NOT_AUTHORIZED"}]})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\p{Alnum}\\p{Punct}\\p{Blank}]*$"})
    ErrorResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ErrorResourceType', name: 'ErrorResourceType', traits: {"smithy.api#enum" => [{"value" => "ENVIRONMENT", "name" => "ENVIRONMENT"}, {"value" => "APPLICATION", "name" => "APPLICATION"}, {"value" => "ROUTE", "name" => "ROUTE"}, {"value" => "SERVICE", "name" => "SERVICE"}, {"value" => "TRANSIT_GATEWAY", "name" => "TRANSIT_GATEWAY"}, {"value" => "TRANSIT_GATEWAY_ATTACHMENT", "name" => "TRANSIT_GATEWAY_ATTACHMENT"}, {"value" => "API_GATEWAY", "name" => "API_GATEWAY"}, {"value" => "NLB", "name" => "NLB"}, {"value" => "TARGET_GROUP", "name" => "TARGET_GROUP"}, {"value" => "LOAD_BALANCER_LISTENER", "name" => "LOAD_BALANCER_LISTENER"}, {"value" => "VPC_LINK", "name" => "VPC_LINK"}, {"value" => "LAMBDA", "name" => "LAMBDA"}, {"value" => "VPC", "name" => "VPC"}, {"value" => "SUBNET", "name" => "SUBNET"}, {"value" => "ROUTE_TABLE", "name" => "ROUTE_TABLE"}, {"value" => "SECURITY_GROUP", "name" => "SECURITY_GROUP"}, {"value" => "VPC_ENDPOINT_SERVICE_CONFIGURATION", "name" => "VPC_ENDPOINT_SERVICE_CONFIGURATION"}, {"value" => "RESOURCE_SHARE", "name" => "RESOURCE_SHARE"}, {"value" => "IAM_ROLE", "name" => "IAM_ROLE"}]})
    ErrorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ErrorResponse', name: 'ErrorResponse')
    GetApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetApplicationInput', name: 'GetApplicationInput')
    GetApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetApplicationOutput', name: 'GetApplicationOutput')
    GetEnvironmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetEnvironmentInput', name: 'GetEnvironmentInput')
    GetEnvironmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetEnvironmentOutput', name: 'GetEnvironmentOutput')
    GetResourcePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetResourcePolicyInput', name: 'GetResourcePolicyInput')
    GetResourcePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetResourcePolicyOutput', name: 'GetResourcePolicyOutput')
    GetRouteInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetRouteInput', name: 'GetRouteInput')
    GetRouteOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetRouteOutput', name: 'GetRouteOutput')
    GetServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetServiceInput', name: 'GetServiceInput')
    GetServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#GetServiceOutput', name: 'GetServiceOutput')
    HttpMethod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#HttpMethod', name: 'HttpMethod', traits: {"smithy.api#enum" => [{"value" => "DELETE", "name" => "DELETE"}, {"value" => "GET", "name" => "GET"}, {"value" => "HEAD", "name" => "HEAD"}, {"value" => "OPTIONS", "name" => "OPTIONS"}, {"value" => "PATCH", "name" => "PATCH"}, {"value" => "POST", "name" => "POST"}, {"value" => "PUT", "name" => "PUT"}]})
    HttpMethods = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#HttpMethods', name: 'HttpMethods')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidResourcePolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#InvalidResourcePolicyException', name: 'InvalidResourcePolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LambdaArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#LambdaArn', name: 'LambdaArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    LambdaEndpointConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#LambdaEndpointConfig', name: 'LambdaEndpointConfig')
    LambdaEndpointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#LambdaEndpointInput', name: 'LambdaEndpointInput')
    LambdaEndpointSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#LambdaEndpointSummary', name: 'LambdaEndpointSummary')
    ListApplicationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListApplicationsInput', name: 'ListApplicationsInput')
    ListApplicationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListApplicationsOutput', name: 'ListApplicationsOutput')
    ListEnvironmentVpcsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListEnvironmentVpcsInput', name: 'ListEnvironmentVpcsInput')
    ListEnvironmentVpcsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListEnvironmentVpcsOutput', name: 'ListEnvironmentVpcsOutput')
    ListEnvironmentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListEnvironmentsInput', name: 'ListEnvironmentsInput')
    ListEnvironmentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListEnvironmentsOutput', name: 'ListEnvironmentsOutput')
    ListRoutesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListRoutesInput', name: 'ListRoutesInput')
    ListRoutesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListRoutesOutput', name: 'ListRoutesOutput')
    ListServicesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListServicesInput', name: 'ListServicesInput')
    ListServicesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListServicesOutput', name: 'ListServicesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkFabricType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#NetworkFabricType', name: 'NetworkFabricType', traits: {"smithy.api#enum" => [{"value" => "TRANSIT_GATEWAY", "name" => "TRANSIT_GATEWAY"}, {"value" => "NONE", "name" => "NONE"}]})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9/\\+\\=]{0,2048}$"})
    NlbArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#NlbArn', name: 'NlbArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:elasticloadbalancing:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$"})
    NlbName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#NlbName', name: 'NlbName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!internal-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+.*[^-]$"})
    PathResourceToId = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#PathResourceToId', name: 'PathResourceToId')
    PathResourceToIdKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#PathResourceToIdKey', name: 'PathResourceToIdKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PathResourceToIdValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#PathResourceToIdValue', name: 'PathResourceToIdValue', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[a-z0-9]{10}$"})
    PolicyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#PolicyString', name: 'PolicyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 300000}, "smithy.api#pattern" => "^.*\\S.*$"})
    ProxyType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ProxyType', name: 'ProxyType', traits: {"smithy.api#enum" => [{"value" => "API_GATEWAY", "name" => "API_GATEWAY"}]})
    PutResourcePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#PutResourcePolicyInput', name: 'PutResourcePolicyInput')
    PutResourcePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#PutResourcePolicyOutput', name: 'PutResourcePolicyOutput')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:refactor-spaces:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$"})
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(^(env|svc|pxy|rte|app)-([0-9A-Za-z]{10}$))"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicyIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ResourcePolicyIdentifier', name: 'ResourcePolicyIdentifier', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:refactor-spaces:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    RouteActivationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#RouteActivationState', name: 'RouteActivationState', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    RouteId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#RouteId', name: 'RouteId', traits: {"smithy.api#length" => {"min" => 14, "max" => 14}, "smithy.api#pattern" => "^rte-[0-9A-Za-z]{10}$"})
    RouteState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#RouteState', name: 'RouteState', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    RouteSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#RouteSummaries', name: 'RouteSummaries')
    RouteSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#RouteSummary', name: 'RouteSummary')
    RouteType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#RouteType', name: 'RouteType', traits: {"smithy.api#enum" => [{"value" => "DEFAULT", "name" => "DEFAULT"}, {"value" => "URI_PATH", "name" => "URI_PATH"}]})
    ServiceEndpointType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ServiceEndpointType', name: 'ServiceEndpointType', traits: {"smithy.api#enum" => [{"value" => "LAMBDA", "name" => "LAMBDA"}, {"value" => "URL", "name" => "URL"}]})
    ServiceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ServiceId', name: 'ServiceId', traits: {"smithy.api#length" => {"min" => 14, "max" => 14}, "smithy.api#pattern" => "^svc-[0-9A-Za-z]{10}$"})
    ServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ServiceName', name: 'ServiceName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!svc-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ServiceState', name: 'ServiceState', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ServiceSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ServiceSummaries', name: 'ServiceSummaries')
    ServiceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ServiceSummary', name: 'ServiceSummary')
    StageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#StageName', name: 'StageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-a-zA-Z0-9_]*$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#String', name: 'String')
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#TagKeys', name: 'TagKeys', traits: {"smithy.api#sensitive" => {}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#TagResourceOutput', name: 'TagResourceOutput')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#Timestamp', name: 'Timestamp')
    TransitGatewayId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#TransitGatewayId', name: 'TransitGatewayId', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^tgw-[-a-f0-9]{17}$"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateRouteInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UpdateRouteInput', name: 'UpdateRouteInput')
    UpdateRouteOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UpdateRouteOutput', name: 'UpdateRouteOutput')
    Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https?://[-a-zA-Z0-9+\\x38@#/%?=~_|!:,.;]*[-a-zA-Z0-9+\\x38@#/%=~_|]$"})
    UriPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UriPath', name: 'UriPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(/([a-zA-Z0-9._:-]+|\\{[a-zA-Z0-9._:-]+\\}))+$"})
    UriPathRouteInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UriPathRouteInput', name: 'UriPathRouteInput')
    UrlEndpointConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UrlEndpointConfig', name: 'UrlEndpointConfig')
    UrlEndpointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UrlEndpointInput', name: 'UrlEndpointInput')
    UrlEndpointSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#UrlEndpointSummary', name: 'UrlEndpointSummary')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#VpcId', name: 'VpcId', traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-[-a-f0-9]{8}([-a-f0-9]{9})?$"})
    VpcLinkId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubrefactorspaces#VpcLinkId', name: 'VpcLinkId', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[a-z0-9]{10}$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalDetails.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalDetailsKey)
    AdditionalDetails.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalDetailsValue)
    ApiGatewayProxyConfig.add_member(:proxy_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'ProxyUrl', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the API Gateway proxy. </p>"}))
    ApiGatewayProxyConfig.add_member(:api_gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayId, location_name: 'ApiGatewayId', traits: {"smithy.api#documentation" => "<p>The resource ID of the API Gateway for the proxy. </p>"}))
    ApiGatewayProxyConfig.add_member(:vpc_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcLinkId, location_name: 'VpcLinkId', traits: {"smithy.api#documentation" => "<p>The <code>VpcLink</code> ID of the API Gateway proxy. </p>"}))
    ApiGatewayProxyConfig.add_member(:nlb_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NlbArn, location_name: 'NlbArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Network Load Balancer configured by the API Gateway proxy. </p>"}))
    ApiGatewayProxyConfig.add_member(:nlb_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NlbName, location_name: 'NlbName', traits: {"smithy.api#documentation" => "<p>The name of the Network Load Balancer that is configured by the API Gateway proxy.\n    </p>"}))
    ApiGatewayProxyConfig.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayEndpointType, location_name: 'EndpointType', traits: {"smithy.api#documentation" => "<p>The type of API Gateway endpoint created. </p>"}))
    ApiGatewayProxyConfig.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'StageName', traits: {"smithy.api#documentation" => "<p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>"}))
    ApiGatewayProxyConfig.type = Types::ApiGatewayProxyConfig
    ApiGatewayProxyInput.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayEndpointType, location_name: 'EndpointType', traits: {"smithy.api#documentation" => "<p>The type of endpoint to use for the API Gateway proxy. If no value is specified in\n      the request, the value is set to <code>REGIONAL</code> by default.</p>\n         <p>If the value is set to <code>PRIVATE</code> in the request, this creates a private API\n      endpoint that is isolated from the public internet. The private endpoint can only be accessed\n      by using Amazon Virtual Private Cloud (Amazon VPC) interface endpoints for the Amazon API Gateway that has been granted access.\n    For more information about creating a private connection with Refactor Spaces and interface\n    endpoint (Amazon Web Services PrivateLink) availability, see <a href=\"https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/vpc-interface-endpoints.html\">Access\n      Refactor Spaces using an interface endpoint (Amazon Web Services PrivateLink)</a>.</p>"}))
    ApiGatewayProxyInput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'StageName', traits: {"smithy.api#documentation" => "<p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>"}))
    ApiGatewayProxyInput.type = Types::ApiGatewayProxyInput
    ApiGatewayProxySummary.add_member(:proxy_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'ProxyUrl', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the API Gateway proxy. </p>"}))
    ApiGatewayProxySummary.add_member(:api_gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayId, location_name: 'ApiGatewayId', traits: {"smithy.api#documentation" => "<p>The resource ID of the API Gateway for the proxy. </p>"}))
    ApiGatewayProxySummary.add_member(:vpc_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcLinkId, location_name: 'VpcLinkId', traits: {"smithy.api#documentation" => "<p>The <code>VpcLink</code> ID of the API Gateway proxy. </p>"}))
    ApiGatewayProxySummary.add_member(:nlb_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NlbArn, location_name: 'NlbArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Network Load Balancer configured by the API Gateway proxy. </p>"}))
    ApiGatewayProxySummary.add_member(:nlb_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NlbName, location_name: 'NlbName', traits: {"smithy.api#documentation" => "<p>The name of the Network Load Balancer that is configured by the API Gateway proxy.\n    </p>"}))
    ApiGatewayProxySummary.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayEndpointType, location_name: 'EndpointType', traits: {"smithy.api#documentation" => "<p>The type of API Gateway endpoint created. </p>"}))
    ApiGatewayProxySummary.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'StageName', traits: {"smithy.api#documentation" => "<p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>"}))
    ApiGatewayProxySummary.type = Types::ApiGatewayProxySummary
    ApplicationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application. </p>"}))
    ApplicationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application. </p>"}))
    ApplicationSummary.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the application owner (which is always the same as\n      the environment owner account ID).</p>"}))
    ApplicationSummary.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the application creator. </p>"}))
    ApplicationSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the application. </p>"}))
    ApplicationSummary.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment. </p>"}))
    ApplicationSummary.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual private cloud (VPC). </p>"}))
    ApplicationSummary.add_member(:proxy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyType, location_name: 'ProxyType', traits: {"smithy.api#documentation" => "<p>The proxy type of the proxy created within the application. </p>"}))
    ApplicationSummary.add_member(:api_gateway_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayProxySummary, location_name: 'ApiGatewayProxy', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the Amazon API Gateway proxy. </p>"}))
    ApplicationSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the application. </p>"}))
    ApplicationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the application. </p>"}))
    ApplicationSummary.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResponse, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Any error associated with the application resource. </p>"}))
    ApplicationSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the application was last updated. </p>"}))
    ApplicationSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the application is created. </p>"}))
    ApplicationSummary.type = Types::ApplicationSummary
    CidrBlocks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CidrBlock)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource. </p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource. </p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateApplicationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name to use for the application. </p>", "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual private cloud (VPC).</p>", "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:proxy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyType, location_name: 'ProxyType', traits: {"smithy.api#documentation" => "<p>The proxy type of the proxy created within the application. </p>", "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:api_gateway_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayProxyInput, location_name: 'ApiGatewayProxy', traits: {"smithy.api#documentation" => "<p>A wrapper object holding the API Gateway endpoint type and stage name for the\n      proxy. </p>"}))
    CreateApplicationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>"}))
    CreateApplicationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n      request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    CreateApplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is \n<code>arn:aws:refactor-spaces:<i>region</i>:<i>account-id</i>:<i>resource-type/resource-id</i>\n            </code>. For more information about ARNs, \nsee <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">\n                    Amazon Resource Names (ARNs)</a> in the \n                    <i>Amazon Web Services General Reference</i>.</p>"}))
    CreateApplicationOutput.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the application owner (which is always the same as\n      the environment owner account ID).</p>"}))
    CreateApplicationOutput.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of application creator.</p>"}))
    CreateApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the application.</p>"}))
    CreateApplicationOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment in which the application is created.</p>"}))
    CreateApplicationOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon VPC. </p>"}))
    CreateApplicationOutput.add_member(:proxy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyType, location_name: 'ProxyType', traits: {"smithy.api#documentation" => "<p>The proxy type of the proxy created within the application. </p>"}))
    CreateApplicationOutput.add_member(:api_gateway_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayProxyInput, location_name: 'ApiGatewayProxy', traits: {"smithy.api#documentation" => "<p>A wrapper object holding the API Gateway endpoint type and stage name for the\n      proxy. </p>"}))
    CreateApplicationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the application. </p>"}))
    CreateApplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>"}))
    CreateApplicationOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the application was last updated. </p>"}))
    CreateApplicationOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the application is created.</p>"}))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateEnvironmentInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the environment.</p>"}))
    CreateEnvironmentInput.add_member(:network_fabric_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFabricType, location_name: 'NetworkFabricType', traits: {"smithy.api#documentation" => "<p>The network fabric type of the environment.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>"}))
    CreateEnvironmentInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n      request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentInput.type = Types::CreateEnvironmentInput
    CreateEnvironmentOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    CreateEnvironmentOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment.</p>"}))
    CreateEnvironmentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the environment.</p>"}))
    CreateEnvironmentOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment.</p>"}))
    CreateEnvironmentOutput.add_member(:network_fabric_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFabricType, location_name: 'NetworkFabricType', traits: {"smithy.api#documentation" => "<p>The network fabric type of the environment.</p>"}))
    CreateEnvironmentOutput.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of environment owner.</p>"}))
    CreateEnvironmentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the environment. </p>"}))
    CreateEnvironmentOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the created environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair..</p>"}))
    CreateEnvironmentOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the environment was last updated.</p>"}))
    CreateEnvironmentOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the environment is created.</p>"}))
    CreateEnvironmentOutput.type = Types::CreateEnvironmentOutput
    CreateRouteInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment in which the route is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application within which the route is being created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the service in which the route is created. Traffic that matches this route is\n      forwarded to this service.</p>", "smithy.api#required" => {}}))
    CreateRouteInput.add_member(:route_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteType, location_name: 'RouteType', traits: {"smithy.api#documentation" => "<p>The route type of the route. <code>DEFAULT</code> indicates that all traffic that does not\n      match another route is forwarded to the default route. Applications must have a default route\n      before any other routes can be created. <code>URI_PATH</code> indicates a route that is based\n      on a URI path.</p>", "smithy.api#required" => {}}))
    CreateRouteInput.add_member(:default_route, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultRouteInput, location_name: 'DefaultRoute', traits: {"smithy.api#documentation" => "<p> Configuration for the default route type. </p>"}))
    CreateRouteInput.add_member(:uri_path_route, Smithy::Schema::Shapes::ShapeRef.new(shape: UriPathRouteInput, location_name: 'UriPathRoute', traits: {"smithy.api#documentation" => "<p>The configuration for the URI path route type. </p>"}))
    CreateRouteInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>"}))
    CreateRouteInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n      request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRouteInput.type = Types::CreateRouteInput
    CreateRouteOutput.add_member(:route_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteId, location_name: 'RouteId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the route.</p>"}))
    CreateRouteOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the route. The format for this ARN is \n<code>arn:aws:refactor-spaces:<i>region</i>:<i>account-id</i>:<i>resource-type/resource-id</i>\n            </code>. For more information about ARNs, \nsee <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">\n                    Amazon Resource Names (ARNs)</a> in the \n                    <i>Amazon Web Services General Reference</i>.</p>"}))
    CreateRouteOutput.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the route owner.</p>"}))
    CreateRouteOutput.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the route creator.</p>"}))
    CreateRouteOutput.add_member(:route_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteType, location_name: 'RouteType', traits: {"smithy.api#documentation" => "<p>The route type of the route.</p>"}))
    CreateRouteOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>The ID of service in which the route is created. Traffic that matches this route is\n      forwarded to this service.</p>"}))
    CreateRouteOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application in which the route is created.</p>"}))
    CreateRouteOutput.add_member(:uri_path_route, Smithy::Schema::Shapes::ShapeRef.new(shape: UriPathRouteInput, location_name: 'UriPathRoute', traits: {"smithy.api#documentation" => "<p>Configuration for the URI path route type. </p>"}))
    CreateRouteOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the route. Activation state only allows <code>ACTIVE</code> or\n        <code>INACTIVE</code> as user inputs. <code>FAILED</code> is a route state that is system\n      generated.</p>"}))
    CreateRouteOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the created route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>"}))
    CreateRouteOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the route was last updated. </p>"}))
    CreateRouteOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the route is created.</p>"}))
    CreateRouteOutput.type = Types::CreateRouteOutput
    CreateServiceInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>", "smithy.api#required" => {}}))
    CreateServiceInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the service.</p>"}))
    CreateServiceInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment in which the service is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateServiceInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application which the service is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateServiceInput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC.</p>"}))
    CreateServiceInput.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEndpointType, location_name: 'EndpointType', traits: {"smithy.api#documentation" => "<p>The type of endpoint to use for the service. The type can be a URL in a VPC or an Lambda function.</p>", "smithy.api#required" => {}}))
    CreateServiceInput.add_member(:url_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlEndpointInput, location_name: 'UrlEndpoint', traits: {"smithy.api#documentation" => "<p>The configuration for the URL endpoint type. When creating a route to a service, Refactor Spaces\n      automatically resolves the address in the <code>UrlEndpointInput</code> object URL when the\n      Domain Name System (DNS) time-to-live (TTL) expires, or every 60 seconds for TTLs less than 60\n      seconds.</p>"}))
    CreateServiceInput.add_member(:lambda_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEndpointInput, location_name: 'LambdaEndpoint', traits: {"smithy.api#documentation" => "<p>The configuration for the Lambda endpoint type.</p>"}))
    CreateServiceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>"}))
    CreateServiceInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n      request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServiceInput.type = Types::CreateServiceInput
    CreateServiceOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the service.</p>"}))
    CreateServiceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    CreateServiceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    CreateServiceOutput.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the service owner.</p>"}))
    CreateServiceOutput.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the service creator.</p>"}))
    CreateServiceOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the created service.</p>"}))
    CreateServiceOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment.</p>"}))
    CreateServiceOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that the created service belongs to. </p>"}))
    CreateServiceOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC. </p>"}))
    CreateServiceOutput.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEndpointType, location_name: 'EndpointType', traits: {"smithy.api#documentation" => "<p>The endpoint type of the service.</p>"}))
    CreateServiceOutput.add_member(:url_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlEndpointInput, location_name: 'UrlEndpoint', traits: {"smithy.api#documentation" => "<p>The configuration for the URL endpoint type. </p>"}))
    CreateServiceOutput.add_member(:lambda_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEndpointInput, location_name: 'LambdaEndpoint', traits: {"smithy.api#documentation" => "<p>The configuration for the Lambda endpoint type.</p>"}))
    CreateServiceOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the service. </p>"}))
    CreateServiceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the created service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>"}))
    CreateServiceOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the service was last updated. </p>"}))
    CreateServiceOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the service is created.</p>"}))
    CreateServiceOutput.type = Types::CreateServiceOutput
    DefaultRouteInput.add_member(:activation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteActivationState, location_name: 'ActivationState', traits: {"smithy.api#documentation" => "<p>If set to <code>ACTIVE</code>, traffic is forwarded to this route’s service after the\n      route is created. </p>"}))
    DefaultRouteInput.type = Types::DefaultRouteInput
    DeleteApplicationInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    DeleteApplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    DeleteApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    DeleteApplicationOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the application’s environment.</p>"}))
    DeleteApplicationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the application. </p>"}))
    DeleteApplicationOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the environment was last updated. </p>"}))
    DeleteApplicationOutput.type = Types::DeleteApplicationOutput
    DeleteEnvironmentInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentInput.type = Types::DeleteEnvironmentInput
    DeleteEnvironmentOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    DeleteEnvironmentOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment.</p>"}))
    DeleteEnvironmentOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment.</p>"}))
    DeleteEnvironmentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the environment. </p>"}))
    DeleteEnvironmentOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the environment was last updated. </p>"}))
    DeleteEnvironmentOutput.type = Types::DeleteEnvironmentOutput
    DeleteResourcePolicyInput.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource associated with the policy. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DeleteRouteInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment to delete the route from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application to delete the route from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteInput.add_member(:route_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteId, location_name: 'RouteIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the route to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteInput.type = Types::DeleteRouteInput
    DeleteRouteOutput.add_member(:route_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteId, location_name: 'RouteId', traits: {"smithy.api#documentation" => "<p>The ID of the route to delete.</p>"}))
    DeleteRouteOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the route.</p>"}))
    DeleteRouteOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>The ID of the service that the route belongs to.</p>"}))
    DeleteRouteOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that the route belongs to.</p>"}))
    DeleteRouteOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the route. </p>"}))
    DeleteRouteOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the route was last updated. </p>"}))
    DeleteRouteOutput.type = Types::DeleteRouteOutput
    DeleteServiceInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment that the service is in.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>Deletes a Refactor Spaces service.</p>\n         <note>\n            <p>The <code>RefactorSpacesSecurityGroup</code> security group must be removed from all\n        Amazon Web Services resources in the virtual private cloud (VPC) prior to deleting a service with a URL\n        endpoint in a VPC.</p>\n         </note>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the service to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceInput.type = Types::DeleteServiceInput
    DeleteServiceOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the service.</p>"}))
    DeleteServiceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    DeleteServiceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    DeleteServiceOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment.</p>"}))
    DeleteServiceOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that the service is in.</p>"}))
    DeleteServiceOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the service. </p>"}))
    DeleteServiceOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the service was last updated. </p>"}))
    DeleteServiceOutput.type = Types::DeleteServiceOutput
    EnvironmentSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary)
    EnvironmentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment. </p>"}))
    EnvironmentSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment. </p>"}))
    EnvironmentSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the environment. </p>"}))
    EnvironmentSummary.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment. </p>"}))
    EnvironmentSummary.add_member(:network_fabric_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFabricType, location_name: 'NetworkFabricType', traits: {"smithy.api#documentation" => "<p>The network fabric type of the environment. </p>"}))
    EnvironmentSummary.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the environment owner.</p>"}))
    EnvironmentSummary.add_member(:transit_gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayId, location_name: 'TransitGatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the Transit Gateway set up by the environment. </p>"}))
    EnvironmentSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the environment. </p>"}))
    EnvironmentSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the environment. </p>"}))
    EnvironmentSummary.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResponse, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Any error associated with the environment resource. </p>"}))
    EnvironmentSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the environment was last updated. </p>"}))
    EnvironmentSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the environment is created. </p>"}))
    EnvironmentSummary.type = Types::EnvironmentSummary
    EnvironmentVpc.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment. </p>"}))
    EnvironmentVpc.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC. </p>"}))
    EnvironmentVpc.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the virtual private cloud (VPC) owner. </p>"}))
    EnvironmentVpc.add_member(:cidr_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: CidrBlocks, location_name: 'CidrBlocks', traits: {"smithy.api#documentation" => "<p>The list of Amazon Virtual Private Cloud (Amazon VPC) CIDR blocks. </p>"}))
    EnvironmentVpc.add_member(:vpc_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2TagValue, location_name: 'VpcName', traits: {"smithy.api#documentation" => "<p>The name of the VPC at the time it is added to the environment. </p>"}))
    EnvironmentVpc.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the VPC was last updated by the environment. </p>"}))
    EnvironmentVpc.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the VPC is first added to the environment. </p>"}))
    EnvironmentVpc.type = Types::EnvironmentVpc
    EnvironmentVpcs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVpc)
    ErrorResponse.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The error code associated with the error. </p>"}))
    ErrorResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message associated with the error. </p>"}))
    ErrorResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the resource owner. </p>"}))
    ErrorResponse.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'ResourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the resource. </p>"}))
    ErrorResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource. </p>"}))
    ErrorResponse.add_member(:additional_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalDetails, location_name: 'AdditionalDetails', traits: {"smithy.api#documentation" => "<p>Additional details about the error. </p>"}))
    ErrorResponse.type = Types::ErrorResponse
    GetApplicationInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationInput.type = Types::GetApplicationInput
    GetApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    GetApplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    GetApplicationOutput.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the application owner (which is always the same as\n      the environment owner account ID).</p>"}))
    GetApplicationOutput.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the application creator. </p>"}))
    GetApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the application.</p>"}))
    GetApplicationOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment.</p>"}))
    GetApplicationOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual private cloud (VPC). </p>"}))
    GetApplicationOutput.add_member(:proxy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyType, location_name: 'ProxyType', traits: {"smithy.api#documentation" => "<p>The proxy type of the proxy created within the application. </p>"}))
    GetApplicationOutput.add_member(:api_gateway_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayProxyConfig, location_name: 'ApiGatewayProxy', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the API Gateway proxy. </p>"}))
    GetApplicationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the application. </p>"}))
    GetApplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>"}))
    GetApplicationOutput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResponse, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Any error associated with the application resource. </p>"}))
    GetApplicationOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the application was last updated. </p>"}))
    GetApplicationOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the application is created. </p>"}))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetEnvironmentInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentInput.type = Types::GetEnvironmentInput
    GetEnvironmentOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    GetEnvironmentOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment.</p>"}))
    GetEnvironmentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the environment. </p>"}))
    GetEnvironmentOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment. </p>"}))
    GetEnvironmentOutput.add_member(:network_fabric_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFabricType, location_name: 'NetworkFabricType', traits: {"smithy.api#documentation" => "<p>The network fabric type of the environment. </p>"}))
    GetEnvironmentOutput.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the environment owner.</p>"}))
    GetEnvironmentOutput.add_member(:transit_gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayId, location_name: 'TransitGatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the Transit Gateway set up by the environment, if applicable.</p>"}))
    GetEnvironmentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the environment. </p>"}))
    GetEnvironmentOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>"}))
    GetEnvironmentOutput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResponse, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Any error associated with the environment resource. </p>"}))
    GetEnvironmentOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the environment was last updated. </p>"}))
    GetEnvironmentOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the environment is created. </p>"}))
    GetEnvironmentOutput.type = Types::GetEnvironmentOutput
    GetResourcePolicyInput.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource associated with the policy. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>A JSON-formatted string for an Amazon Web Services resource-based policy. </p>"}))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GetRouteInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteInput.add_member(:route_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteId, location_name: 'RouteIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the route.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteInput.type = Types::GetRouteInput
    GetRouteOutput.add_member(:route_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteId, location_name: 'RouteId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the route.</p>\n         <p>\n            <b>DEFAULT</b>: All traffic that does not match another route is\n      forwarded to the default route. Applications must have a default route before any other routes\n      can be created.</p>\n         <p>\n            <b>URI_PATH</b>: A route that is based on a URI path.</p>"}))
    GetRouteOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the route.</p>"}))
    GetRouteOutput.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the route owner.</p>"}))
    GetRouteOutput.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the route creator.</p>"}))
    GetRouteOutput.add_member(:route_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteType, location_name: 'RouteType', traits: {"smithy.api#documentation" => "<p>The type of route.</p>"}))
    GetRouteOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the service.</p>"}))
    GetRouteOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that the route belongs to. </p>"}))
    GetRouteOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>Unique identifier of the environment.</p>"}))
    GetRouteOutput.add_member(:source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: UriPath, location_name: 'SourcePath', traits: {"smithy.api#documentation" => "<p>This is the path that Refactor Spaces uses to match traffic. Paths must start with <code>/</code> and are relative to\n      the base of the application. To use path parameters in the source path, add a variable in curly braces. \n      For example, the resource path {user} represents a path parameter called 'user'.</p>"}))
    GetRouteOutput.add_member(:methods, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpMethods, location_name: 'Methods', traits: {"smithy.api#documentation" => "<p>A list of HTTP methods to match. An empty list matches all values. If a method is present,\n      only HTTP requests using that method are forwarded to this route’s service. </p>"}))
    GetRouteOutput.add_member(:include_child_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeChildPaths', traits: {"smithy.api#documentation" => "<p>Indicates whether to match all subpaths of the given source path. If this value is\n        <code>false</code>, requests must match the source path exactly before they are forwarded to\n      this route's service. </p>"}))
    GetRouteOutput.add_member(:path_resource_to_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PathResourceToId, location_name: 'PathResourceToId', traits: {"smithy.api#documentation" => "<p>A mapping of Amazon API Gateway path resources to resource IDs. </p>"}))
    GetRouteOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the route. </p>"}))
    GetRouteOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>"}))
    GetRouteOutput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResponse, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Any error associated with the route resource. </p>"}))
    GetRouteOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the route was last updated. </p>"}))
    GetRouteOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp of when the route is created. </p>"}))
    GetRouteOutput.add_member(:append_source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AppendSourcePath', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, this option appends the source path to the service URL endpoint.</p>"}))
    GetRouteOutput.type = Types::GetRouteOutput
    GetServiceInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceInput.type = Types::GetServiceInput
    GetServiceOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the service.</p>"}))
    GetServiceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    GetServiceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    GetServiceOutput.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the service owner.</p>"}))
    GetServiceOutput.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the service creator.</p>"}))
    GetServiceOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the service. </p>"}))
    GetServiceOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment.</p>"}))
    GetServiceOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    GetServiceOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual private cloud (VPC). </p>"}))
    GetServiceOutput.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEndpointType, location_name: 'EndpointType', traits: {"smithy.api#documentation" => "<p>The endpoint type of the service.</p>"}))
    GetServiceOutput.add_member(:url_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlEndpointConfig, location_name: 'UrlEndpoint', traits: {"smithy.api#documentation" => "<p>The configuration for the URL endpoint type.</p>\n         <p>The <b>Url</b> isthe URL of the endpoint type.</p>\n         <p>The <b>HealthUrl</b> is the health check URL of the endpoint\n      type. </p>"}))
    GetServiceOutput.add_member(:lambda_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEndpointConfig, location_name: 'LambdaEndpoint', traits: {"smithy.api#documentation" => "<p>The configuration for the Lambda endpoint type.</p>\n         <p>The <b>Arn</b> is the Amazon Resource Name (ARN) of the Lambda function associated with this service. </p>"}))
    GetServiceOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the service. </p>"}))
    GetServiceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>"}))
    GetServiceOutput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResponse, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Any error associated with the service resource. </p>"}))
    GetServiceOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the service was last updated. </p>"}))
    GetServiceOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp of when the service is created.</p>"}))
    GetServiceOutput.type = Types::GetServiceOutput
    HttpMethods.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HttpMethod)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidResourcePolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InvalidResourcePolicyException.type = Types::InvalidResourcePolicyException
    LambdaEndpointConfig.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda endpoint. </p>"}))
    LambdaEndpointConfig.type = Types::LambdaEndpointConfig
    LambdaEndpointInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function or alias.</p>", "smithy.api#required" => {}}))
    LambdaEndpointInput.type = Types::LambdaEndpointInput
    LambdaEndpointSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda endpoint. </p>"}))
    LambdaEndpointSummary.type = Types::LambdaEndpointSummary
    ListApplicationsInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n      results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:application_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: 'ApplicationSummaryList', traits: {"smithy.api#documentation" => "<p>The list of <code>ApplicationSummary</code> objects. </p>"}))
    ListApplicationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListEnvironmentVpcsInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEnvironmentVpcsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentVpcsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n      results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentVpcsInput.type = Types::ListEnvironmentVpcsInput
    ListEnvironmentVpcsOutput.add_member(:environment_vpc_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVpcs, location_name: 'EnvironmentVpcList', traits: {"smithy.api#documentation" => "<p>The list of <code>EnvironmentVpc</code> objects. </p>"}))
    ListEnvironmentVpcsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListEnvironmentVpcsOutput.type = Types::ListEnvironmentVpcsOutput
    ListEnvironmentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n      results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentsInput.type = Types::ListEnvironmentsInput
    ListEnvironmentsOutput.add_member(:environment_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummaries, location_name: 'EnvironmentSummaryList', traits: {"smithy.api#documentation" => "<p>The list of <code>EnvironmentSummary</code> objects. </p>"}))
    ListEnvironmentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListEnvironmentsOutput.type = Types::ListEnvironmentsOutput
    ListRoutesInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutesInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRoutesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n      results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRoutesInput.type = Types::ListRoutesInput
    ListRoutesOutput.add_member(:route_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteSummaries, location_name: 'RouteSummaryList', traits: {"smithy.api#documentation" => "<p>The list of <code>RouteSummary</code> objects. </p>"}))
    ListRoutesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListRoutesOutput.type = Types::ListRoutesOutput
    ListServicesInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListServicesInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the application. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListServicesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListServicesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n      results, make another call with the returned <code>nextToken</code> value.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListServicesInput.type = Types::ListServicesInput
    ListServicesOutput.add_member(:service_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummaries, location_name: 'ServiceSummaryList', traits: {"smithy.api#documentation" => "<p> The list of <code>ServiceSummary</code> objects. </p>"}))
    ListServicesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListServicesOutput.type = Types::ListServicesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags assigned to the resource. </p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    PathResourceToId.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PathResourceToIdKey)
    PathResourceToId.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PathResourceToIdValue)
    PutResourcePolicyInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to which the policy is being attached.\n    </p>", "smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>A JSON-formatted string for an Amazon Web Services resource-based policy. </p>", "smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource. </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource. </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RouteSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RouteSummary)
    RouteSummary.add_member(:route_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteId, location_name: 'RouteId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the route. </p>"}))
    RouteSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the route. </p>"}))
    RouteSummary.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the route owner.</p>"}))
    RouteSummary.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the route creator. </p>"}))
    RouteSummary.add_member(:route_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteType, location_name: 'RouteType', traits: {"smithy.api#documentation" => "<p>The route type of the route. </p>"}))
    RouteSummary.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the service. </p>"}))
    RouteSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the application. </p>"}))
    RouteSummary.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment. </p>"}))
    RouteSummary.add_member(:source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: UriPath, location_name: 'SourcePath', traits: {"smithy.api#documentation" => "<p>This is the path that Refactor Spaces uses to match traffic. Paths must start with <code>/</code> and are relative to\n      the base of the application. To use path parameters in the source path, add a variable in curly braces. For example, the resource path {user} represents a path parameter called 'user'.</p>"}))
    RouteSummary.add_member(:methods, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpMethods, location_name: 'Methods', traits: {"smithy.api#documentation" => "<p>A list of HTTP methods to match. An empty list matches all values. If a method is present,\n      only HTTP requests using that method are forwarded to this route’s service. </p>"}))
    RouteSummary.add_member(:include_child_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeChildPaths', traits: {"smithy.api#documentation" => "<p>Indicates whether to match all subpaths of the given source path. If this value is\n        <code>false</code>, requests must match the source path exactly before they are forwarded to\n      this route's service.</p>"}))
    RouteSummary.add_member(:path_resource_to_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PathResourceToId, location_name: 'PathResourceToId', traits: {"smithy.api#documentation" => "<p>A mapping of Amazon API Gateway path resources to resource IDs. </p>"}))
    RouteSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the route. </p>"}))
    RouteSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the route. </p>"}))
    RouteSummary.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResponse, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Any error associated with the route resource. </p>"}))
    RouteSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the route was last updated. </p>"}))
    RouteSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the route is created. </p>"}))
    RouteSummary.add_member(:append_source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AppendSourcePath', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, this option appends the source path to the service URL endpoint.</p>"}))
    RouteSummary.type = Types::RouteSummary
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource. </p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource. </p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Service quota requirement to identify originating quota. Reached throttling quota\n      exception. </p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Service quota requirement to identify originating service. Reached throttling quota\n      exception service code. </p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummary)
    ServiceSummary.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the service. </p>"}))
    ServiceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the service. </p>"}))
    ServiceSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service. </p>"}))
    ServiceSummary.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the service owner.</p>"}))
    ServiceSummary.add_member(:created_by_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'CreatedByAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the service creator. </p>"}))
    ServiceSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the service. </p>"}))
    ServiceSummary.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the environment. </p>"}))
    ServiceSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the application. </p>"}))
    ServiceSummary.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual private cloud (VPC). </p>"}))
    ServiceSummary.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEndpointType, location_name: 'EndpointType', traits: {"smithy.api#documentation" => "<p>The endpoint type of the service. </p>"}))
    ServiceSummary.add_member(:url_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlEndpointSummary, location_name: 'UrlEndpoint', traits: {"smithy.api#documentation" => "<p>The summary of the configuration for the URL endpoint type. </p>"}))
    ServiceSummary.add_member(:lambda_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEndpointSummary, location_name: 'LambdaEndpoint', traits: {"smithy.api#documentation" => "<p>A summary of the configuration for the Lambda endpoint type. </p>"}))
    ServiceSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the service. </p>"}))
    ServiceSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the service. </p>"}))
    ServiceSummary.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorResponse, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Any error associated with the service resource. </p>"}))
    ServiceSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the service was last updated. </p>"}))
    ServiceSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the service is created. </p>"}))
    ServiceSummary.type = Types::ServiceSummary
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:).+"})
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#length" => {"max" => 256}})
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The new or modified tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Service quota requirement to identify originating quota. Reached throttling quota\n      exception. </p>"}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Service quota requirement to identify originating service. Reached throttling quota\n      exception service code. </p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of seconds to wait before retrying. </p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of keys of the tags to be removed from the resource. </p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateRouteInput.add_member(:environment_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentIdentifier', traits: {"smithy.api#documentation" => "<p> The ID of the environment in which the route is being updated. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteInput.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationIdentifier', traits: {"smithy.api#documentation" => "<p> The ID of the application within which the route is being updated. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteInput.add_member(:route_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteId, location_name: 'RouteIdentifier', traits: {"smithy.api#documentation" => "<p> The unique identifier of the route to update. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteInput.add_member(:activation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteActivationState, location_name: 'ActivationState', traits: {"smithy.api#documentation" => "<p> If set to <code>ACTIVE</code>, traffic is forwarded to this route’s service after the\n      route is updated. </p>", "smithy.api#required" => {}}))
    UpdateRouteInput.type = Types::UpdateRouteInput
    UpdateRouteOutput.add_member(:route_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteId, location_name: 'RouteId', traits: {"smithy.api#documentation" => "<p> The unique identifier of the route. </p>"}))
    UpdateRouteOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the route. The format for this ARN is \n<code>arn:aws:refactor-spaces:<i>region</i>:<i>account-id</i>:<i>resource-type/resource-id</i>\n            </code>. For more information about ARNs, \nsee <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">\n                    Amazon Resource Names (ARNs)</a> in the \n                    <i>Amazon Web Services General Reference</i>. </p>"}))
    UpdateRouteOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'ServiceId', traits: {"smithy.api#documentation" => "<p> The ID of service in which the route was created. Traffic that matches this route is\n      forwarded to this service. </p>"}))
    UpdateRouteOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p> The ID of the application in which the route is being updated. </p>"}))
    UpdateRouteOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteState, location_name: 'State', traits: {"smithy.api#documentation" => "<p> The current state of the route. </p>"}))
    UpdateRouteOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p> A timestamp that indicates when the route was last updated. </p>"}))
    UpdateRouteOutput.type = Types::UpdateRouteOutput
    UriPathRouteInput.add_member(:source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: UriPath, location_name: 'SourcePath', traits: {"smithy.api#documentation" => "<p>This is the path that Refactor Spaces uses to match traffic. Paths must start with <code>/</code> and are relative to\n      the base of the application. To use path parameters in the source path, add a variable in curly braces.\n      For example, the resource path {user} represents a path parameter called 'user'.</p>", "smithy.api#required" => {}}))
    UriPathRouteInput.add_member(:activation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteActivationState, location_name: 'ActivationState', traits: {"smithy.api#documentation" => "<p>If set to <code>ACTIVE</code>, traffic is forwarded to this route’s service after the\n      route is created. </p>", "smithy.api#required" => {}}))
    UriPathRouteInput.add_member(:methods, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpMethods, location_name: 'Methods', traits: {"smithy.api#documentation" => "<p>A list of HTTP methods to match. An empty list matches all values. If a method is present,\n      only HTTP requests using that method are forwarded to this route’s service. </p>"}))
    UriPathRouteInput.add_member(:include_child_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeChildPaths', traits: {"smithy.api#documentation" => "<p>Indicates whether to match all subpaths of the given source path. If this value is\n        <code>false</code>, requests must match the source path exactly before they are forwarded to\n      this route's service. </p>"}))
    UriPathRouteInput.add_member(:append_source_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AppendSourcePath', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, this option appends the source path to the service URL endpoint.</p>"}))
    UriPathRouteInput.type = Types::UriPathRouteInput
    UrlEndpointConfig.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The HTTP URL endpoint. </p>"}))
    UrlEndpointConfig.add_member(:health_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'HealthUrl', traits: {"smithy.api#documentation" => "<p>The health check URL of the URL endpoint type. </p>"}))
    UrlEndpointConfig.type = Types::UrlEndpointConfig
    UrlEndpointInput.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to route traffic to. The URL must be an <a href=\"https://datatracker.ietf.org/doc/html/rfc3986\">rfc3986-formatted URL</a>. If the\n      host is a domain name, the name must be resolvable over the public internet. If the scheme is\n        <code>https</code>, the top level domain of the host must be listed in the <a href=\"https://www.iana.org/domains/root/db\">IANA root zone database</a>. </p>", "smithy.api#required" => {}}))
    UrlEndpointInput.add_member(:health_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'HealthUrl', traits: {"smithy.api#documentation" => "<p>The health check URL of the URL endpoint type. If the URL is a public endpoint, the\n        <code>HealthUrl</code> must also be a public endpoint. If the URL is a private endpoint\n      inside a virtual private cloud (VPC), the health URL must also be a private endpoint, and the\n      host must be the same as the URL. </p>"}))
    UrlEndpointInput.type = Types::UrlEndpointInput
    UrlEndpointSummary.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'Url', traits: {"smithy.api#documentation" => "<p> The URL to route traffic to. The URL must be an <a href=\"https://datatracker.ietf.org/doc/html/rfc3986\">rfc3986-formatted URL</a>. If the\n      host is a domain name, the name must be resolvable over the public internet. If the scheme is\n        <code>https</code>, the top level domain of the host must be listed in the <a href=\"https://www.iana.org/domains/root/db\">IANA root zone database</a>. </p>"}))
    UrlEndpointSummary.add_member(:health_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'HealthUrl', traits: {"smithy.api#documentation" => "<p>The health check URL of the URL endpoint type. If the URL is a public endpoint, the\n        <code>HealthUrl</code> must also be a public endpoint. If the URL is a private endpoint\n      inside a virtual private cloud (VPC), the health URL must also be a private endpoint, and the\n      host must be the same as the URL.</p>"}))
    UrlEndpointSummary.type = Types::UrlEndpointSummary
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    RefactorSpaces = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.migrationhubrefactorspaces#RefactorSpaces"
      service.name = "RefactorSpaces"
      service.version = "2021-10-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Migration Hub Refactor Spaces", "arnNamespace" => "refactor-spaces", "cloudFormationName" => "RefactorSpaces", "cloudTrailEventSource" => "refactor-spaces.amazonaws.com", "endpointPrefix" => "refactor-spaces"}, "aws.auth#sigv4" => {"name" => "refactor-spaces"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["content-type"], "additionalExposedHeaders" => ["date", "x-amz-apigw-id", "x-amzn-trace-id", "x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage"]}, "smithy.api#title" => "AWS Migration Hub Refactor Spaces"}
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/environments/{EnvironmentIdentifier}/applications", "code" => 200}}
      end)
      service.add_operation(:create_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/environments", "code" => 200}}
      end)
      service.add_operation(:create_route, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#CreateRoute"
        operation.name = "CreateRoute"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRouteInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRouteOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes", "code" => 200}}
      end)
      service.add_operation(:create_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#CreateService"
        operation.name = "CreateService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services", "code" => 200}}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{EnvironmentIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/resourcepolicy/{Identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_route, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteRoute"
        operation.name = "DeleteRoute"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRouteInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRouteOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteService"
        operation.name = "DeleteService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetApplication"
        operation.name = "GetApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resourcepolicy/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_route, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetRoute"
        operation.name = "GetRoute"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRouteInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRouteOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetService"
        operation.name = "GetService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_environment_vpcs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListEnvironmentVpcs"
        operation.name = "ListEnvironmentVpcs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentVpcsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentVpcsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/vpcs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentVpcs.new
      end)
      service.add_operation(:list_environments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_routes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListRoutes"
        operation.name = "ListRoutes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoutesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoutesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRoutes.new
      end)
      service.add_operation(:list_services, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListServices"
        operation.name = "ListServices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourcePolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/resourcepolicy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_route, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#UpdateRoute"
        operation.name = "UpdateRoute"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRouteInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRouteOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", "code" => 200}}
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
