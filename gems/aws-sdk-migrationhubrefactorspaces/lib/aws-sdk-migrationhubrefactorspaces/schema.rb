# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubRefactorSpaces
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AdditionalDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.migrationhubrefactorspaces#AdditionalDetails", name: "AdditionalDetails")
    AdditionalDetailsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#AdditionalDetailsKey", name: "AdditionalDetailsKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AdditionalDetailsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#AdditionalDetailsValue", name: "AdditionalDetailsValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ApiGatewayEndpointType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApiGatewayEndpointType", name: "ApiGatewayEndpointType", traits: {"smithy.api#enum" => [{"value" => "REGIONAL", "name" => "REGIONAL"}, {"value" => "PRIVATE", "name" => "PRIVATE"}]})
    ApiGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApiGatewayId", name: "ApiGatewayId", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[a-z0-9]{10}$"})
    ApiGatewayProxyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApiGatewayProxyConfig", name: "ApiGatewayProxyConfig")
    ApiGatewayProxyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApiGatewayProxyInput", name: "ApiGatewayProxyInput")
    ApiGatewayProxySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApiGatewayProxySummary", name: "ApiGatewayProxySummary")
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApplicationId", name: "ApplicationId", traits: {"smithy.api#length" => {"min" => 14, "max" => 14}, "smithy.api#pattern" => "^app-[0-9A-Za-z]{10}$"})
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApplicationName", name: "ApplicationName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!app-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$"})
    ApplicationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApplicationState", name: "ApplicationState", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "UPDATING", "name" => "UPDATING"}]})
    ApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApplicationSummaries", name: "ApplicationSummaries")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ApplicationSummary", name: "ApplicationSummary")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.migrationhubrefactorspaces#Boolean", name: "Boolean")
    CidrBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CidrBlock", name: "CidrBlock")
    CidrBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CidrBlocks", name: "CidrBlocks", traits: {"smithy.api#length" => {"min" => 1}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x20-\\x7E]{1,64}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CreateApplicationInput", name: "CreateApplicationInput")
    CreateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CreateApplicationOutput", name: "CreateApplicationOutput")
    CreateEnvironmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CreateEnvironmentInput", name: "CreateEnvironmentInput")
    CreateEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CreateEnvironmentOutput", name: "CreateEnvironmentOutput")
    CreateRouteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CreateRouteInput", name: "CreateRouteInput")
    CreateRouteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CreateRouteOutput", name: "CreateRouteOutput")
    CreateServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CreateServiceInput", name: "CreateServiceInput")
    CreateServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#CreateServiceOutput", name: "CreateServiceOutput")
    DefaultRouteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DefaultRouteInput", name: "DefaultRouteInput")
    DeleteApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteApplicationInput", name: "DeleteApplicationInput")
    DeleteApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteApplicationOutput", name: "DeleteApplicationOutput")
    DeleteEnvironmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteEnvironmentInput", name: "DeleteEnvironmentInput")
    DeleteEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteEnvironmentOutput", name: "DeleteEnvironmentOutput")
    DeleteResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteResourcePolicyInput", name: "DeleteResourcePolicyInput")
    DeleteResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteResourcePolicyOutput", name: "DeleteResourcePolicyOutput")
    DeleteRouteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteRouteInput", name: "DeleteRouteInput")
    DeleteRouteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteRouteOutput", name: "DeleteRouteOutput")
    DeleteServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteServiceInput", name: "DeleteServiceInput")
    DeleteServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#DeleteServiceOutput", name: "DeleteServiceOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-_\\s\\.\\!\\*\\#\\@\\']+$"})
    Ec2TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#Ec2TagValue", name: "Ec2TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    EnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#EnvironmentId", name: "EnvironmentId", traits: {"smithy.api#length" => {"min" => 14, "max" => 14}, "smithy.api#pattern" => "^env-[0-9A-Za-z]{10}$"})
    EnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#EnvironmentName", name: "EnvironmentName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!env-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$"})
    EnvironmentState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#EnvironmentState", name: "EnvironmentState", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    EnvironmentSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubrefactorspaces#EnvironmentSummaries", name: "EnvironmentSummaries")
    EnvironmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#EnvironmentSummary", name: "EnvironmentSummary")
    EnvironmentVpc = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#EnvironmentVpc", name: "EnvironmentVpc")
    EnvironmentVpcs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubrefactorspaces#EnvironmentVpcs", name: "EnvironmentVpcs")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ErrorCode", name: "ErrorCode", traits: {"smithy.api#enum" => [{"value" => "INVALID_RESOURCE_STATE", "name" => "INVALID_RESOURCE_STATE"}, {"value" => "RESOURCE_LIMIT_EXCEEDED", "name" => "RESOURCE_LIMIT_EXCEEDED"}, {"value" => "RESOURCE_CREATION_FAILURE", "name" => "RESOURCE_CREATION_FAILURE"}, {"value" => "RESOURCE_UPDATE_FAILURE", "name" => "RESOURCE_UPDATE_FAILURE"}, {"value" => "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "name" => "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE"}, {"value" => "RESOURCE_DELETION_FAILURE", "name" => "RESOURCE_DELETION_FAILURE"}, {"value" => "RESOURCE_RETRIEVAL_FAILURE", "name" => "RESOURCE_RETRIEVAL_FAILURE"}, {"value" => "RESOURCE_IN_USE", "name" => "RESOURCE_IN_USE"}, {"value" => "RESOURCE_NOT_FOUND", "name" => "RESOURCE_NOT_FOUND"}, {"value" => "STATE_TRANSITION_FAILURE", "name" => "STATE_TRANSITION_FAILURE"}, {"value" => "REQUEST_LIMIT_EXCEEDED", "name" => "REQUEST_LIMIT_EXCEEDED"}, {"value" => "NOT_AUTHORIZED", "name" => "NOT_AUTHORIZED"}]})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\p{Alnum}\\p{Punct}\\p{Blank}]*$"})
    ErrorResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ErrorResourceType", name: "ErrorResourceType", traits: {"smithy.api#enum" => [{"value" => "ENVIRONMENT", "name" => "ENVIRONMENT"}, {"value" => "APPLICATION", "name" => "APPLICATION"}, {"value" => "ROUTE", "name" => "ROUTE"}, {"value" => "SERVICE", "name" => "SERVICE"}, {"value" => "TRANSIT_GATEWAY", "name" => "TRANSIT_GATEWAY"}, {"value" => "TRANSIT_GATEWAY_ATTACHMENT", "name" => "TRANSIT_GATEWAY_ATTACHMENT"}, {"value" => "API_GATEWAY", "name" => "API_GATEWAY"}, {"value" => "NLB", "name" => "NLB"}, {"value" => "TARGET_GROUP", "name" => "TARGET_GROUP"}, {"value" => "LOAD_BALANCER_LISTENER", "name" => "LOAD_BALANCER_LISTENER"}, {"value" => "VPC_LINK", "name" => "VPC_LINK"}, {"value" => "LAMBDA", "name" => "LAMBDA"}, {"value" => "VPC", "name" => "VPC"}, {"value" => "SUBNET", "name" => "SUBNET"}, {"value" => "ROUTE_TABLE", "name" => "ROUTE_TABLE"}, {"value" => "SECURITY_GROUP", "name" => "SECURITY_GROUP"}, {"value" => "VPC_ENDPOINT_SERVICE_CONFIGURATION", "name" => "VPC_ENDPOINT_SERVICE_CONFIGURATION"}, {"value" => "RESOURCE_SHARE", "name" => "RESOURCE_SHARE"}, {"value" => "IAM_ROLE", "name" => "IAM_ROLE"}]})
    ErrorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ErrorResponse", name: "ErrorResponse")
    GetApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetApplicationInput", name: "GetApplicationInput")
    GetApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetApplicationOutput", name: "GetApplicationOutput")
    GetEnvironmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetEnvironmentInput", name: "GetEnvironmentInput")
    GetEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetEnvironmentOutput", name: "GetEnvironmentOutput")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    GetRouteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetRouteInput", name: "GetRouteInput")
    GetRouteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetRouteOutput", name: "GetRouteOutput")
    GetServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetServiceInput", name: "GetServiceInput")
    GetServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#GetServiceOutput", name: "GetServiceOutput")
    HttpMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#HttpMethod", name: "HttpMethod", traits: {"smithy.api#enum" => [{"value" => "DELETE", "name" => "DELETE"}, {"value" => "GET", "name" => "GET"}, {"value" => "HEAD", "name" => "HEAD"}, {"value" => "OPTIONS", "name" => "OPTIONS"}, {"value" => "PATCH", "name" => "PATCH"}, {"value" => "POST", "name" => "POST"}, {"value" => "PUT", "name" => "PUT"}]})
    HttpMethods = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubrefactorspaces#HttpMethods", name: "HttpMethods")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidResourcePolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#InvalidResourcePolicyException", name: "InvalidResourcePolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#LambdaArn", name: "LambdaArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    LambdaEndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#LambdaEndpointConfig", name: "LambdaEndpointConfig")
    LambdaEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#LambdaEndpointInput", name: "LambdaEndpointInput")
    LambdaEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#LambdaEndpointSummary", name: "LambdaEndpointSummary")
    ListApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListApplicationsInput", name: "ListApplicationsInput")
    ListApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListApplicationsOutput", name: "ListApplicationsOutput")
    ListEnvironmentVpcsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListEnvironmentVpcsInput", name: "ListEnvironmentVpcsInput")
    ListEnvironmentVpcsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListEnvironmentVpcsOutput", name: "ListEnvironmentVpcsOutput")
    ListEnvironmentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListEnvironmentsInput", name: "ListEnvironmentsInput")
    ListEnvironmentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListEnvironmentsOutput", name: "ListEnvironmentsOutput")
    ListRoutesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListRoutesInput", name: "ListRoutesInput")
    ListRoutesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListRoutesOutput", name: "ListRoutesOutput")
    ListServicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListServicesInput", name: "ListServicesInput")
    ListServicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListServicesOutput", name: "ListServicesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.migrationhubrefactorspaces#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkFabricType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#NetworkFabricType", name: "NetworkFabricType", traits: {"smithy.api#enum" => [{"value" => "TRANSIT_GATEWAY", "name" => "TRANSIT_GATEWAY"}, {"value" => "NONE", "name" => "NONE"}]})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9/\\+\\=]{0,2048}$"})
    NlbArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#NlbArn", name: "NlbArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:elasticloadbalancing:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$"})
    NlbName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#NlbName", name: "NlbName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!internal-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+.*[^-]$"})
    PathResourceToId = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.migrationhubrefactorspaces#PathResourceToId", name: "PathResourceToId")
    PathResourceToIdKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#PathResourceToIdKey", name: "PathResourceToIdKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PathResourceToIdValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#PathResourceToIdValue", name: "PathResourceToIdValue", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[a-z0-9]{10}$"})
    PolicyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#PolicyString", name: "PolicyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 300000}, "smithy.api#pattern" => "^.*\\S.*$"})
    ProxyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ProxyType", name: "ProxyType", traits: {"smithy.api#enum" => [{"value" => "API_GATEWAY", "name" => "API_GATEWAY"}]})
    PutResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#PutResourcePolicyInput", name: "PutResourcePolicyInput")
    PutResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#PutResourcePolicyOutput", name: "PutResourcePolicyOutput")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:refactor-spaces:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$"})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(^(env|svc|pxy|rte|app)-([0-9A-Za-z]{10}$))"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicyIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ResourcePolicyIdentifier", name: "ResourcePolicyIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:refactor-spaces:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.migrationhubrefactorspaces#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    RouteActivationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#RouteActivationState", name: "RouteActivationState", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    RouteId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#RouteId", name: "RouteId", traits: {"smithy.api#length" => {"min" => 14, "max" => 14}, "smithy.api#pattern" => "^rte-[0-9A-Za-z]{10}$"})
    RouteState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#RouteState", name: "RouteState", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    RouteSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubrefactorspaces#RouteSummaries", name: "RouteSummaries")
    RouteSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#RouteSummary", name: "RouteSummary")
    RouteType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#RouteType", name: "RouteType", traits: {"smithy.api#enum" => [{"value" => "DEFAULT", "name" => "DEFAULT"}, {"value" => "URI_PATH", "name" => "URI_PATH"}]})
    ServiceEndpointType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ServiceEndpointType", name: "ServiceEndpointType", traits: {"smithy.api#enum" => [{"value" => "LAMBDA", "name" => "LAMBDA"}, {"value" => "URL", "name" => "URL"}]})
    ServiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ServiceId", name: "ServiceId", traits: {"smithy.api#length" => {"min" => 14, "max" => 14}, "smithy.api#pattern" => "^svc-[0-9A-Za-z]{10}$"})
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ServiceName", name: "ServiceName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!svc-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ServiceState", name: "ServiceState", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ServiceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ServiceSummaries", name: "ServiceSummaries")
    ServiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ServiceSummary", name: "ServiceSummary")
    StageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#StageName", name: "StageName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-a-zA-Z0-9_]*$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#String", name: "String")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubrefactorspaces#TagKeys", name: "TagKeys", traits: {"smithy.api#sensitive" => {}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.migrationhubrefactorspaces#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#TagResourceOutput", name: "TagResourceOutput")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.migrationhubrefactorspaces#Timestamp", name: "Timestamp")
    TransitGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#TransitGatewayId", name: "TransitGatewayId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^tgw-[-a-f0-9]{17}$"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateRouteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UpdateRouteInput", name: "UpdateRouteInput")
    UpdateRouteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UpdateRouteOutput", name: "UpdateRouteOutput")
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#Uri", name: "Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https?://[-a-zA-Z0-9+\\x38@#/%?=~_|!:,.;]*[-a-zA-Z0-9+\\x38@#/%=~_|]$"})
    UriPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UriPath", name: "UriPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(/([a-zA-Z0-9._:-]+|\\{[a-zA-Z0-9._:-]+\\}))+$"})
    UriPathRouteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UriPathRouteInput", name: "UriPathRouteInput")
    UrlEndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UrlEndpointConfig", name: "UrlEndpointConfig")
    UrlEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UrlEndpointInput", name: "UrlEndpointInput")
    UrlEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#UrlEndpointSummary", name: "UrlEndpointSummary")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubrefactorspaces#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-[-a-f0-9]{8}([-a-f0-9]{9})?$"})
    VpcLinkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubrefactorspaces#VpcLinkId", name: "VpcLinkId", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[a-z0-9]{10}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalDetails.key = ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalDetailsKey, name: "key")
    AdditionalDetails.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalDetailsValue, name: "value")
    ApiGatewayProxyConfig.add_member(:proxy_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "ProxyUrl"))
    ApiGatewayProxyConfig.add_member(:api_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayId, name: "ApiGatewayId"))
    ApiGatewayProxyConfig.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkId, name: "VpcLinkId"))
    ApiGatewayProxyConfig.add_member(:nlb_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NlbArn, name: "NlbArn"))
    ApiGatewayProxyConfig.add_member(:nlb_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NlbName, name: "NlbName"))
    ApiGatewayProxyConfig.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayEndpointType, name: "EndpointType"))
    ApiGatewayProxyConfig.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "StageName"))
    ApiGatewayProxyConfig.type = Types::ApiGatewayProxyConfig
    ApiGatewayProxyInput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayEndpointType, name: "EndpointType"))
    ApiGatewayProxyInput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "StageName"))
    ApiGatewayProxyInput.type = Types::ApiGatewayProxyInput
    ApiGatewayProxySummary.add_member(:proxy_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "ProxyUrl"))
    ApiGatewayProxySummary.add_member(:api_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayId, name: "ApiGatewayId"))
    ApiGatewayProxySummary.add_member(:vpc_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLinkId, name: "VpcLinkId"))
    ApiGatewayProxySummary.add_member(:nlb_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NlbArn, name: "NlbArn"))
    ApiGatewayProxySummary.add_member(:nlb_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NlbName, name: "NlbName"))
    ApiGatewayProxySummary.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayEndpointType, name: "EndpointType"))
    ApiGatewayProxySummary.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "StageName"))
    ApiGatewayProxySummary.type = Types::ApiGatewayProxySummary
    ApplicationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member")
    ApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name"))
    ApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    ApplicationSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    ApplicationSummary.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    ApplicationSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    ApplicationSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    ApplicationSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    ApplicationSummary.add_member(:proxy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyType, name: "ProxyType"))
    ApplicationSummary.add_member(:api_gateway_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayProxySummary, name: "ApiGatewayProxy"))
    ApplicationSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "State"))
    ApplicationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ApplicationSummary.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResponse, name: "Error"))
    ApplicationSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    ApplicationSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    ApplicationSummary.type = Types::ApplicationSummary
    CidrBlocks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CidrBlock, name: "member")
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateApplicationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:proxy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyType, name: "ProxyType", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:api_gateway_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayProxyInput, name: "ApiGatewayProxy"))
    CreateApplicationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name"))
    CreateApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    CreateApplicationOutput.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    CreateApplicationOutput.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    CreateApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    CreateApplicationOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    CreateApplicationOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    CreateApplicationOutput.add_member(:proxy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyType, name: "ProxyType"))
    CreateApplicationOutput.add_member(:api_gateway_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayProxyInput, name: "ApiGatewayProxy"))
    CreateApplicationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "State"))
    CreateApplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateApplicationOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    CreateApplicationOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateEnvironmentInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateEnvironmentInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEnvironmentInput.add_member(:network_fabric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFabricType, name: "NetworkFabricType", traits: {"smithy.api#required" => {}}))
    CreateEnvironmentInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEnvironmentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentInput.type = Types::CreateEnvironmentInput
    CreateEnvironmentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, name: "Name"))
    CreateEnvironmentOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    CreateEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    CreateEnvironmentOutput.add_member(:network_fabric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFabricType, name: "NetworkFabricType"))
    CreateEnvironmentOutput.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    CreateEnvironmentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "State"))
    CreateEnvironmentOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEnvironmentOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    CreateEnvironmentOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    CreateEnvironmentOutput.type = Types::CreateEnvironmentOutput
    CreateRouteInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateRouteInput.add_member(:route_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteType, name: "RouteType", traits: {"smithy.api#required" => {}}))
    CreateRouteInput.add_member(:default_route, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultRouteInput, name: "DefaultRoute"))
    CreateRouteInput.add_member(:uri_path_route, ::Smithy::Schema::Shapes::MemberShape.new(target: UriPathRouteInput, name: "UriPathRoute"))
    CreateRouteInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateRouteInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRouteInput.type = Types::CreateRouteInput
    CreateRouteOutput.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteId, name: "RouteId"))
    CreateRouteOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    CreateRouteOutput.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    CreateRouteOutput.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    CreateRouteOutput.add_member(:route_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteType, name: "RouteType"))
    CreateRouteOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    CreateRouteOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    CreateRouteOutput.add_member(:uri_path_route, ::Smithy::Schema::Shapes::MemberShape.new(target: UriPathRouteInput, name: "UriPathRoute"))
    CreateRouteOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteState, name: "State"))
    CreateRouteOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateRouteOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    CreateRouteOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    CreateRouteOutput.type = Types::CreateRouteOutput
    CreateServiceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateServiceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateServiceInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateServiceInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateServiceInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    CreateServiceInput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEndpointType, name: "EndpointType", traits: {"smithy.api#required" => {}}))
    CreateServiceInput.add_member(:url_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlEndpointInput, name: "UrlEndpoint"))
    CreateServiceInput.add_member(:lambda_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEndpointInput, name: "LambdaEndpoint"))
    CreateServiceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateServiceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceInput.type = Types::CreateServiceInput
    CreateServiceOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    CreateServiceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "Name"))
    CreateServiceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    CreateServiceOutput.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    CreateServiceOutput.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    CreateServiceOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateServiceOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    CreateServiceOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    CreateServiceOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    CreateServiceOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEndpointType, name: "EndpointType"))
    CreateServiceOutput.add_member(:url_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlEndpointInput, name: "UrlEndpoint"))
    CreateServiceOutput.add_member(:lambda_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEndpointInput, name: "LambdaEndpoint"))
    CreateServiceOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceState, name: "State"))
    CreateServiceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateServiceOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    CreateServiceOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    CreateServiceOutput.type = Types::CreateServiceOutput
    DefaultRouteInput.add_member(:activation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteActivationState, name: "ActivationState"))
    DefaultRouteInput.type = Types::DefaultRouteInput
    DeleteApplicationInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name"))
    DeleteApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    DeleteApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    DeleteApplicationOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    DeleteApplicationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "State"))
    DeleteApplicationOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    DeleteApplicationOutput.type = Types::DeleteApplicationOutput
    DeleteEnvironmentInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentInput.type = Types::DeleteEnvironmentInput
    DeleteEnvironmentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, name: "Name"))
    DeleteEnvironmentOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    DeleteEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    DeleteEnvironmentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "State"))
    DeleteEnvironmentOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    DeleteEnvironmentOutput.type = Types::DeleteEnvironmentOutput
    DeleteResourcePolicyInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DeleteRouteInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteInput.add_member(:route_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteId, name: "RouteIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteInput.type = Types::DeleteRouteInput
    DeleteRouteOutput.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteId, name: "RouteId"))
    DeleteRouteOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    DeleteRouteOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    DeleteRouteOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    DeleteRouteOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteState, name: "State"))
    DeleteRouteOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    DeleteRouteOutput.type = Types::DeleteRouteOutput
    DeleteServiceInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceInput.type = Types::DeleteServiceInput
    DeleteServiceOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    DeleteServiceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "Name"))
    DeleteServiceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    DeleteServiceOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    DeleteServiceOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    DeleteServiceOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceState, name: "State"))
    DeleteServiceOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    DeleteServiceOutput.type = Types::DeleteServiceOutput
    EnvironmentSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentSummary, name: "member")
    EnvironmentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, name: "Name"))
    EnvironmentSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    EnvironmentSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    EnvironmentSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    EnvironmentSummary.add_member(:network_fabric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFabricType, name: "NetworkFabricType"))
    EnvironmentSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    EnvironmentSummary.add_member(:transit_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayId, name: "TransitGatewayId"))
    EnvironmentSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "State"))
    EnvironmentSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    EnvironmentSummary.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResponse, name: "Error"))
    EnvironmentSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    EnvironmentSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    EnvironmentSummary.type = Types::EnvironmentSummary
    EnvironmentVpc.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    EnvironmentVpc.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    EnvironmentVpc.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    EnvironmentVpc.add_member(:cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrBlocks, name: "CidrBlocks"))
    EnvironmentVpc.add_member(:vpc_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2TagValue, name: "VpcName"))
    EnvironmentVpc.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    EnvironmentVpc.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    EnvironmentVpc.type = Types::EnvironmentVpc
    EnvironmentVpcs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVpc, name: "member")
    ErrorResponse.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ErrorResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ErrorResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ErrorResponse.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier"))
    ErrorResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResourceType, name: "ResourceType"))
    ErrorResponse.add_member(:additional_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalDetails, name: "AdditionalDetails"))
    ErrorResponse.type = Types::ErrorResponse
    GetApplicationInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationInput.type = Types::GetApplicationInput
    GetApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "Name"))
    GetApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    GetApplicationOutput.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    GetApplicationOutput.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    GetApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    GetApplicationOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    GetApplicationOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    GetApplicationOutput.add_member(:proxy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyType, name: "ProxyType"))
    GetApplicationOutput.add_member(:api_gateway_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayProxyConfig, name: "ApiGatewayProxy"))
    GetApplicationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "State"))
    GetApplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetApplicationOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResponse, name: "Error"))
    GetApplicationOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    GetApplicationOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetEnvironmentInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentInput.type = Types::GetEnvironmentInput
    GetEnvironmentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, name: "Name"))
    GetEnvironmentOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    GetEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    GetEnvironmentOutput.add_member(:network_fabric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFabricType, name: "NetworkFabricType"))
    GetEnvironmentOutput.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    GetEnvironmentOutput.add_member(:transit_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayId, name: "TransitGatewayId"))
    GetEnvironmentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "State"))
    GetEnvironmentOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetEnvironmentOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResponse, name: "Error"))
    GetEnvironmentOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    GetEnvironmentOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    GetEnvironmentOutput.type = Types::GetEnvironmentOutput
    GetResourcePolicyInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "Policy"))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GetRouteInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteInput.add_member(:route_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteId, name: "RouteIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouteInput.type = Types::GetRouteInput
    GetRouteOutput.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteId, name: "RouteId"))
    GetRouteOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    GetRouteOutput.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    GetRouteOutput.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    GetRouteOutput.add_member(:route_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteType, name: "RouteType"))
    GetRouteOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    GetRouteOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    GetRouteOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    GetRouteOutput.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: UriPath, name: "SourcePath"))
    GetRouteOutput.add_member(:methods, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpMethods, name: "Methods"))
    GetRouteOutput.add_member(:include_child_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeChildPaths"))
    GetRouteOutput.add_member(:path_resource_to_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PathResourceToId, name: "PathResourceToId"))
    GetRouteOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteState, name: "State"))
    GetRouteOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetRouteOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResponse, name: "Error"))
    GetRouteOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    GetRouteOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    GetRouteOutput.add_member(:append_source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AppendSourcePath"))
    GetRouteOutput.type = Types::GetRouteOutput
    GetServiceInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceInput.type = Types::GetServiceInput
    GetServiceOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    GetServiceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "Name"))
    GetServiceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    GetServiceOutput.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    GetServiceOutput.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    GetServiceOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetServiceOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    GetServiceOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    GetServiceOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    GetServiceOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEndpointType, name: "EndpointType"))
    GetServiceOutput.add_member(:url_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlEndpointConfig, name: "UrlEndpoint"))
    GetServiceOutput.add_member(:lambda_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEndpointConfig, name: "LambdaEndpoint"))
    GetServiceOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceState, name: "State"))
    GetServiceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetServiceOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResponse, name: "Error"))
    GetServiceOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    GetServiceOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    GetServiceOutput.type = Types::GetServiceOutput
    HttpMethods.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HttpMethod, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidResourcePolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    InvalidResourcePolicyException.type = Types::InvalidResourcePolicyException
    LambdaEndpointConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "Arn"))
    LambdaEndpointConfig.type = Types::LambdaEndpointConfig
    LambdaEndpointInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    LambdaEndpointInput.type = Types::LambdaEndpointInput
    LambdaEndpointSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "Arn"))
    LambdaEndpointSummary.type = Types::LambdaEndpointSummary
    ListApplicationsInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:application_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummaries, name: "ApplicationSummaryList"))
    ListApplicationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListEnvironmentVpcsInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEnvironmentVpcsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentVpcsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentVpcsInput.type = Types::ListEnvironmentVpcsInput
    ListEnvironmentVpcsOutput.add_member(:environment_vpc_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVpcs, name: "EnvironmentVpcList"))
    ListEnvironmentVpcsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEnvironmentVpcsOutput.type = Types::ListEnvironmentVpcsOutput
    ListEnvironmentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentsInput.type = Types::ListEnvironmentsInput
    ListEnvironmentsOutput.add_member(:environment_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentSummaries, name: "EnvironmentSummaryList"))
    ListEnvironmentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEnvironmentsOutput.type = Types::ListEnvironmentsOutput
    ListRoutesInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutesInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRoutesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRoutesInput.type = Types::ListRoutesInput
    ListRoutesOutput.add_member(:route_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSummaries, name: "RouteSummaryList"))
    ListRoutesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRoutesOutput.type = Types::ListRoutesOutput
    ListServicesInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListServicesInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListServicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListServicesInput.type = Types::ListServicesInput
    ListServicesOutput.add_member(:service_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummaries, name: "ServiceSummaryList"))
    ListServicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServicesOutput.type = Types::ListServicesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    PathResourceToId.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PathResourceToIdKey, name: "key")
    PathResourceToId.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PathResourceToIdValue, name: "value")
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RouteSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSummary, name: "member")
    RouteSummary.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteId, name: "RouteId"))
    RouteSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    RouteSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    RouteSummary.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    RouteSummary.add_member(:route_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteType, name: "RouteType"))
    RouteSummary.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    RouteSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    RouteSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    RouteSummary.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: UriPath, name: "SourcePath"))
    RouteSummary.add_member(:methods, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpMethods, name: "Methods"))
    RouteSummary.add_member(:include_child_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeChildPaths"))
    RouteSummary.add_member(:path_resource_to_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PathResourceToId, name: "PathResourceToId"))
    RouteSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteState, name: "State"))
    RouteSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    RouteSummary.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResponse, name: "Error"))
    RouteSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    RouteSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    RouteSummary.add_member(:append_source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AppendSourcePath"))
    RouteSummary.type = Types::RouteSummary
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummary, name: "member")
    ServiceSummary.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    ServiceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "Name"))
    ServiceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    ServiceSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    ServiceSummary.add_member(:created_by_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "CreatedByAccountId"))
    ServiceSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ServiceSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentId"))
    ServiceSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    ServiceSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    ServiceSummary.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEndpointType, name: "EndpointType"))
    ServiceSummary.add_member(:url_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlEndpointSummary, name: "UrlEndpoint"))
    ServiceSummary.add_member(:lambda_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEndpointSummary, name: "LambdaEndpoint"))
    ServiceSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceState, name: "State"))
    ServiceSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ServiceSummary.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResponse, name: "Error"))
    ServiceSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    ServiceSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    ServiceSummary.type = Types::ServiceSummary
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:).+"})
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#length" => {"max" => 256}})
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateRouteInput.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, name: "EnvironmentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteInput.add_member(:route_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteId, name: "RouteIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteInput.add_member(:activation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteActivationState, name: "ActivationState", traits: {"smithy.api#required" => {}}))
    UpdateRouteInput.type = Types::UpdateRouteInput
    UpdateRouteOutput.add_member(:route_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteId, name: "RouteId"))
    UpdateRouteOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    UpdateRouteOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "ServiceId"))
    UpdateRouteOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    UpdateRouteOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteState, name: "State"))
    UpdateRouteOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTime"))
    UpdateRouteOutput.type = Types::UpdateRouteOutput
    UriPathRouteInput.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: UriPath, name: "SourcePath", traits: {"smithy.api#required" => {}}))
    UriPathRouteInput.add_member(:activation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteActivationState, name: "ActivationState", traits: {"smithy.api#required" => {}}))
    UriPathRouteInput.add_member(:methods, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpMethods, name: "Methods"))
    UriPathRouteInput.add_member(:include_child_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeChildPaths"))
    UriPathRouteInput.add_member(:append_source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AppendSourcePath"))
    UriPathRouteInput.type = Types::UriPathRouteInput
    UrlEndpointConfig.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "Url"))
    UrlEndpointConfig.add_member(:health_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "HealthUrl"))
    UrlEndpointConfig.type = Types::UrlEndpointConfig
    UrlEndpointInput.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "Url", traits: {"smithy.api#required" => {}}))
    UrlEndpointInput.add_member(:health_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "HealthUrl"))
    UrlEndpointInput.type = Types::UrlEndpointInput
    UrlEndpointSummary.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "Url"))
    UrlEndpointSummary.add_member(:health_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "HealthUrl"))
    UrlEndpointSummary.type = Types::UrlEndpointSummary
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    RefactorSpaces = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.migrationhubrefactorspaces#RefactorSpaces"
      service.name = "RefactorSpaces"
      service.version = "2021-10-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Migration Hub Refactor Spaces", "arnNamespace" => "refactor-spaces", "cloudFormationName" => "RefactorSpaces", "cloudTrailEventSource" => "refactor-spaces.amazonaws.com", "endpointPrefix" => "refactor-spaces"}, "aws.auth#sigv4" => {"name" => "refactor-spaces"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["content-type"], "additionalExposedHeaders" => ["date", "x-amz-apigw-id", "x-amzn-trace-id", "x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage"]}, "smithy.api#title" => "AWS Migration Hub Refactor Spaces"}
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationInput
        operation.output = CreateApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/environments/{EnvironmentIdentifier}/applications", "code" => 200}}
      end)
      service.add_operation(:create_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = CreateEnvironmentInput
        operation.output = CreateEnvironmentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/environments", "code" => 200}}
      end)
      service.add_operation(:create_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#CreateRoute"
        operation.name = "CreateRoute"
        operation.input = CreateRouteInput
        operation.output = CreateRouteOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes", "code" => 200}}
      end)
      service.add_operation(:create_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#CreateService"
        operation.name = "CreateService"
        operation.input = CreateServiceInput
        operation.output = CreateServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services", "code" => 200}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationInput
        operation.output = DeleteApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = DeleteEnvironmentInput
        operation.output = DeleteEnvironmentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{EnvironmentIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyInput
        operation.output = DeleteResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/resourcepolicy/{Identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteRoute"
        operation.name = "DeleteRoute"
        operation.input = DeleteRouteInput
        operation.output = DeleteRouteOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#DeleteService"
        operation.name = "DeleteService"
        operation.input = DeleteServiceInput
        operation.output = DeleteServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationInput
        operation.output = GetApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = GetEnvironmentInput
        operation.output = GetEnvironmentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyInput
        operation.output = GetResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resourcepolicy/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetRoute"
        operation.name = "GetRoute"
        operation.input = GetRouteInput
        operation.output = GetRouteOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#GetService"
        operation.name = "GetService"
        operation.input = GetServiceInput
        operation.output = GetServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsInput
        operation.output = ListApplicationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_environment_vpcs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListEnvironmentVpcs"
        operation.name = "ListEnvironmentVpcs"
        operation.input = ListEnvironmentVpcsInput
        operation.output = ListEnvironmentVpcsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/vpcs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironmentVpcs.new
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ListEnvironmentsInput
        operation.output = ListEnvironmentsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListRoutes"
        operation.name = "ListRoutes"
        operation.input = ListRoutesInput
        operation.output = ListRoutesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRoutes.new
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesInput
        operation.output = ListServicesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyInput
        operation.output = PutResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidResourcePolicyException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/resourcepolicy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubrefactorspaces#UpdateRoute"
        operation.name = "UpdateRoute"
        operation.input = UpdateRouteInput
        operation.output = UpdateRouteOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", "code" => 200}}
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
